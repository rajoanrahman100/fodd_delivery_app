import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {


  bool _toggleVisibility=true;

  final _formKey = GlobalKey<FormState>();

  Widget _buildEmailTextFeild(){
    return TextFormField(
      keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Your Email or UserName",
        hintStyle: GoogleFonts.ubuntu(
          color: Colors.grey
        )
      ),
      validator: (value) {
        if (value.isEmpty) {
          return "Don't skip your email id or user name";
        }
        return null;
      },
    );
  }

  Widget _buildPasswordFeild(){
    return TextFormField(
      keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: GoogleFonts.ubuntu(
              color: Colors.grey
          ),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toggleVisibility=!_toggleVisibility;
            });
          },
          icon: _toggleVisibility?Icon(Icons.visibility_off):Icon(Icons.visibility),
        )
      ),
      obscureText: _toggleVisibility,
      validator: (value) {
        if (value.isEmpty) {
          return "Don't forget to write down your password";
        }
        return null;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Text("Sign In",textAlign:TextAlign.center,style: GoogleFonts.ubuntu(
              fontSize: 40.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgot Password?",style: GoogleFonts.ubuntu(
                    fontSize: 15.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      _buildEmailTextFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPasswordFeild()
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap:() {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                _formKey.currentState.save();
              },
              child: Container(
                margin: EdgeInsets.only(top: 40.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.ubuntu(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?",style: GoogleFonts.ubuntu(
                  color: Colors.grey,
                  fontSize: 16.0
                ),),
                SizedBox(
                  width: 3.0,
                ),
                Text("Sign Up",style: GoogleFonts.ubuntu(
                    color: Colors.blue,
                  fontWeight: FontWeight.bold,
                    fontSize: 16.0
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
