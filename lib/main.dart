import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_course/User/bloc/bloc_user.dart';
import 'package:flutter_course/User/ui/screens/signin_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Flutter Demo',
          home: SignInScreen(),
          // home: PlatziTripsCupertino(),
        ),
        bloc: UserBloc());
  }
}
