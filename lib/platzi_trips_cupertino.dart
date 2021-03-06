import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_course/Place/ui/screens/home_trips.dart';
import 'package:flutter_course/Place/ui/screens/search_trips.dart';
import 'package:flutter_course/User/bloc/bloc_user.dart';
import 'package:flutter_course/User/ui/screens/profile_trips.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo), title: Text("")),
        ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: ProfileTrips()
                  );
                },
              );
              break;
          }
        },
      ),
    );
  }
}
