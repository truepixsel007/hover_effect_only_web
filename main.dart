import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hover_icon/widget/icon_widget.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Flutter icon Hover animation";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.blue),
        home: const MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 1.0,
          runSpacing: 2.0,
          children: const [
            IconWidget(
              icon: FontAwesomeIcons.facebookF,
              color: Colors.blue,
            ),
            SizedBox(width: 4),
            IconWidget(
              icon: FontAwesomeIcons.twitter,
              color: Colors.blueAccent,
            ),
            SizedBox(width: 4),
            IconWidget(
              icon: FontAwesomeIcons.google,
              color: Colors.redAccent,
            ),
            SizedBox(width: 4),
            IconWidget(
              icon: FontAwesomeIcons.linkedinIn,
              color: Colors.purpleAccent,
            ),
            SizedBox(width: 4),
            IconWidget(
              icon: FontAwesomeIcons.instagram,
              color: Colors.tealAccent,
            ),
          ],
        ),
      ),
    );
  }
}
