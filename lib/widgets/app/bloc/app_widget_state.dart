part of 'app_widget_bloc.dart';

enum AppWidgetStatus { loading, success, error }

extension AppWidgetStatusX on AppWidgetStatus {
  bool get isLoading => this == AppWidgetStatus.loading;
  bool get isSuccess => this == AppWidgetStatus.success;
  bool get isError => this == AppWidgetStatus.error;
}

class AppWidgetState {
  final AppWidgetStatus status;
  final bool isDarkMode;

  const AppWidgetState({
    this.status = AppWidgetStatus.loading,
    this.isDarkMode = false,
  });

  AppWidgetState copyWith({
    AppWidgetStatus? status,
    bool? isDarkMode,
  }) {
    return AppWidgetState(
      status: status ?? this.status,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
