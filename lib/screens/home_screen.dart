import 'package:electronic_app/widget/home/home_body.dart';
import 'package:flutter/material.dart';

import '../widget/home/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(),
      body: const Homebody(),
    );
  }
}
