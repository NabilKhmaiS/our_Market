part of 'authentication_cubit.dart';
@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class LoginSuccess extends AuthenticationState {}
final class LoginSLoading extends AuthenticationState {}
final class LoginError extends AuthenticationState {
  final String message;
  LoginError(this.message);
}

final class SignupSuccess extends AuthenticationState {}
final class SignupLoading extends AuthenticationState {}
final class SignupError extends AuthenticationState {
  final String message;
  SignupError(this.message);



}
final class GoogleSigneSuccess extends AuthenticationState{}
final class GoogleSigneLoading extends AuthenticationState {}
final class GoogleSigneError extends AuthenticationState {

}
final class LogoutLoading extends AuthenticationState{}
final class LogoutSuccess  extends AuthenticationState{}
final class LogoutError extends AuthenticationState {

}
final class PasswordResetLoading extends AuthenticationState{}
final class PasswordResetSuccess extends AuthenticationState{}
final class PasswordResetError extends AuthenticationState {

}

final class UserDateAddedLoading extends AuthenticationState{}
final class UserDateAddedSuccess extends AuthenticationState{}
final class UserDateAddedError extends AuthenticationState {

}










