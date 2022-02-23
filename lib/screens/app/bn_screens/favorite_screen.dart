 import 'package:flutter/material.dart';
import 'package:ui_app_vp8/screens/models/address.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Center(
      child: Text("favorite"),
    ),);
  }
}


