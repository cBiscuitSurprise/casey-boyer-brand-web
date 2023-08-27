import 'package:casey_boyer_brand_web/components/app_bar.dart';
import 'package:casey_boyer_brand_web/pages/routes.dart';
import 'package:casey_boyer_brand_web/util/color.dart';
import 'package:casey_boyer_brand_web/widgets/stratego_game_widget/stratego_game_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/project.dart';
import '../../pages/app_scaffold.dart';
import 'bloc/projects_widget_bloc.dart';

Map<String, IconData> availableIcons = {
  'grid_off': Icons.grid_off,
  'games': Icons.games,
  'screenshot_monitor': Icons.screenshot_monitor,
  'default': Icons.call_missed
};

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

    if (state.status.isError) {
      return const AppScaffold(
          child: Text("an error occured loading the projects widget"));
    } else {
      return AppScaffold(
        drawer: (desktopMode) ? null : buildDrawer(context, state, desktopMode),
        appBar: AppBarComponent(
          title: "Projects",
          navigations: buildRoutes(current: PageRoutes.projects),
        ),
        child: Row(
          children: [
            (desktopMode) ? buildDrawer(context, state, desktopMode) : null,
            Expanded(
              child: Center(
                child: buildProjectOverview(context, state),
              ),
            ),
          ].whereType<Widget>().toList(), // filter `null`
        ),
      );
    }
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
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 0.2, 0.8, 1.0],
          colors: [
            lighten(Theme.of(context).colorScheme.secondary, 2),
            darken(Theme.of(context).colorScheme.secondary, 2),
            darken(Theme.of(context).colorScheme.secondary, 2),
            lighten(Theme.of(context).colorScheme.secondary, 2),
          ],
        )),
        child: content,
      ),
    );
  }

  Widget buildProjectOverview(BuildContext context, ProjectsWidgetState state) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return (state.index == null)
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildProjectWidget(
                          context, state, viewportConstraints.maxWidth),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: Markdown(
                          data: state.projects[state.index!].longDescription ??
                              "",
                          onTapLink: (text, url, title) {
                            if (url != null) {
                              launchUrl(Uri.parse(url));
                            }
                          },
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                        ),
                      ),
                    ].whereType<Widget>().toList(),
                  ),
                ),
              );
      },
    );
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
      leading: Icon(
        availableIcons[project.icon ?? 'default'] ?? availableIcons['default'],
      ),
      selected: isSelected,
      title: Text(project.name),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: ListView(
          primary: true,
          shrinkWrap: true,
          children: <Widget>[
            Wrap(
              spacing: 4.0,
              runSpacing: 0.0,
              children: List<Widget>.generate(project.tags.length, (int index) {
                return Chip(
                  label: Text(
                    project.tags[index],
                  ),
                  labelPadding: const EdgeInsets.only(right: 4, left: 4),
                  padding: const EdgeInsets.all(4),
                  labelStyle: TextStyle(
                      fontSize: 8,
                      color: Theme.of(context).colorScheme.onTertiary),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                );
              }).toList(),
            ),
          ],
        ),
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

  Widget? buildProjectWidget(
      BuildContext context, ProjectsWidgetState state, double maxWidth) {
    switch (state.projects[state.index!].name) {
      case "Strate.Go!":
        return Padding(
          padding:
              const EdgeInsets.only(top: 16, right: 8, left: 8, bottom: 16),
          child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.1, 0.1),
                    blurRadius: 0.5,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
                color: Theme.of(context).colorScheme.background,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                        "At this point, we can randomly generate a board. Next, we'll try to enable moving these pieces around."),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: maxWidth,
                      ),
                      child: const StrategoGameWidget(),
                    ),
                  )
                ],
              )),
        );
      default:
        return null;
    }
  }
}
