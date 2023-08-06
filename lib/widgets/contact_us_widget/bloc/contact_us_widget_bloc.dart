import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

part 'contact_us_widget_event.dart';
part 'contact_us_widget_state.dart';

Logger logger = Logger('contact_us_widget_bloc.dart');

class ContactUsWidgetBloc
    extends Bloc<ContactUsWidgetEvent, ContactUsWidgetState> {
  ContactUsWidgetBloc() : super(const ContactUsWidgetState()) {
    // #region data events
    on<ContactUsSubmitEvent>(_handleContactUsSubmitEvent);
    on<ContactUsCancelEvent>(_handleContactUsCancelEvent);
    // #endregion data events

    // #region widget state events
    on<ContactUsWidgetLoadingEvent>(_handleContactUsWidgetLoadingEvent);
    on<ContactUsWidgetErrorEvent>(_handleContactUsWidgetErrorEvent);
    // #endregion widget state events
  }

  void _handleContactUsSubmitEvent(
      ContactUsSubmitEvent event, Emitter<ContactUsWidgetState> emit) async {
    String body = jsonEncode(event);
    logger.fine("Submitting contact info: ${body}");

    emit(state.copyWith(
      status: ContactUsWidgetStatus.loading,
    ));

    http.Response response = await http.post(
        Uri.parse("https://casey.boyer.consulting/api/contact"),
        body: body,
        headers: {"Content-Type": "application/json"});

    logger.finer(
        "Form submission response: ${response.statusCode} - ${response.body}");

    if (response.statusCode >= 300) {
      _handleContactUsWidgetErrorEvent(
          ContactUsWidgetErrorEvent(message: "failed to submit info"), emit);
    } else {
      emit(state.copyWith(
        status: ContactUsWidgetStatus.success,
      ));
    }
  }

  void _handleContactUsCancelEvent(
      ContactUsCancelEvent event, Emitter<ContactUsWidgetState> emit) async {
    logger.fine("Canceling form submit: ${jsonEncode(event)}");
    emit(state.copyWith(
      status: ContactUsWidgetStatus.success,
    ));
  }

  void _handleContactUsWidgetLoadingEvent(ContactUsWidgetLoadingEvent event,
      Emitter<ContactUsWidgetState> emit) async {
    _setLoading(emit);
  }

  void _handleContactUsWidgetErrorEvent(ContactUsWidgetErrorEvent event,
      Emitter<ContactUsWidgetState> emit) async {
    logger.severe(event.message);
    _setError(emit, event.message);
  }

  void _setLoading(Emitter<ContactUsWidgetState> emit) {
    emit(state.copyWith(
      status: ContactUsWidgetStatus.loading,
    ));
  }

  void _setError(Emitter<ContactUsWidgetState> emit, String message) {
    emit(state.copyWith(status: ContactUsWidgetStatus.error, error: message));
  }
}
