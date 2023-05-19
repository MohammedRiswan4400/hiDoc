import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  final double h;
  final double w;
  const MySizedBox({
    required this.h,
    required this.w,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
