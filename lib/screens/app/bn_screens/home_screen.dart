import 'package:flutter/material.dart';
import 'package:ui_app_vp8/screens/app/bn_screens/add_screen.dart';
import 'package:ui_app_vp8/screens/app/bn_screens/categories_screen.dart';
import 'package:ui_app_vp8/screens/app/bn_screens/favorite_screen.dart';
import 'package:ui_app_vp8/screens/app/bn_screens/map_screen.dart';
import 'package:ui_app_vp8/screens/models/bn_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _currentIndex = 0;

  final List<BnScreen> _bnScreens = <BnScreen>[
    const BnScreen(widget: HomeScreen(), title: 'Home'),
    const BnScreen(widget: CategoriesScreen(), title: 'Categories'),
    const BnScreen(widget:AddScreen(), title: 'Add',),
    const BnScreen(widget: MapScreen(), title: 'Maps',),
    const BnScreen(widget: FavoriteScreen(), title: 'Favorite',),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          _bnScreens[_currentIndex].title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        //elevation: 0,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/000/439/863/small/Basic_Ui__28186_29.jpg',
                ),
              ),
              //currentAccountPictureSize: Size(30,30),
              otherAccountsPictures: [
                CircleAvatar(),
                CircleAvatar(),
              ],
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ]),
              accountName: Text('Flutter'),
              accountEmail: Text('email@flutter.com'),
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
              leading: Icon(Icons.logout),
              title: Text('تسجيل الدخول',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.category),
              title: Text('اقسام العقارات',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            ),
            SizedBox(height: 20),

            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/info_screen');
              },
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.settings),
              title: Text('الاعدادات',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            ),

            Divider(),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/faqs_screen');
              },
              leading: Icon(Icons.question_answer),
              title: Text('معلومات الدعم والتواصل',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            ),

            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
              leading: Icon(Icons.logout),
              title: Text('تسجيل الخروج',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

          ],
        ),

      ),

      body: _bnScreens[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true,
        showUnselectedLabels: true,

        backgroundColor: Colors.white,

        // fixedColor: Colors.pink,
        selectedItemColor: Colors.orange,
        selectedIconTheme: IconThemeData(color: Colors.orange),
        selectedLabelStyle:
        TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        selectedFontSize: 14,

        unselectedItemColor: Colors.grey.shade600,
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade400),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w200),
        unselectedFontSize: 12,

        // iconSize: 40,
        elevation: 8,

        items: [

          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home_outlined,color: Colors.black,size: 30, ),
            activeIcon: Icon(Icons.home,size: 30,color: Colors.black,),
            label: "الرئيسية",

          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.category_outlined,color: Colors.black,size: 30, ),
            activeIcon: Icon(Icons.category,size: 30,color: Colors.black,),
            label: "الاعلانات",
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.add_circle,color: Colors.black,size: 60, ),
            activeIcon: Icon(Icons.add_circle,size: 60,color: Colors.black,),
            label: "اضافة",

          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.map_outlined,color: Colors.black,size: 30, ),
            activeIcon: Icon(Icons.map ,size: 30,color: Colors.black,),
            label: 'خريطة',
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.favorite_outlined,color: Colors.black,size: 30, ),
            activeIcon: Icon(Icons.favorite,size: 30,color: Colors.black,),
            label: 'المفضلة',)
        ],
      ),
    );
  }
}




