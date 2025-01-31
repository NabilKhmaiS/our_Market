import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'authentication_state.dart';
class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  SupabaseClient client = Supabase.instance.client;
  Future<void> login({required String email,required String password}) async{
    emit(LoginSLoading());
    try {
      await client.auth.signInWithPassword(password: password, email: email);
      emit(LoginSuccess());
    } on AuthException catch (e) {
      log(e.toString());
      emit(LoginError( e.message ));
    }
    catch(e)  {
      log(e.toString());
      emit(LoginError(e.toString()));
    }

  }

  Future<void> register({required String name, required String email, required String password}) async {
    emit(SignupLoading());
    try {
      await client.auth.signUp(
        email: email,
        password: password,
        data: {'name': name}, // تخزين الاسم مع الحساب الجديد
      );
      emit(SignupSuccess());
    } on AuthException catch (e) {
      log(e.toString());
      emit(SignupError(e.message));
    } catch (e) {
      log(e.toString());
      emit(SignupError(e.toString()));
    }
  }
}

