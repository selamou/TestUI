import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../shared/components/components.dart';

class FormLogIn extends StatefulWidget {
  const FormLogIn({super.key});

  @override
  State<FormLogIn> createState() => _FormLogInState();
}

class _FormLogInState extends State<FormLogIn> {
  // final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Input(
          icon: Icon(
            Icons.email_outlined,
            color: Colors.black.withOpacity(0.60),
          ),
          hint: "Email",
        ),
        Input(
          obscure: true,
          obicon: Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.black.withOpacity(0.60),
          ),
          icon: Icon(
            Icons.lock_outline,
            color: Colors.black.withOpacity(0.60),
          ),
          hint: "Password",
        )
      ],
    );
  }
}
