import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:on_property/screens/signup_with_options.dart';
import 'package:on_property/utils/app_assets.dart';
import 'package:on_property/utils/colorscheme.dart';
import 'package:on_property/widgets/introduction_page_widget.dart';
import 'package:sizer/sizer.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  late int selectedPage;
  late final PageController _pageController;
  bool rememberMe = false;
  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage.toInt());
    super.initState();
  }

  final pageCount = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (page) {
                setState(() {
                  selectedPage = page;
                });
              },
              children: [
                IndroductionPage(
                  imagepath: AppAssets.onbordingImage1,
                  title: "Search Advance Filter",
                  description:
                      "Discover your property with advance filter like price, distance and calendar",
                ),
                IndroductionPage(
                  imagepath: AppAssets.onbordingImage2,
                  title: "Find And Post Without Broker",
                  description:
                      "Get your property directly with no broker investment. Post requirements in few seconds.",
                ),
                IndroductionPage(
                  imagepath: AppAssets.onbordingImage3,
                  title: "24 Hour Support Available",
                  description:
                      "From Scheduling to Invoicing. All your rental process gathered in one place.",
                ),
              ]),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DotsIndicator(
                    dotsCount: pageCount,
                    position: selectedPage.toDouble(),
                    decorator: const DotsDecorator(
                      size: Size.square(11.0),
                      color: Colors.grey, // Inactive color
                      activeColor: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: whitecolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                         SignUpWithOptions()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            textStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: whitecolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                          onPressed: () {
                            if (selectedPage == 2) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignUpWithOptions()));
                            }
                            _pageController.nextPage(
                                duration: Duration(microseconds: 1000),
                                curve: Curves.decelerate);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            textStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
