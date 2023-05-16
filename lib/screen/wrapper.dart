import 'package:brew_crew_app/models/userModel.dart';
import 'package:brew_crew_app/screen/authenticate/authenticate.dart';
import 'package:brew_crew_app/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  //const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    //print(user);
    //return either Home or Authenticate Widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
