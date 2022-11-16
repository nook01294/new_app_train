import 'package:flutter/material.dart';
import 'package:myapp/page/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE2'),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page3(),
                    )).then((value) {});
              },
              child: const Text('TextButton 2 => 3'),
            )
          ],
        ),
      ),
    );
  }
}
