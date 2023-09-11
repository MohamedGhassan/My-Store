import 'package:flutter/material.dart';

class CustomTitleBodyAuth extends StatelessWidget {
  final String body;
  CustomTitleBodyAuth({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topCenter,
      child: Text(
        body,
        style: Theme.of(context).textTheme.bodyText2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
