import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextOverflow textOverflow;
  final TextStyle? style;

  const ExpandableText(
    this.text, {
    Key? key,
    this.maxLines = 3,
    this.textOverflow = TextOverflow.fade,
    this.style,
  }) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  void changeExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      final textStyle = widget.style ?? DefaultTextStyle.of(context).style;
      final textSpan = TextSpan(text: widget.text, style: textStyle);
      final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
          maxLines: widget.maxLines);

      textPainter.layout(maxWidth: constraints.maxWidth);

      if (textPainter.didExceedMaxLines) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: _isExpanded ? 1 : 0.5,
              child: Text(
                widget.text,
                style: textStyle,
                overflow: widget.textOverflow,
                maxLines: _isExpanded ? null : widget.maxLines,
              ),
            ),
            TextButton(
              onPressed: changeExpanded,
              child: Text(
                _isExpanded ? '閉じる' : '開く',
                style: const TextStyle(color: Colors.blue),
              ),
            )
          ],
        );
      } else {
        return Text(
          widget.text,
          style: textStyle,
          maxLines: widget.maxLines,
        );
      }
    });
  }
}
