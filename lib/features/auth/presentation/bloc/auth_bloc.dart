import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entity/user_entity.dart';
import '../../domain/usecases/sign_in.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignIn signIn;

  AuthBloc({required this.signIn}) : super(InitialState()) {
    on<SignInEvent>(_handleSignInEvent);
  }

  void _handleSignInEvent(SignInEvent event, Emitter<AuthState> emit) async {
    emit(LoadingState());
    final result = await signIn(event.email, event.password);

    result.fold(
      (failure) => emit(UnauthenticatedState(failure: failure)),
      (user) => emit(AuthenticatedState(currentUser: user)),
    );
  }
}
