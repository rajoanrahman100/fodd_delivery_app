import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/order_cart.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signIn_page.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPagesState createState() => _OrdersPagesState();
}

class _OrdersPagesState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Your Food Cart",
          style: GoogleFonts.ubuntu(
              color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[OrderCart(), OrderCart(),OrderCart(), OrderCart()],
      ),
      bottomNavigationBar: _buildContainer(),
    );
  }

  Widget _buildContainer() {
    final _textStyle = GoogleFonts.ubuntu(fontWeight: FontWeight.w500);

    return Container(
      height: 230.0,

      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      child: Column(
        children: <Widget>[

          Row(
            children: <Widget>[
              Text(
                "Cart Total",
                style: _textStyle,
              ),
              Spacer(),
              Text(
                "230 BDT",
                style: _textStyle,
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Text(
                "Discount Total",
                style: _textStyle,
              ),
              Spacer(),
              Text(
                "20 BDT",
                style: _textStyle,
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Text(
                "Tax",
                style: _textStyle,
              ),
              Spacer(),
              Text(
                "05 BDT",
                style: _textStyle,
              )
            ],
          ),
          Divider(
            height: 25.0,
            color: Colors.grey,
          ),
          Row(
            children: <Widget>[
              Text(
                "Sub Total",
                style: _textStyle,
              ),
              Spacer(),
              Text(
                "215 BDT",
                style: _textStyle,
              )
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignInPage()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 40.0),
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
              child: Center(
                  child: Text(
                "Proceed to checkout",
                style: GoogleFonts.ubuntu(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
