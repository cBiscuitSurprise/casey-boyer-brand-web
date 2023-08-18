import 'dart:convert';

import 'package:casey_boyer_brand_web/services/casey_boyer_brand_api/casey_boyer_brand_api_service.dart';
import 'package:casey_boyer_brand_web/services/casey_boyer_brand_api/models/contact_submit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

part 'contact_us_widget_event.dart';
part 'contact_us_widget_state.dart';

Logger logger = Logger('contact_us_widget_bloc.dart');

class ContactUsWidgetBloc
    extends Bloc<ContactUsWidgetEvent, ContactUsWidgetState> {
  final CaseyBoyerBrandApiService apiService;

  ContactUsWidgetBloc()
      : apiService = CaseyBoyerBrandApiService(),
        super(const ContactUsWidgetState()) {
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
    emit(state.copyWith(
      status: ContactUsWidgetStatus.loading,
    ));

    var response = await apiService.contact(ContactSubmitRequest(
      name: event.name,
      email: event.email,
      phone: event.phone,
      message: event.message,
    ));

    if (response.success) {
      emit(state.copyWith(
        status: ContactUsWidgetStatus.success,
      ));
    } else {
      _handleContactUsWidgetErrorEvent(
        ContactUsWidgetErrorEvent(message: response.message),
        emit,
      );
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
