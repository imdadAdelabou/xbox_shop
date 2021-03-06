import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xbox_shop/components/circle_elem.dart';
import 'package:xbox_shop/components/custom_button.dart';
import 'package:xbox_shop/components/progess_bar.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Icon(
                FontAwesomeIcons.xbox,
                color: Colors.green,
                size: maxHeight * .1,
              ),
              SizedBox(height: 30.0),
              Container(
                height: maxHeight * .4,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  children: [
                    Image.asset(
                      "assets/imgs/manetteXboxLeft-removebg-preview.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/imgs/manetteXboxWhiteFace.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Infinite entertainment.\nInfinite possibilities.",
                style: TextStyle(
                  fontSize: maxWidth * 0.06,
                  letterSpacing: -0.1,
                  fontFamily: "MONTSERRAT",
                  color: Color(0xff494949),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 53.0),
                child: Stack(
                  children: [
                    Row(
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: CircleElem(),
                        ),
                      ),
                    ),
                    ProgressBar(
                      left: currentPage == 0 ? 0 : 35,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(left: maxWidth * .5),
                  child: CustomButton(
                    action: () {},
                    content: Icon(
                      FontAwesomeIcons.arrowRight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
