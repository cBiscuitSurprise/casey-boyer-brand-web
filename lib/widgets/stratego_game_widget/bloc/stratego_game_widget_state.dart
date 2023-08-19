part of 'stratego_game_widget_bloc.dart';

enum StrategoGameWidgetStatus { initial, serverDown, serverUp, error, loading }

extension StrategoGameWidgetStatusX on StrategoGameWidgetStatus {
  bool get isInitial => this == StrategoGameWidgetStatus.initial;
  bool get isServerDown => this == StrategoGameWidgetStatus.serverDown;
  bool get isServerUp => this == StrategoGameWidgetStatus.serverUp;
  bool get isError => this == StrategoGameWidgetStatus.error;
  bool get isLoading => this == StrategoGameWidgetStatus.loading;
}

class StrategoGameWidgetState {
  final StrategoGameWidgetStatus status;
  final String? error;
  final String? serverUrl;
  final String? latestMessage;
  final DateTime? latestTimestamp;

  const StrategoGameWidgetState({
    this.status = StrategoGameWidgetStatus.serverDown,
    this.error,
    this.serverUrl,
    this.latestMessage,
    this.latestTimestamp,
  });

  StrategoGameWidgetState copyWith({
    StrategoGameWidgetStatus? status,
    String? error,
    String? serverUrl,
    String? latestMessage,
    DateTime? latestTimestamp,
  }) {
    return StrategoGameWidgetState(
      status: status ?? this.status,
      error: error ?? this.error,
      serverUrl: serverUrl ?? this.serverUrl,
      latestMessage: latestMessage ?? this.latestMessage,
      latestTimestamp: latestTimestamp ?? this.latestTimestamp,
    );
  }
}
