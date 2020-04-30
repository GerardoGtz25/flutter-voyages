import 'package:flutter/material.dart';
import 'package:flutter_course/User/bloc/bloc_user.dart';
import 'package:flutter_course/User/model/user.dart';
import 'package:flutter_course/User/ui/widgets/user_info.dart';
import 'package:flutter_course/User/ui/widgets/button_bar.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {

  UserBloc userBloc;
  User user;
  
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch(snapshot.connectionState) {
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.waiting:
            return CircularProgressIndicator();
            break;
          case ConnectionState.active:
            return showProfileData(snapshot);
            break;
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
        
      },
    );  
  }

  final title = Text(
    'Profile',
    style: TextStyle(
      fontFamily: 'Lato',
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30.0),
  );

  Widget showProfileData(AsyncSnapshot snapshot) {
      if(!snapshot.hasData || snapshot.hasError) {
        return Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
          child: Column(
            children: <Widget>[
              CircularProgressIndicator(),
              Text("No se pudo cargar la información")
            ],
          ),
        );
      } else {
        user = User(name: snapshot.data.displayName, email: snapshot.data.email, photoURL: snapshot.data.photoUrl);
        return Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[title],
              ),
              UserInfo(user),
              ButtonsBar()
            ],
          ),
        );
      }
    }
}
