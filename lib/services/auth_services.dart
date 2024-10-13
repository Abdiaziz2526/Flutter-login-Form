
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Create an Account
  Future<void> signUp({required String Email, required  Password}) async{

    try{
      await _auth.createUserWithEmailAndPassword(email: Email, password: Password);
    }on FirebaseAuthException catch(e){
      if(e.code == 'weak password'){
        print('You have weak password');
    }else if(e.code == 'Is not valid password'){
      print('Is not valid password');
    }
  }catch(e){
    print(e);
  }

}
}