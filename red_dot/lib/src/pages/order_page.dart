import 'package:flutter/material.dart';
import 'package:red_dot/src/pages/signin_page.dart';


//custom widgets
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget{
  @override
  _OrderPageState createState() => _OrderPageState();

}

class _OrderPageState extends State<OrderPage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My Food cart", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.red[400],
        elevation: 0.0,
      ),
          body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer(){
    return Container(
      height: 230.0,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Cart Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                Text("23.0", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,),),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Discount", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                Text("3.0", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,),),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Tax", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                Text("0.5", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,),),
                ],
              ),
              Divider(height: 40.0, color: Colors.red[500]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Sub Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey,),),
                Text("20.5", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,),),
                ],
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=> SignInPage()));
                },
                              child: Container(
                  width:MediaQuery.of(context).size.width,
                  height: 50.0,
                  decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Center(
                    child: Text(
                      "Proceed to Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}