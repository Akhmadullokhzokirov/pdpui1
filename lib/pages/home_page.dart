import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDP"),
      ),
      body:  Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.grey.shade900,
              Colors.grey.shade700,
              Colors.grey.shade400,
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 80,),
            // #logn, welcome
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 40),),
                SizedBox(height: 10,),
                Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
            ),
            SizedBox(height: 10,),

            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
              ),

              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      // #email, password
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Color.fromRGBO(171, 171, 171, 0.7),blurRadius:20, offset: Offset(0,10))
                          ]
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 30,),

                            // # username, #email,#phone #password
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Username",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),

                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Phone",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),

                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),

                            // #Login or Sing UP
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green.shade800,
                              ),
                              child: Center(
                                child: Text("Sing Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            SizedBox(height: 30,),
                            
                            // # Login with SMS
                            Text("Login with SMS",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(height: 30,),


                            // #facebook, Google,github
                            Row(

                              children: [
                                Expanded(
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blue,
                                      ),
                                      child: Center(
                                        child: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ),
                                    )

                                ),

                                SizedBox(width: 10),

                                Expanded(
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black,
                                      ),
                                      child: Center(
                                        child: Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ),
                                    )
                                ),
                                //sizedbox
                                SizedBox(width: 10),

                                Expanded(
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text("GitBush",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      ),
                                    )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                     ],
                  ),
                ),
              ),
            ))
          ],
        ),
      )
    );
  }
}
