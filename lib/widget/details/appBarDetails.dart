import 'package:flutter/material.dart';

import '../../constants.dart';

AppBar AppBarDetails(BuildContext context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    leading: IconButton(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      icon: const Icon(Icons.arrow_back),
      color: kPrimaryColor,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: const Text(
      'رجوع',
      style: TextStyle(color: kPrimaryColor),
    ),
  );
}
