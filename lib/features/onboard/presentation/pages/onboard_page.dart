

import 'package:flutter/material.dart';

import '../widgets/onboard_content.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnboardContent(),
      ),
    );
  }
}
