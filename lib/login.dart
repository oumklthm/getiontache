import 'package:flutter/material.dart';
import 'package:gestion_tache/homepage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: false, 
                      onChanged: (value) {},
                    ),
                    Text('Remember Password'),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                     
                      },
                      child: Text('Forgot Password'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
             ElevatedButton(
  onPressed: () {
   
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 50), 
  ),
  child: Text('Sign In'),
),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


