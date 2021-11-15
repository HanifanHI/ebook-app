import 'package:ebook_app/shared/theme.dart';
import 'package:ebook_app/widgets/recent_book_item.dart';
import 'package:ebook_app/widgets/trending_item.dart';
import 'package:ebook_app/widgets/type_book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * HEADER
    Widget header() {
      return Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.all(30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/user.png'),
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello Sarah,',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Good Morning',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/icon-menu.png',
              width: 18,
              height: 14,
            ),
          ],
        ),
      );
    }

    // * SEARCH
    Widget search() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: kLightGreyColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            border: InputBorder.none,
            hintText: "Find Your Favorite Book",
            hintStyle: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
            suffixIcon: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kGreenColor,
              ),
              child: Icon(
                Icons.search,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
      );
    }

    // * RECENT BOOK
    Widget recentBook() {
      return Container(
        padding: EdgeInsets.only(left: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Book',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecentBookItem(
                    image: 'assets/image-1.png',
                    title: 'The Magic',
                  ),
                  RecentBookItem(
                    image: 'assets/image-2.png',
                    title: 'The Martian Andy Weir',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    // * TYPE BOOK
    Widget typeBook() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
        ),
        height: 41,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TypeBook(
                typeBook: 'All Books',
                isSelected: true,
              ),
              TypeBook(
                typeBook: 'Comic',
                isSelected: false,
              ),
              TypeBook(
                typeBook: 'Novel',
                isSelected: false,
              ),
              TypeBook(
                typeBook: 'Manga',
                isSelected: false,
              ),
              TypeBook(
                typeBook: 'Fairy Tales',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    // * TRENDING NOW
    Widget trendingNow() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Now',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Trending(
                    imageUrl: 'assets/image-3.png',
                    title: 'Enchantment',
                    subTitle: 'Guy Kawasaki',
                  ),
                  Trending(
                    imageUrl: 'assets/image-4.png',
                    title: 'Lore',
                    subTitle: 'Aaron Mahnke',
                  ),
                  Trending(
                    imageUrl: 'assets/image-5.png',
                    title: 'Who Moved My Cheese',
                    subTitle: 'Spencer Johnson, M.D',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 436, bottom: 100),
                    child: Column(
                      children: [
                        typeBook(),
                        trendingNow(),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 406,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        header(),
                        search(),
                        recentBook(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
