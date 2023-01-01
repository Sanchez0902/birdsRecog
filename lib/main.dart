import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pakshiapp/PicturePage.dart';
import 'package:pakshiapp/main.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("PAKSHI App"),
            centerTitle: true,
            backgroundColor: Colors.lightGreen[900],
          ),

          // body: Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('assets/bird4.webp'),
          //         fit: BoxFit.fill
          //     ),
          //   ),
          //   child: const HomePage(),
          body: const HomePage(),

          // ),
        )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
        body: SingleChildScrollView(
          child: FutureBuilder(

           future: _initializeFirebase(),
           builder: (context,snapshot){
           if(snapshot.connectionState== ConnectionState.done){

                return LoginScreen();
            }
        return const Center(
            child: CircularProgressIndicator()
        );
         }
     ),
    ),);
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}
class LoginScreenState extends State<LoginScreen> {


  static Future<User?> loginUsingEmailPassword(
      {required String email,required String password,
        required BuildContext context}) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await
      auth.signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    }
    on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        print("No user found for that email");

      }
    }
    return user;
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();



    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Bird's App",
            style: TextStyle(
              color: Colors.green,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text("Login to your App",
            style: TextStyle(
              color: Colors.green,
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 44.0,
          ),
           TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(Icons.mail, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
           TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(color: Colors.black, Icons.lock),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text("Dont Remember your password?",
            style: TextStyle(color: Colors.lightGreen,fontSize: 15.0),
          ),
          const SizedBox(
            height: 88.0,
          ),

          Container(
            width: double.infinity,
            child: RawMaterialButton(
                fillColor: const Color(0XFF64DD17),
                elevation: 0.0,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                onPressed: () async{
                  User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                  print(user);
                  if(user!=null){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:( context)=> const PicturePage()));

                  }

                },
                child: const Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,

                    )
                )
            ),
          ),
        ],
      ),

    );


  }
}

