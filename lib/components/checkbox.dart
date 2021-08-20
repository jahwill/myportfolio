import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    Key key,
    @required this.color,
    this.value,
    this.ontap,
    this.size,
    this.label,
  }) : super(key: key);

  final Color color;
  final bool value;
  final Function ontap;
  final double size;
  final String label;

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _value = false;
  double scale;
  @override
  void initState() {
    super.initState();
    scale = _value == false ? 0.0 : 1.0;
  }

  @override
  Widget build(BuildContext context) {
    _value = widget.value ?? _value;
    scale = _value == true ? 1.0 : 0.0;
    return Row(
      children: [
        GestureDetector(
          onTap: widget.ontap == null
              ? () {}
              : () {
                  setState(() {
                    _value = !_value;
                    scale = _value == true ? 1.0 : 0.0;
                    widget.ontap(_value);
                  });
                },
          child: AnimatedContainer(
              height: widget.size ?? 20.0,
              width: widget.size ?? 20.0,
              padding: EdgeInsets.all(4),
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: _value ? widget.color : Colors.grey.withOpacity(0.5),
                ),
              ),
              child: AnimatedContainer(
                  height: widget.size ?? 20.0,
                  width: widget.size ?? 20.0,
                  transform: Matrix4.translationValues(0, 0, 0)..scale(scale),
                  duration: Duration(milliseconds: 260),
                  decoration: BoxDecoration(
                    color: widget.color,
                    shape: BoxShape.circle,
                  ))),
        ),
        widget.label != null
            ? SizedBox(
                width: 8,
              )
            : SizedBox.shrink(),
        widget.label != null
            ? Text(widget.label
                .replaceRange(0, 1, widget.label.substring(0, 1).toUpperCase()))
            : SizedBox.shrink(),
      ],
    );
  }
}
