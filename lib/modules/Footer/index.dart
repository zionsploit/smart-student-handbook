import 'package:flutter/material.dart';

class FooterModules extends StatelessWidget {
  const FooterModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("Baringcucurong NHS"), Text("ISPSC.edu.ph")],
      ),
    );
  }
}
