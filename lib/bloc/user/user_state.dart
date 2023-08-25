part of 'user_bloc.dart';

enum UserStatus {
  anonymous, // no user info
  guest, // guess user id
  authenticated, // full user id
}

extension UserStatusX on UserStatus {
  bool get isAnonymous => this == UserStatus.anonymous;
  bool get isGuest => this == UserStatus.guest;
  bool get isAuthenticated => this == UserStatus.authenticated;
}

class UserState {
  final UserStatus status;
  final String? error;
  final User? user;

  const UserState({
    this.status = UserStatus.anonymous,
    this.error,
    this.user,
  });

  UserState copyWith({
    UserStatus? status,
    String? error,
    User? user,
  }) {
    return UserState(
      status: status ?? this.status,
      error: error ?? this.error,
      user: user ?? this.user,
    );
  }
}
