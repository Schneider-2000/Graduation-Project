import "package:firebase_auth/firebase_auth.dart";
import "package:google_sign_in/google_sign_in.dart";




class AuthService {
  // Google sign in ..............................
  signInWithGoogle () async {
    // Begin interactive sign in process............
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn(); 

    // obtain auth details from request...................
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    
    // Create a new credential for user..................
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );


    // finally, lets sign in .............................
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  // signInWithGoogle () async{
  //   GoogleSignInAccount? googleUser= await GoogleSignIn().signIn();

  //   GoogleSignInAuthentication? googleAuth= await googleUser?.authentication; 

  //   AuthCredential credential= GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //   UserCredential userCredential= await FirebaseAuth.instance.signInWithCredential(credential);

  //   if (userCredential.user != null) {
  //     InkWell(
  //           onTap: () {
  //              HomeScreen();
  //           },
  //       );
    
    }
  
  