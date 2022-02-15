import 'package:flutter/material.dart';
import 'package:ui_app_vp8/screens/outboarding/outboarding_content_screen.dart';
import 'package:ui_app_vp8/screens/outboarding/outboarding_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Visibility(
            visible: _currentPage != 2,
            replacement: Container(
              alignment: AlignmentDirectional.topEnd,
              margin: EdgeInsetsDirectional.only(top: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black38,
                ),
                child: Text('START',style: TextStyle(fontSize: 24),),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/main_screen'),
              ),
            ),
            child: Container(
              alignment: AlignmentDirectional.topEnd,
              margin: EdgeInsetsDirectional.only(top: 20),
              child: TextButton(
                onPressed: () {
                  _pageController.animateToPage(2,
                      duration: Duration(seconds: 1), curve: Curves.easeInOut);
                },
                child: Text('SKIP',style: TextStyle(fontSize: 24),),
              ),
            ),
          ),


          Expanded(
            child: PageView(
              onPageChanged: (int value) {
                setState(() {
                  _currentPage = value;
                });
              },
              controller: _pageController,
              children: [
                OutBoardingContent(
                  title: ' اهلا وسهلا بكم في تطبيقنا${_currentPage + 1}',
                  content:
                      'فقرة قصيرة ',
                ),
                OutBoardingContent(
                  title: ' المزايا${_currentPage + 1}',
                  content:
                      'تقديم المزايا',
                ),
                OutBoardingContent(
                  title: ' ما هوا جديد${_currentPage + 1}',
                  content:
                      'كتابة الجديد',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutBoardingIndicator(
                  selected: _currentPage == 0,
                  marginEnd: 5,
                ),
                OutBoardingIndicator(
                  selected: _currentPage == 1,
                  marginEnd: 5,
                ),
                OutBoardingIndicator(
                  selected: _currentPage == 2,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    if (_currentPage != 0)
                      _pageController.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color:
                        _currentPage == 0 ? Colors.grey.shade400 : Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (_currentPage != 2)
                      _pageController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeIn,
                      );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color:
                        _currentPage == 2 ? Colors.grey.shade400 : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
