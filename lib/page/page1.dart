import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/page/page2.dart';


class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/page1',
      routes: {
        '/main': (context) => const MyHomePage(
              title: '',
            ),
        '/page1': (context) => const PageDetail()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageDetail(),
    );
  }
}

class PageDetail extends StatelessWidget {
  const PageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'PAGE1',
            ),
            TextButton(
              // style: flatButtonStyle,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    )).then((value) {});
              },
              child: const Text('TextButton 1 => 2'),
            )
          ],
        ),
      ),
    );
  }
}
