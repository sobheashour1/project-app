import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  Future.delayed(Duration(seconds: 3),(){
    print('hi');
    Navigator.pushReplacementNamed(context,'/home_screen');
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('hi',style: TextStyle(
          color: Colors.red,fontSize: 25
        ),),
      ),
     // backgroundColor: Colors.green,
    //     body: Image.network(
    //   'https://i.pinimg.com/736x/6a/43/89/6a43897e371b5841b9f35e4854c5c705.jpg',
    //       fit: BoxFit.cover,
    //         width:double.infinity,
    //       height: double.infinity,
    // )
         );
  }
}
