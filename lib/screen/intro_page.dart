// ignore_for_file: body_might_complete_normally_nullable

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flypto/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../theme.dart';

////////////////////////////////////////
///   @hustlewithshujaat on Instagram
///
///   https://github.com/shujaatsunasra
///////////////////////////////////////

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: xBack,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 64, right: 16),
            child: Column(children: [
              FadeInDown(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/NFT_4.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              FadeInLeft(
                  child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Create Your ',
                      style: TextStyle(
                        color: txtCol,
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'Cryptocurrency',
                      style: TextStyle(
                        color: txtCol,
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' Wallet App',
                      style: TextStyle(
                        color: txtCol,
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )),
              const SizedBox(
                height: 20,
              ),
              FadeInLeft(
                  child: const Text(
                'Grow your portfolio by receiving rewards up to 15.5% on your crypto assets',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )),
              const SizedBox(
                height: 100,
              ),
            ]),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    elevation: 0,
                    borderRadius: 18,
                    sliderRotate: false,
                    outerColor: Colors.grey[900],
                    innerColor: xBack,
                    key: key,
                    sliderButtonIcon: const Icon(CupertinoIcons.forward),
                    onSubmit: () {
                      Future.delayed(
                        const Duration(milliseconds: 400),
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                      );
                    },
                    child: FadeInRight(
                        child: const Text(
                      'Swipe to get started',
                      style: TextStyle(color: xBack, fontSize: 17),
                    )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
