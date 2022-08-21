import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 200, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Image(
                image: AssetImage('assets/images/word-logo.png'),
              height: 70,
            ),
            const SizedBox(
              height: 20,
            ),
             TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Phone number, username or email',
                fillColor: Colors.grey.shade100,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  ),
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.grey.shade100,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Log in'),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children:  <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Divider(
                      color: Colors.black87,
                    ),
                  ),
                ),
                Text('OR'),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Divider(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: <Widget>[
                SizedBox(width: 60,),
                Image(
                  image: AssetImage('assets/images/fb.png'),
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: 20,),
                Text(
                  'Sign in with Facebook',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 70,),
                Text(
                    "Don't have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    'Sign up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
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
