import 'package:casey_boyer_brand_web/widgets/contact_us_widget/contact_us_widget_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      return const ContactUsWidgetSuccess();
    } else if (state.status.isLoading) {
      return const ContactUsWidgetLoading();
    } else if (state.status.isError) {
      return const ContactUsWidgetError();
    } else {
      return const SizedBox();
    }
  }
}
