import 'package:electronic_app/constants.dart';
import 'package:electronic_app/widget/details/produact_image.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProdactImage(
                  size: size,
                  image: product.image,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillcolor: kTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillcolor: Colors.red,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillcolor: Colors.blue,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Text(
                "السعر: \$${product.price}",
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19.0,
            ),
          ),
        ),
      ],
    );
  }
}
