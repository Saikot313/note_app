import 'package:flutter/material.dart';
import 'package:note_app/Pages/Home_Page.dart';
import 'package:note_app/Pages/Registration_Page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required String title});

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
              'Please Login Your Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigoAccent,
              ),
            ),

            SizedBox(height: 30),

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
                'Login',
                style: TextStyle(fontSize: 18,color: Colors.white),
              ),
            ),

            SizedBox(height: 30),

            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegistrationPage()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red[800],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
