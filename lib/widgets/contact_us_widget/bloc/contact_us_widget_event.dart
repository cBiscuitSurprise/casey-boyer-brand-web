part of 'contact_us_widget_bloc.dart';

class ContactUsWidgetEvent {}

// #region data events
class ContactUsSubmitEvent extends ContactUsWidgetEvent {
  String? name;
  String? email;
  String? phone;
  String? message;

  ContactUsSubmitEvent({
    required this.name,
    this.email,
    this.phone,
    this.message,
  });
}

class ContactUsCancelEvent extends ContactUsWidgetEvent {}
// #endregion data events

// #region widget state events
class ContactUsWidgetLoadingEvent extends ContactUsWidgetEvent {
  final int progress;

  ContactUsWidgetLoadingEvent({
    progress,
  }) : progress = progress ?? 0;
}

class ContactUsWidgetErrorEvent extends ContactUsWidgetEvent {
  final String message;

  ContactUsWidgetErrorEvent({
    message,
  }) : message = message ?? 'generic error';
}
// #endregion widget state events
