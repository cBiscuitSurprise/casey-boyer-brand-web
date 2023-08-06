import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_error_widget/app_error_widget.dart';
import 'bloc/contact_us_widget_bloc.dart';
import 'contact_us_widget_form.dart';
import 'contact_us_widget_loading.dart';
import 'contact_us_widget_success.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactUsWidgetBloc, ContactUsWidgetState>(
      builder: resolveWidgetForState,
    );
  }

  Widget resolveWidgetForState(
      BuildContext context, ContactUsWidgetState state) {
    if (state.status.isForm) {
      return ContactUsWidgetForm();
    } else if (state.status.isSuccess) {
      return ContactUsWidgetSuccess();
    } else if (state.status.isLoading) {
      return const ContactUsWidgetLoading();
    } else if (state.status.isError) {
      return AppErrorWidget(message: state.error);
    } else {
      return const SizedBox();
    }
  }
}
