import 'package:flutter/material.dart';
import 'package:red_dot/src/pages/signin_page.dart';

class SignUpPage extends StatefulWidget{
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{

bool _toggleVisibility = true;
bool _toggleConfirmVisibility = true;

Widget _buildFirstNameTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your firstname",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

Widget _buildLastNameTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your lastname",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildUserNameTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your email",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState((){
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  Widget _buildConfirmPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState((){
              _toggleConfirmVisibility = !_toggleConfirmVisibility;
            });
          },
          icon: _toggleConfirmVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleConfirmVisibility,
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up", 
              style: TextStyle(
                fontSize: 40.0, 
                fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 50.0),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                      child: Column(
                      children: <Widget>[
                        _buildFirstNameTextField(),
                        SizedBox(height: 20.0),
                        _buildLastNameTextField(),
                        SizedBox(height: 20.0),
                        _buildUserNameTextField(),
                        SizedBox(height: 20.0),
                        _buildEmailTextField(),
                        SizedBox(height: 20.0),
                        _buildPasswordTextField(),
                        SizedBox(height: 20.0),
                        _buildConfirmPasswordTextField(),
                      ], 
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: Center(
                    child: Text("Sign Up",
                    style: TextStyle(fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                Divider( height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?",
                     style: TextStyle(color: Color(0xFFBDC2CB), 
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    ),
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> SignInPage()));
                      },
                      child: Text("Sign In",
                      style: TextStyle(color: Colors.red[200], 
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      ),
                      ),
                    ),
                  ],
                ),
          ],
        ),
         ),
    );
  }
}