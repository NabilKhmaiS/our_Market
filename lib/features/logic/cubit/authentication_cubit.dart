import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'authentication_state.dart';
class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  SupabaseClient client = Supabase.instance.client;
  Future<void> login({required String email,required String password}) async{
    emit(LoginSLoading());
    try {
      //log("Trying to log in with Email: '${email.trim()}', Password Length: ${password.trim().length}");

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
      await addUserDate(name: name, email: email);
      emit(SignupSuccess());

    } on AuthException catch (e) {
      log(e.toString());
      emit(SignupError(e.message));
    } catch (e) {
      log(e.toString());
      emit(SignupError(e.toString()));
    }
  }

    GoogleSignInAccount? googleUser;
     Future<AuthResponse> googleSignIn() async {
      emit(GoogleSigneLoading());

      const webClientId = '690618612967-889jfjhcpmtqnndrfntm1bcd17q3dfv0.apps.googleusercontent.com';

      final GoogleSignIn googleSignIn = GoogleSignIn(
      //  clientId: iosClientId,
        serverClientId: webClientId,
      );
       googleUser = await googleSignIn.signIn();
       if(googleUser ==null){
         return AuthResponse();
       }
      final googleAuth = await googleUser!.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null || idToken == null) {
        throw 'No Access Token found.';
        emit(GoogleSigneError());
        return AuthResponse();
      }

      AuthResponse response =await client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );
      await addUserDate(name: googleUser!.displayName!, email: googleUser!.email);
      emit(GoogleSigneSuccess());
      return response;
    }

    Future<void> signOut() async {
    emit(LogoutLoading());
    try{
      await client.auth.signOut();
      emit(LogoutSuccess());
    }catch(e){
      log(e.toString());
      emit(LogoutError());

    }

    }
    Future<void> resetPassword ({required String email}) async{
       emit(PasswordResetLoading());
       try{
         await client.auth.resetPasswordForEmail(email);
         emit(PasswordResetSuccess());
       }catch (e)
      {
        log(e.toString());
        emit(PasswordResetError());
      }

      }

      Future<void>addUserDate({required String name,required String email }) async{
       emit(UserDateAddedLoading());

       try{
         await client
             .from('user')
             .upsert({"user_id":client.auth.currentUser!.id,"name": name ,"email": email });
         emit(UserDateAddedSuccess());


       }catch (e) {
         log(e.toString());
         emit(UserDateAddedError());

       }


      }

}

