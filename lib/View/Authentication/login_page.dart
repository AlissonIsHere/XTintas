import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(91, 77, 167, 1),
      body: Row(
        children: [
          Image.asset('assets/images/bucket.png'),
          Text(
            'XTintas',
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
