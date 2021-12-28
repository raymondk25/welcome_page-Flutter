import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String illustration =
      'https://ouch-cdn2.icons8.com/EKcTTQRTxcwU7TcrQxqX3zBUqjGDZw0xx4CM_bI8Yrg/rs:fit:196:196/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNzE2/LzJmYWQxYjUxLTYy/MzItNDdkNC1hZDc3/LTc3MTBlZjc1YzVh/Zi5zdmc.png';
  String google = 'https://img.icons8.com/color/2x/google-logo.png';
  String email =
      'https://img.icons8.com/external-kiranshastry-lineal-color-kiranshastry/2x/external-email-interface-kiranshastry-lineal-color-kiranshastry.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20),
                FadeInUp(
                  duration: Duration(milliseconds: 1300),
                  child: Image.network(
                    illustration,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 60),
                FadeInUp(
                  duration: Duration(milliseconds: 1300),
                  child: Text(
                    'Join Our Community',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                FadeInUp(
                  duration: Duration(milliseconds: 1300),
                  child: Text(
                    'Find People With The Same Interests As You',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                  ),
                ),
                SizedBox(height: 15),
                FadeInUp(
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 1300),
                  child: Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                FadeInUp(
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 1300),
                  child: Container(
                    width: double.infinity,
                    child: MaterialButton(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(google, height: 30,),
                          Spacer(),
                          Text('Continue with Google', style: TextStyle(fontSize: 18, color: Colors.grey.shade800)),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FadeInUp(
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 1300),
                  child: Container(
                    width: double.infinity,
                    child: MaterialButton(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(email, height: 30,),
                          Spacer(),
                          Text('Signup with Email', style: TextStyle(fontSize: 18, color: Colors.white)),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
