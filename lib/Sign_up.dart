import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:login_with_firebase/widgets/Textfields.dart';

class signUp extends StatelessWidget {
   signUp({super.key});

  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 22, 40),
        appBar: AppBar(backgroundColor: Colors.transparent,),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, 
              vertical: 50),
              child: Text("Login", style: TextStyle(fontSize: 40, 
              color: Colors.white
              ),
              ),
            ),
            CustomTextfields(
              hintText: 'Email address', 
              iconData: FluentIcons.mail_24_regular, 
              IsPassword: false, 
              controller: txtEmail),
            CustomTextfields(
              hintText: 'Password',  
              iconData: FluentIcons.lock_closed_24_regular, 
              IsPassword: true, 
              controller: txtPassword),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: 
              (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 50)
              ),
               child: Text("Login", style: TextStyle(fontSize: 25),))
          ],
        ),
      ),
    );
  }
}

