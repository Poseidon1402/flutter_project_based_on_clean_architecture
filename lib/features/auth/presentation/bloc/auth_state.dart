part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends AuthState {}

class LoadingState extends AuthState {}

class AuthenticatedState extends AuthState {
  final UserEntity currentUser;

  AuthenticatedState({required this.currentUser});

  @override
  List<Object?> get props => [currentUser];
}

class UnauthenticatedState extends AuthState {
  final Failure failure;

  UnauthenticatedState({
    required this.failure,
  });

  @override
  List<Object?> get props => [failure];
}