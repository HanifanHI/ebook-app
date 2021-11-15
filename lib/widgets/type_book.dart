import 'package:ebook_app/shared/theme.dart';
import 'package:flutter/material.dart';

class TypeBook extends StatelessWidget {
  final String typeBook;
  final bool isSelected;

  TypeBook({
    required this.typeBook,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            width: 79,
            height: 41,
            margin: EdgeInsets.only(right: 23),
            decoration: BoxDecoration(
              color: kGreenColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                typeBook,
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(right: 23),
            child: Text(
              typeBook,
              style: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
          );
  }
}
