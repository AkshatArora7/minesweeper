import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minesweeper/routes/routeGenerator.dart';
import 'package:minesweeper/utils/SizeConfig.dart';
import 'package:minesweeper/widget/game.dart';
import 'package:minesweeper/widget/loading.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Minesweeper',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Loading(),
    );
  }
}
