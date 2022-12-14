import 'package:chat/trade_stuff.dart';
import 'package:chat/trade_talent.dart';
import 'package:chat/widget/more.dart';
import 'package:chat/widget/navigationbar.dart';
import 'package:chat/widget/trade_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TradeMain extends StatelessWidget {
  const TradeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: statusBarHeight)),
            Stack(
              children: [
                SvgPicture.asset("assets/svg/gnb.svg", width: sizeWidth),
                Positioned(
                  left: sizeWidth * 0.0946,
                  top: sizeHeight * 0.0197,
                  child: Text("거래 게시판",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          color: Color(0xff000000),
                          fontSize: sizeWidth * 0.048,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            SizedBox(
              height: sizeHeight * 0.024,
            ),
            Row(
              children: [
                SizedBox(width: sizeWidth * 0.064),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      sizeWidth * 0.064, sizeHeight * 0.0172, 0, 0),
                  child: SizedBox(
                      width: sizeWidth * 0.546,
                      height: sizeHeight * 0.0221,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "검색하시오",
                          hintStyle: TextStyle(
                              fontFamily: "KoreanFont",
                              color: Color(0xff767676),
                              fontSize: sizeWidth * 0.032,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                ),
                SizedBox(width: sizeWidth * 0.053),
                SvgPicture.asset("assets/svg/search2.svg")
              ],
            ),
            SizedBox(height: sizeHeight * 0.017),
            Row(
              children: [
                SizedBox(
                  width: sizeWidth * 0.0986,
                ),
                SizedBox(
                  width: sizeWidth * 0.1614,
                  height: sizeHeight * 0.0284,
                  child: Text("물품거래",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          fontSize: sizeWidth * 0.0426,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            SizedBox(
              height: sizeHeight * 0.035,
            ),
            TradeBox(),
            SizedBox(height: sizeHeight * 0.024),
            GestureDetector(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TradeSf()));
            },
                child: More()),
            SizedBox(height: sizeHeight * 0.032),
            Row(
              children: [
                SizedBox(
                  width: sizeWidth * 0.0986,
                ),
                SizedBox(
                  width: sizeWidth * 0.1614,
                  height: sizeHeight * 0.0284,
                  child: Text("재능거래",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          fontSize: sizeWidth * 0.0426,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            SizedBox(height: sizeHeight * 0.035),
            TradeBox(),
            SizedBox(height: sizeHeight * 0.024),
            GestureDetector(
                onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TradeTal()));
            },
                child: More()),
          ],
        ),
      ),
      bottomNavigationBar: NaviBar(),
    );
  }
}
