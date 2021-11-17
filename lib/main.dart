// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login & SignUp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width,
    double height = MediaQuery.of(context).size.height,
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width :width,
                height: height*0.45,
                child: Image.asset('assets/yoga.png',fit: BoxFit.fill,)
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email),
                  border:OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height:20.0),
              TextField(
                obscureText:true,
                decoration: InputDecoration(
                  hintText:"password",
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20.0) )
                ),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding:const EdgeInsets.all(10.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Forgot Password ?",style: TextStyle(fontSize:12 ),),
                      RaisedButton(
                        child: Text("Login"),
                        color: Color(0xffEE7B23),
                        onPressed: (){},
                      ),
                    ],
                  ) ,
                ),
                SizedBox(height: 20.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context)=>Second()));
                  },
                  child: Text.rich(
                    TextSpan(
                      text: "Does Have An Account",
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(color: Color(0xffEE7B23)),
                        )
                      ]


                    )
                  )
                )
            ],

          ),
        ),
      ),

    );
  }
}
class Second extends StatefulWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width,
    double height = MediaQuery.of(context).size.height,
    return Scaffold(
      body: Container(
        width:  width,
        height: height*0.45,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height*0.45,
                child: Image.asset("assets/play.png",fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("SignUp",
                    style: TextStyle(fontSize:25,fontWeight: FontWeight.bold ),),
                    SizedBox(height:30),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        suffixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )
                      ),
                    ),
                    SizedBox(height:20.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.visibility_off),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Padding(padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Forgot Password ?",
                        style:TextStyle(fontSize: 12.0) ,),
                        RaisedButton(
                          child: Text("SignUp"),
                          color: Color(0xffEE7B23),
                          onPressed: (){},
                        )
                      ],
                    ),
                    ),
                    SizedBox(height: 20.0,),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Myapp()));
                      },
                      child: Text.rich(
                        TextSpan(
                          text: "Already have an account ?",
                          children: [
                            TextSpan(
                              text: 'SignIn',
                              style: TextStyle(
                                color: Color(0xffEE7B23),
                              ),
                            ),
                    
                          ]
                        ),
                      ),
                      ),
                    
                  ],
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}