import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  String? _emailError;
  String? _passwordError;

  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();

    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigateToCreateAccount;
    //_tapGestureRecognizer.onTap = navigateToCreateAccount;
  }

  void navigateToCreateAccount() =>
      Navigator.pushNamed(context, '/create_account_screen');

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back...',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Enter email & password...',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailTextController,
              cursorColor: Colors.pink,
              cursorWidth: 5,
              cursorRadius: Radius.circular(10),
              // cursorHeight: 10,
              showCursor: false,
              maxLength: 30,
              buildCounter: (
                context, {
                required int currentLength,
                required bool isFocused,
                required int? maxLength,
              }) {
                return null;
                // return Text('($currentLength | $maxLength)');
              },
              onChanged: (String value) {
                //print('VALUE: $value');
              },
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                errorText: _emailError,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red.shade900,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                // helperText: 'email@vision-plus.com',
                // helperStyle: TextStyle(color: Colors.grey),
                // helperMaxLines: 1,

                // counterText: '',
                hintText: 'Email address',
                // hintMaxLines: 1,
                // hintTextDirection: TextDirection.ltr,
                // hintStyle: TextStyle(
                //   color: Colors.grey,
                //   letterSpacing: 1,
                //   fontWeight: FontWeight.w300,
                // ),

                // labelText: 'Email address',
                // floatingLabelBehavior: FloatingLabelBehavior.never,
                // labelStyle: TextStyle(color: Colors.blue.shade800)

                // enabledBorder: InputBorder.none,
                // enabledBorder: UnderlineInputBorder(
                //   borderRadius: BorderRadius.circular(10),
                //   borderSide: BorderSide(
                //     color: Colors.grey.shade300,
                //     width: 3,
                //   ),
                // ),
                // focusedBorder: UnderlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.blue,
                //     width: 3,
                //   ),
                // ),

                enabled: true,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red.shade100,
                    width: 1,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),

                prefixIcon: Icon(Icons.email),
                // prefixText: '970-',
                // prefix: Text('970-'),

                // suffixIcon: Icon(Icons.send),
                // suffixText: 'Clear',
                // suffix: Icon(Icons.clear),

                fillColor: Colors.grey.shade200,
                filled: true,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordTextController,
              obscureText: true,
              // obscuringCharacter: 'A',
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red.shade900,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorText: _passwordError,
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blue.shade400,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _performLogin();
              },
              child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Don\'t have an account',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: ' '),
                    TextSpan(
                      recognizer: _tapGestureRecognizer,
                      text: 'Create Now!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _performLogin() {
    if(checkData()){
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      checkErrors();
      return true;
    } else {
      checkErrors();
    }
    showSnackBar(
      message: 'Enter required data',
      error: true,
    );
    return false;
  }

  void checkErrors() {
    setState(() {
      _emailError = _emailTextController.text.isNotEmpty ? null : 'Email error';
      _passwordError =
          _passwordTextController.text.isNotEmpty ? null : 'Password Error';
    });
  }

  void showSnackBar({required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
      ),
    );
  }

  void login(){
    Navigator.pushReplacementNamed(context, '/main_screen');
  }
}
