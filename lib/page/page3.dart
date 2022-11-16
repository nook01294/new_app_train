import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'PAGE2',
            ),
            TextButton(
              // style: flatButtonStyle,
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/page1'));
              },
              child: const Text('TextButton pop to main'),
            )
          ],
        ),
      ),
    );
  }
}
