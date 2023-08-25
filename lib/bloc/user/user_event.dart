part of 'user_bloc.dart';

class UserEvent {}

// #region data events
class UserIdentifyEvent extends UserEvent {}

class UserLoginEvent extends UserEvent {}

class UserLogoutEvent extends UserEvent {}
// #endregion data events
