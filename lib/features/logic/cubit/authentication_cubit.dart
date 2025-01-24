import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());


  SupabaseClient client = Supabase.instance.client;

  Future<void> Login({required String email,required String password}) async{
    emit(LoginSLoading());
    try {
      await client.auth.signInWithPassword(password: password, email: email);
      emit(LoginSuccess());

    } on AuthException catch (e) {
      log(e.toString() as num);
      emit(LoginError( e.message ));
    }
    catch(e)  {
      emit(LoginError(e.toString()));
    }

  }
}
