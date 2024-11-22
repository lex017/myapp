import 'package:flutter/material.dart';
import 'package:myapp/screen/LoginPage.dart';

void main(){
  runApp(const myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.amber[700],
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            
          ),
          iconTheme: const IconThemeData(
          color: Colors.white,
          size: 33.0
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(fontSize: 25,color: Colors.white),
          unselectedLabelStyle: TextStyle(fontSize: 14,color: Colors.white),
          
        )

      ),



      home: const LoginPage(),
    );
  }
}