
import 'package:flutter/material.dart';

class CustomTextfields extends StatelessWidget {
  const CustomTextfields({
    super.key,
    required this.hintText, 
    required this.iconData,
    required this.IsPassword,
    required this.controller
  });
  final String hintText;
  final IconData iconData;
  final bool IsPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: Color.fromARGB(255, 54, 58, 65),
      borderRadius:  BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          Icon( iconData,
          color: Colors.white54, size: 25,
          ),
          SizedBox(width: 5,),
          Expanded(
            child: TextField(
              obscureText: IsPassword,
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none
          
              ),
            ),
          ),
        ],
      ),
    );
  }
}