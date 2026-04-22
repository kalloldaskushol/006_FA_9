//! Author: Kallol Das Kushol

import 'package:flutter/material.dart';

class IdCard extends StatelessWidget {
  const IdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F7FF),
      appBar: AppBar(
        title: Text("Digital ID Card"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Card(
          elevation: 5.0,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(radius: 60, 
                  backgroundImage: AssetImage("Images/Picture.jpg"), 
                  backgroundColor: Colors.black,
                ),
                const SizedBox(height: 20),
                addText("Kallol Das Kushol" , f: 20.0, fw: FontWeight.bold),
                addText("Batch 63rd, Department of CSE"),

                SizedBox(width: double.infinity, child: Divider()),
                const SizedBox(height: 25),
                infoRow(Icons.badge, "ID: 0182410012101006"),
                const SizedBox(height: 25),
                infoRow(Icons.email, "Email: kalloldaskushol@gmail.com"),
                const SizedBox(height: 25),
                infoRow(Icons.phone,"Phone: +8801886-204319"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget addText(String T, {double f = 16.0, FontWeight fw = FontWeight.normal}){
  return Text(T,
  style: TextStyle(fontSize: f, fontWeight: fw),
  );
}

Widget infoRow(IconData icon, String info){
  return Row(
    children: [
      Icon(icon, color: Colors.blueGrey),
      SizedBox(width: 10),
      Text(info, style: TextStyle(fontSize: 16)),
    ],
  );
}