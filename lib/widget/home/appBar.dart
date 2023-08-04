import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// AppBar
AppBar homeAppbar() {
  return AppBar(
    elevation: 0,
    centerTitle: false,
    title: Text(
      "مرحبا بك في متجر الإلكترونيات",
      style: GoogleFonts.getFont('Almarai'),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
    ],
  );
}
