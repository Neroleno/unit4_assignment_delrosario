import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Color(0xFF970747),
        scaffoldBackgroundColor: Colors.white, 
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JED ANDREW L. DEL ROSARIO'),
        backgroundColor: Color(0xFF970747),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 600, 
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFEF4E8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/pic.jpg'), 
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jed Andrew L. Del Rosario',
                          style: TextStyle(
                            color: Color(0xFF284058),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'BS in Computer Science',
                          style: TextStyle(
                            color: Color(0xFF1989AC),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFEF4E8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    infoRow(Icons.email, 'Email', 'jedandrew.delrosario@wvsu.edu.ph'),
                    infoRow(Icons.phone, 'Phone', '09055690672'),
                    infoRow(Icons.home, 'Address', 'Brgy. Balabag, Pavia, Iloilo'),
                    infoRow(Icons.cake, 'Birthday', 'December 4, 2003'),
                    infoRow(Icons.star, 'Hobbies', 'Reading Books, Gaming, Watching Movies'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFEF4E8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF284058),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hey there! I'm Jed Andrew Del Rosario, the youngest of 3 brothers. As of writing this biography I am now 20 years old. Of all the hobbies, gaming is the most time I spend on. I love the challenges and entertainment it provides me but most of all, I love the stories that I can immerse myself in it. I believe the best mode of storytelling is through video games! That's why I'm studying in this course right now so that I could(hopefully) nurture and connect my interest in computers and love for video games into a career in the future.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
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

  Widget infoRow(IconData icon, String description, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFF284058)),
          SizedBox(width: 10),
          Expanded(
            child: Row(
              children: [
                Text(
                  description,
                  style: TextStyle(
                    color: Color(0xFF284058),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  info,
                  style: TextStyle(
                    color: Color(0xFF1989AC),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
