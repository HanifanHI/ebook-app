import 'package:ebook_app/shared/theme.dart';
import 'package:flutter/material.dart';

class RecentBookItem extends StatelessWidget {
  final String image;
  final String title;

  RecentBookItem({
    required this.image,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      height: 150,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: kGreyColor.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 120,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 8,
                ),
                Image.asset(
                  'assets/load.png',
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '50% Completed',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
