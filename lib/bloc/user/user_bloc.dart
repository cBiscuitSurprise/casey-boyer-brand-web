import 'package:casey_boyer_brand_web/model/user.dart';
import 'package:casey_boyer_brand_web/services/application_data/application_data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

part 'user_event.dart';
part 'user_state.dart';

Logger logger = Logger('user_bloc.dart');

class UserBloc extends Bloc<UserEvent, UserState> {
  final ApplicationDataService appDataService;

  UserBloc()
      : appDataService = ApplicationDataService(),
        super(const UserState()) {
    // #region data events
    on<UserIdentifyEvent>(_handleUserIdentifyEvent);
    on<UserLoginEvent>(_handleUserLoginEvent);
    on<UserLogoutEvent>(_handleUserLogoutEvent);
    // #endregion data events
  }

  void _handleUserIdentifyEvent(
      UserIdentifyEvent event, Emitter<UserState> emit) async {
    logger.fine("Checking for existing user-id in application data...");
    User user = await appDataService.getUserData();
    emit(state.copyWith(
      status: UserStatus.guest,
      user: user,
    ));
  }

  void _handleUserLoginEvent(
      UserLoginEvent event, Emitter<UserState> emit) async {
    logger.fine("Logging in...");
    emit(state.copyWith(
      status: UserStatus.authenticated,
    ));
  }

  void _handleUserLogoutEvent(
      UserLogoutEvent event, Emitter<UserState> emit) async {
    logger.fine("Logging out...");
    emit(state.copyWith(
      status: UserStatus.anonymous,
    ));
    add(UserIdentifyEvent());
  }
}
