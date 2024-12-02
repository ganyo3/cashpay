// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? onTap;
  final String  buttonText;
  final Color color, textColor;
  final double? width;
  final Color borderColor;
  final Color shadowColor;
  final Color iconColor;
  final double iconSize;
  final double borderRadius;
  final double fontSize;
  final EdgeInsets padding;
  final IconData? btnIcon;
  const Button(
      {super.key,
      this.onTap,
     required this.buttonText,
      this.color = Colors.transparent,
      this.width,
      this.borderColor = Colors.transparent,
      this.shadowColor = Colors.transparent,
      this.textColor = Colors.white,
      this.btnIcon,
      this.iconColor = Colors.white,
      this.iconSize = 20,
      this.padding =const EdgeInsets.symmetric(vertical: 15),
      this.borderRadius = 20, this.fontSize = 15});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: padding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: shadowColor,
              offset: Offset(1, 3),
              blurRadius: 5,
            )
          ],
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (btnIcon != null)
                ? Icon(btnIcon, color: iconColor, size: iconSize)
                : SizedBox(),
            (btnIcon != null) ? SizedBox(width: 5) : SizedBox(),
            Text(
              buttonText ,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: fontSize, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomToggleButton extends StatefulWidget {
  final List<bool>? isSelected;
  final List<String>? label;
  final double btnWidth;
  final Function? onTap;
  const CustomToggleButton(
      {super.key,
      this.isSelected,
      this.label,
      required this.btnWidth,
      this.onTap});
  // @override
  void toggleItem() => _CustomToggleButtonState().toggleItem();
  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ToggleButtons(
        //renderBorder: false,
        selectedBorderColor: theme.cardColor,
        direction: Axis.horizontal,
        constraints:
            BoxConstraints(minHeight: height * 0.07, minWidth: widget.btnWidth),
        color: Colors.white,
        selectedColor: Colors.white,
        fillColor: theme.cardColor,
        borderColor: Colors.white,
        borderRadius: BorderRadius.circular(20),
        isSelected: widget.isSelected!,
        onPressed: (int index) {
          setState(() {
            for (int indexBtn = 0;
                indexBtn < widget.isSelected!.length;
                indexBtn++) {
              if (indexBtn == index) {
                widget.isSelected![indexBtn] = true;
              } else {
                widget.isSelected![indexBtn] = false;
              }
            }
          });
        },
        children: List.generate(widget.isSelected!.length, (index) {
          return Container(
            //width: width * 0.2,
            padding: EdgeInsets.all(width * 0.02),
            child: SizedBox(
              width: width * 0.2,
              child: Text(widget.label![index],
                  softWrap: true,
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center),
            ),
          );
        }));
  }

  toggleItem() {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.2,
      padding: EdgeInsets.all(10),
      child: Text('Mobile money',
          softWrap: true,
          style: TextStyle(fontSize: 17),
          textAlign: TextAlign.center),
    );
  }
}

class CustomDropList extends StatefulWidget {
  final List<DropdownMenuItem<dynamic>> items;
  final void Function(dynamic)? onChanged;
  final dynamic value;
  final String hint;
  const CustomDropList(
      {super.key,
      required this.items,
      required this.onChanged,
      required this.value,
      required this.hint});

  @override
  CustomDropdownListState createState() => CustomDropdownListState();
}

class CustomDropdownListState extends State<CustomDropList> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: DropdownButtonFormField(
        style: theme.textTheme.bodyLarge,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.black87),
            border: InputBorder.none,
            fillColor: Colors.transparent,
            filled: true),
        hint: Text(widget.hint),
        value: widget.value,
        onChanged: widget.onChanged,
        items: widget.items,
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  final dynamic onTap;
  final Color? color;
  final IconData? btnIcon;
  final Color? iconColor;
  final double? iconSize;
  final double? width;
  final double? borderRadius;
  const ButtonIcon(
      {super.key,
      this.onTap,
      this.color,
      this.width,
      this.btnIcon,
      this.iconColor = Colors.white,
      this.iconSize = 20,
      this.borderRadius = 20});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              offset: Offset(1, 3),
              blurRadius: 5,
            )
          ],
          color: color,
        ),
        child: Icon(
          btnIcon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}


