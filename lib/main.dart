import 'package:aws_amplify_cognito_app1/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: const MaterialColor(
        0xFF000000,
        <int, Color>{
          50: Color(0xFF000000),
          100: Color(0xFF000000),
          200: Color(0xFF000000),
          300: Color(0xFF000000),
          400: Color(0xFF000000),
          500: Color(0xFF000000),
          600: Color(0xFF000000),
          700: Color(0xFF000000),
          800: Color(0xFF000000),
          900: Color(0xFF000000),
        },
      )),
      home: const MyHomePage(title: 'AWS Cognito Auth'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController cdTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 64,
                ),
                CupertinoTextField.borderless(
                  controller: emailTextController,
                  placeholder: 'email',
                  keyboardType: TextInputType.emailAddress,
                  showCursor: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                CupertinoTextField.borderless(
                  controller: passwordTextController,
                  placeholder: 'password',
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const HomeScreen();
                    }));
                  },
                  child: const Text("Log in"),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextButton(onPressed: () {}, child: const Text("Sign Up")),
                const SizedBox(
                  height: 32,
                ),
                CupertinoTextField.borderless(
                  controller: cdTextController,
                  placeholder: 'confirmation code',
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const HomeScreen();
                    }));
                  },
                  child: const Text("Confirm Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
