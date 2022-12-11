import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:saloon_booking_app/constants.dart';
import 'package:saloon_booking_app/models/stylist.dart';
import 'package:saloon_booking_app/theme.dart';
import 'package:saloon_booking_app/widgets/hair_stylist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stylists = <Stylist>[
      Stylist('Cameron Jones', 'Super Cut Salon', '4.89', 'man-0.png'),
      Stylist('Max Robertson', 'Rosano Ferrite Salon', '4.89', 'man-1.png'),
      Stylist('Bath Watson', 'Navil Hair & Beauty', '4.7', 'man-2.png'),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
        ),
        body: SafeArea(
          child: Container(
            color: primaryColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                    bottom: defaultPadding,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/arrow-left.svg',
                          fit: BoxFit.fill),
                      const Spacer(),
                      SvgPicture.asset('assets/icons/search.svg',
                          fit: BoxFit.fill),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding * 1.25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hair Stylist',
                            style: headingTextStyle,
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          Expanded(
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: stylists.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(
                                    bottom: defaultPadding),
                                child: HairStylist(
                                  stylist: stylists[index],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
