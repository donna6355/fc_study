import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ResponsiveFont extends StatelessWidget {
  const ResponsiveFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          'The text to display',
          style: TextStyle(fontSize: 20),
          maxLines: 2,
        ),
        AutoSizeText(
          'A really long String',
          style: TextStyle(fontSize: 30),
          minFontSize: 18,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
        AutoSizeText.rich(
          TextSpan(text: 'A really long String'),
          style: TextStyle(fontSize: 20),
          minFontSize: 5,
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'This is some text that will resize based on the screen size.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
