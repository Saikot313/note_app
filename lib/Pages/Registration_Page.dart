import 'package:flutter/material.dart';
import 'package:note_app/Pages/Home_Page.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const  Text(
              'Sign Up To This Platfrom',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigoAccent,
              ),
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Your Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Phonr Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Re-Type Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.5),
                ),
              ),

              child: Text(
                'Sing Up',
                style: TextStyle(fontSize: 18,color: Colors.white),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

