import 'package:flutter/material.dart';

class PageIntro extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final Widget? content;
  final Widget? pageHeader;
  final Widget? leading;
  final List<Widget>? actions;

  static const mainBGGreen = Color(0xFF18d462);

  const PageIntro(
      {super.key,
      required this.title,
      this.backgroundColor = mainBGGreen,
      this.textColor = Colors.white,
      this.height = 250.00,
      this.leading,
      this.content,
      this.actions,
      this.pageHeader});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (pageHeader != null) pageHeader!,
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (content != null) Expanded(child: content!),
                  if (leading != null) leading!,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
