import 'package:flutter/material.dart';
import 'package:list_film/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget myText(String label, String hintText, bool isObsecure){
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        //memberikan Password untuk setiap form
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Application"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // textformfield username
            myText("Username", "Ketik nama lengkap anda", false),
            // textformfield password
            myText("Password", "Ketik password anda", true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // elevated button login
                ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }, child: Text('Login')),
                // elevated button register
                ElevatedButton(onPressed: () {},
                    child: Text('Register', style: TextStyle(color: Colors.black),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
