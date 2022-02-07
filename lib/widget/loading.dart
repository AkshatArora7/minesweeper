import 'package:flutter/material.dart';
import 'package:minesweeper/utils/SizeConfig.dart';

import 'game.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<bool> initials() async {
    bool isLoading = true;
    MySize().initforSize(context);
    isLoading = false;
    return isLoading;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bool>(
          future: initials(),
          builder: (context, isLoading) {
            if (isLoading.connectionState == ConnectionState.waiting) {
              return loadingWidget();
            }
            if (!isLoading.data!) {
              Future.delayed(Duration(seconds: 1)).then((value) {
                Navigator.of(context).popAndPushNamed(GameActivity.routeName);
              });
            }
            return loadingWidget();
          }),
    );
  }

  loadingWidget() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          color: Color(0xff53c6b4),
        ),
      ),
    );
  }
}
