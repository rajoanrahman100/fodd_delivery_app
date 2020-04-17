import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _toggleVisibility=true;
  bool _toggleConfirmVisibility=true;

  TextEditingController _passwordController=TextEditingController();
  TextEditingController _confirmPasswordController=TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Widget _buildUserNameTextFeild(){
    return TextFormField(

      decoration: InputDecoration(
          hintText: "Your UserName",
          hintStyle: GoogleFonts.ubuntu(
              color: Colors.grey
          )
      ),
      validator: (value) {
        if (value.isEmpty) {
          return "Don't skip your ser name";
        }
        return null;
      },
    );
  }

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
          return "Don't skip your email id";
        }
        return null;
      },
    );
  }

  Widget _buildPasswordFeild(){
    return TextFormField(
      controller: _passwordController,
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

  Widget _buildConfirmPasswordFeild(){
    return TextFormField(
      controller: _confirmPasswordController,
      keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: GoogleFonts.ubuntu(
              color: Colors.grey
          ),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _toggleConfirmVisibility=!_toggleConfirmVisibility;
              });
            },
            icon: _toggleConfirmVisibility?Icon(Icons.visibility_off):Icon(Icons.visibility),
          )
      ),
      obscureText: _toggleConfirmVisibility,
      validator: (value) {
        if (value.isEmpty) {
          return "Don't forget to write down your password";
        }
        return null;
      },
    );
  }

  void _showToast(String string){
    Fluttertoast.showToast(
        msg: string,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
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
              height: 50.0,
            ),
            Text("Sign Up",textAlign:TextAlign.center,style: GoogleFonts.ubuntu(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 40.0,
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
                      _buildUserNameTextFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildEmailTextFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPasswordFeild(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildConfirmPasswordFeild()
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

                var text1=_passwordController.text;
                var text2=_confirmPasswordController.text;

                print(text1);
                print(text2);

                if(text1!=text2){

                  print("Not Match");
                }


              },
              child: Container(
                margin: EdgeInsets.only(top: 40.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                    child: Text(
                      "Sign Up",
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
                Text("Already have an account?",style: GoogleFonts.ubuntu(
                    color: Colors.grey,
                    fontSize: 16.0
                ),),
                SizedBox(
                  width: 3.0,
                ),
                Text("Sign In",style: GoogleFonts.ubuntu(
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
