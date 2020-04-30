import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/gradient_back.dart';
import 'package:flutter_course/widgets/button_green.dart';
import 'package:flutter_course/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_course/platzi_trips_cupertino.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        
        if(!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return PlatziTripsCupertino();
        }
      }
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        GradientBack("", null),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome \n This is your travel App",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            ButtonGreen(
              text: "Login with Gmail",
              onPressed: () {
                userBloc.signOut();
                userBloc.signIn().then((FirebaseUser user) => print(user.displayName));
              },
              width: 300.0,
              height: 50.0,
            )
          ],
        )
      ],
    ));
  }
}
