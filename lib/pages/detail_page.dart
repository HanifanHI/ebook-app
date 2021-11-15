import 'package:ebook_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * HEADER
    Widget header() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            height: 21,
            margin: EdgeInsets.only(
              top: 30,
              left: 30,
              right: 30,
              bottom: 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icon-left.png',
                    width: 8,
                    height: 14,
                  ),
                ),
                Text(
                  'Book Details',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Image.asset(
                  'assets/icon-share.png',
                  width: 17,
                  height: 18,
                ),
              ],
            ),
          ),

          // * CONTENTs
          Container(
            width: 175,
            height: 267,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/image-3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    }

    // * DETAIL
    Widget detail() {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 418),
            padding: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enchantment',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            'Guy Kawasaki',
                            style: greyTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Free Access',
                      style: greenTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                // * DESCRIPTION
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Enchantment, as defined by bestselling business\nguru Guy Kawasaki, is not about manipulating\npeople. It transforms situations and relationships.',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                // * Detail Book
                Container(
                  height: 60,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 30,
                  ),
                  decoration: BoxDecoration(
                    color: kLightGreyColor,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rating',
                            style: darkGreyTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '4.8',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 1,
                        color: kBlackColor,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Number of pages',
                            style: darkGreyTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '180 Page',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 1,
                        color: kBlackColor,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Language',
                            style: darkGreyTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'ENG',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Read Now',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // * ICON SAVE
          Positioned(
            top: 393,
            right: 30,
            child: Image.asset(
              'assets/icon-save.png',
              width: 50,
              height: 50,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                header(),
                detail(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
