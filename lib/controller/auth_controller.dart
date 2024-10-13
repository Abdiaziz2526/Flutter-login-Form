
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:login_with_firebase/services/auth_services.dart';

class AuthController extends GetxController {
  final FirebaseAuthServices _authServices = FirebaseAuthServices();

  Future<void> SignupAccount({required String Email, required String Password})async{
    await _authServices.signUp(Email: Email, Password: Password);
  }
  
}