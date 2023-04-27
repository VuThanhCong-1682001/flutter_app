import 'package:flutter/material.dart';

import '../Utils/global.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen>{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('ProfileScreen')
    );
  }
}