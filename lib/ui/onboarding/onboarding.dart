import 'package:flutter/material.dart';
import 'package:learn_dart/provider/onBoardingprovider.dart';
import 'package:learn_dart/ui/main_screen.dart';
import 'package:provider/provider.dart';

class OnBoardingUI extends StatelessWidget {
  OnBoardingUI({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingProvider onBoardingProvider = Provider.of<OnBoardingProvider>(context);

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  controller: onBoardingProvider.pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int page) {
                    onBoardingProvider.update();
                  },
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(onBoardingProvider.bgImage[index]),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.4,
            right: MediaQuery.of(context).size.width / 2.2,
            child: Text(onBoardingProvider.des[onBoardingProvider.activePage.toInt()]),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: onBoardingProvider.buildIndicator(),
            ),
          ),
          Positioned(
            bottom: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    onBoardingProvider.pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                    );
                    if(onBoardingProvider.activePage == 2) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    }

                  },
                  child: Text(onBoardingProvider.activePage == 2 ? "Continue": "NEXT"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}
