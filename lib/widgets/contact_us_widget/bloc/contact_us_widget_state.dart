part of 'contact_us_widget_bloc.dart';

enum ContactUsWidgetStatus { initial, form, success, error, loading }

extension ContactUsWidgetStatusX on ContactUsWidgetStatus {
  bool get isInitial => this == ContactUsWidgetStatus.initial;
  bool get isForm => this == ContactUsWidgetStatus.form;
  bool get isSuccess => this == ContactUsWidgetStatus.success;
  bool get isError => this == ContactUsWidgetStatus.error;
  bool get isLoading => this == ContactUsWidgetStatus.loading;
}

class ContactUsWidgetState {
  final ContactUsWidgetStatus status;
  final String? error;

  const ContactUsWidgetState({
    this.status = ContactUsWidgetStatus.form,
    this.error,
  });

  ContactUsWidgetState copyWith({
    ContactUsWidgetStatus? status,
    String? error,
  }) {
    return ContactUsWidgetState(
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }
}
