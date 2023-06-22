import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}): super(key:key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textNoHasAccount(),
      ),
      body: Stack(
          children: [
            _BackgroundColor(context),
            _boxForm(context),
            Column(
              children: [
                _imageCover(),
                _textAppName(),
              ],
            )
          ],
        ),
      );
  }

  Widget _BackgroundColor(BuildContext context){
    return Container(
      width: double.infinity,
      height:MediaQuery.of(context).size.height * 1 ,
      color: Colors.amber,
    );
  }
  Widget _imageCover(){
    return SafeArea(
      child: Container(
         alignment: Alignment.center,
         margin: EdgeInsets.only(top:20,bottom:20),
         child: Image.asset(
            'assets/images/delivery.png',
           width: 130,
           height: 130,
         ),
      ),
    );
  }
  Widget _textAppName(){
    return Text('Delivery Mysql',
      style: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),

    );
  }
  Widget _textNoHasAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No tienes una cuenta ?',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w100,
                color: Colors.black
            )
        ),
        SizedBox(width: 7,),
        Text('Registrate !',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.amber
            )
        )
      ],
    );
  }

  Widget _boxForm(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.35, left: 50, right: 50),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Container(
        margin: EdgeInsets.only(top:30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _textFieldEmail(),
              _textFieldPassword(),
              _buttomLogin()
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Email',
            prefixIcon: Icon(Icons.email)
          ),
      ),
    );
  }
  Widget _textFieldPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.lock)
        ),
      ),
    );
  }
  Widget _buttomLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15)
          ),
          child: Text('Login',
          style: TextStyle(
            color: Colors.black,
          ),)
      ),
    );
  }
}




