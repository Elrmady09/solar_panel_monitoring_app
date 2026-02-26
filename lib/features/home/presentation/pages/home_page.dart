import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/home_provider.dart';
import '../widgets/home content.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(),
      child: SafeArea(
        child: Scaffold(
          body: HomeContent(),
        ),
      ),
    );
  }
}

///  this is my code