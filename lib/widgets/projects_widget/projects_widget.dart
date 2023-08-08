import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../model/project.dart';
import '../../pages/app_scaffold.dart';
import 'bloc/projects_widget_bloc.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BlocBuilder b = BlocBuilder<ProjectsWidgetBloc, ProjectsWidgetState>(
      builder: resolveWidgetForState,
    );
    BlocProvider.of<ProjectsWidgetBloc>(context).add(ProjectsReloadEvent());
    return b;
  }

  Widget resolveWidgetForState(
      BuildContext context, ProjectsWidgetState state) {
    final bool desktopMode = MediaQuery.of(context).size.width > 500;

    return AppScaffold(
      drawer: (desktopMode) ? null : buildDrawer(context, state, desktopMode),
      appBar: AppBar(
        title: const Text("app bar"),
        automaticallyImplyLeading: !desktopMode,
      ),
      child: Row(
        children: [
          (desktopMode) ? buildDrawer(context, state, desktopMode) : null,
          Expanded(
            child: buildProjectOverview(context, state),
          ),
        ].whereType<Widget>().toList(), // filter `null`
      ),
    );
  }

  Widget buildDrawer(
      BuildContext context, ProjectsWidgetState state, bool desktopMode) {
    Widget content;
    switch (state.status) {
      case ProjectsWidgetStatus.loading:
        content = ListView(
          // Important: Remove any padding from the ListView.
          // padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 56,
              child: DrawerHeader(
                child: Text("Drawer header"),
              ),
            ),
            ...List<Widget>.generate(state.projects.length, (int index) {
              return buildDrawerListItem(context, index, state.index == index,
                  state.projects[index], desktopMode);
            }).toList(),
          ],
        );
        break;
      case ProjectsWidgetStatus.expanded:
        content = const Text("expanded");
        break;
      case ProjectsWidgetStatus.collapsed:
        content = const Text("collapsed");
        break;
      default:
        content = const Text("bad state");
    }
    return Drawer(
      child: content,
    );
  }

  Widget buildProjectOverview(BuildContext context, ProjectsWidgetState state) {
    if (state.index == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Markdown(
        data: state.projects[state.index!].longDescription ?? "",
      );
    }
  }

  Widget buildDrawerListItem(
    BuildContext context,
    int index,
    bool isSelected,
    Project project,
    bool desktopMode,
  ) {
    return ListTile(
      hoverColor: Colors.grey,
      leading: const Icon(
        Icons.dashboard,
      ),
      selected: isSelected,
      title: Text(project.name),
      subtitle: ListView(
        primary: true,
        shrinkWrap: true,
        children: <Widget>[
          Wrap(
            spacing: 4.0,
            runSpacing: 0.0,
            children: List<Widget>.generate(project.tags.length, (int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Chip(label: Text(project.tags[index])),
              );
            }).toList(),
          ),
        ],
      ),
      onTap: () {
        BlocProvider.of<ProjectsWidgetBloc>(context)
            .add(ProjectsSelectEvent(index: index));
        if (!desktopMode) {
          Navigator.of(context).pop();
        }
      },
    );
  }
}
