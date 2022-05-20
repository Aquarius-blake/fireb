import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _auth=FirebaseAuth.instance;

  //sign in as guest

Future Signguest() async{

  try{
     UserCredential result= await _auth.signInAnonymously();
        User? user = result.user;
        return user;
  }catch(e){
print(e.toString());

return null;
  }

}



  //sign in with email


  //signout

}