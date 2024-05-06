
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.child, this.onTap, this.color});
  final Widget child;
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                              height: 47,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: color??Colors.blue
                              ),
                              child: child
                            ),
    );
  }
}
