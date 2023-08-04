import 'package:electronic_app/constants.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widget/details/appBarDetails.dart';
import '../widget/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBarDetails(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
