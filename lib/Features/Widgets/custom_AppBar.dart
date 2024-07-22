import 'package:flutter/material.dart';

import '../../Core/Utils/Styles/Styles.dart';

AppBar BuildAppBar({required final String title}) {
  return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const Icon(
        Icons.arrow_back_rounded,
        color: Colors.black,
      ),
      title: Text(title, textAlign: TextAlign.center, style: Styles.style25));
}
