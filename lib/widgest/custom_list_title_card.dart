import 'package:flutter/material.dart';

class CustomListTitleCard extends StatelessWidget {
  const CustomListTitleCard({
    Key? key,
    required this.ledingIcon,
    required this.title,
    required this.subTitle,
    required this.onActionPressed,
    this.marginBotem = 0,
    required this.trailingIcon,
  }) : super(key: key);
  final IconData ledingIcon;
  final String title;
  final String subTitle;
  final double marginBotem;
  final void Function() onActionPressed;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(right: 20, left: 20, bottom: marginBotem),
      child: ListTile(
        horizontalTitleGap: 0,
        leading: Icon(
          ledingIcon,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
          ),
        ),
        subtitle: Text(subTitle),
        trailing: IconButton(
          onPressed: onActionPressed,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}
