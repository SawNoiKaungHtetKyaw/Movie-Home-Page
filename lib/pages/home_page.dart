import 'package:flutter/material.dart';
import 'package:movie_home/constant/colors.dart';
import 'package:movie_home/constant/dimes.dart';
import 'package:movie_home/constant/strings.dart';
import 'package:movie_home/widgets/easy_text.dart';
import 'package:movie_home/widgets/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              kIBg,
              fit: BoxFit.cover,
            )),
            SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: kSP5x,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: kContainer50x,
                          height: kContainer50x,
                          child: Image.asset(kIMenuIcon, color: kWhite)),
                      SizedBox(
                          width: kContainer80x, child: Image.asset(kIStudio)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: kWhite,
                            size: kIconSize28x,
                          ))
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 180,
              right: 10,
              child: SizedBox(
                width: kContainer150x,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EasyText(
                      text: kMovieName,
                      fontSize: kFontSize28x,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: kSP10x),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EasyText(
                          text: kMovieTime,
                          color: kBlack,
                          fontSize: kFontSize12x,
                        ),
                        EasyText(
                            text: kVotes, color: kBlack, fontSize: kFontSize12x)
                      ],
                    ),
                    SizedBox(height: kSP10x),
                    Icon(
                      Icons.play_circle_outline,
                      size: kIconSize40x,
                      color: kWhite,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: kContainer200x,
                margin:
                    EdgeInsets.symmetric(horizontal: kSP5x, vertical: kSP25x),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EasyText(
                      text: kUniverse,
                      fontSize: kFontSize18x,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: kSP10x,
                    ),
                    Row(
                      children: [
                        MovieCard(image: kIPoster1),
                        MovieCard(image: kIPoster2),
                        MovieCard(image: kIPoster3),
                        MovieCard(image: kIPoster4),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
