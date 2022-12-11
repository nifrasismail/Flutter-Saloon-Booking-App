import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saloon_booking_app/constants.dart';
import 'package:saloon_booking_app/models/service.dart';
import 'package:saloon_booking_app/models/stylist.dart';
import 'package:saloon_booking_app/widgets/service_item.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.stylist});

  final Stylist stylist;

  @override
  Widget build(BuildContext context) {
    final serviceList = <Service>[
      Service('Men\'s Hair Cut', '45 Min', '30'),
      Service('Women\'s Hair Cut', '60 Min', '50'),
      Service('Color & Blow Dry', '90 Min', '75'),
      Service('Oil Treatment', '30 Min', '20'),
    ];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 305,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
            child: InkWell(
              onTap: () => context.pop(),
              child: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: SvgPicture.asset('assets/icons/arrow-left.svg',
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 232),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 167.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFF0EB),
                        borderRadius: BorderRadius.all(
                          Radius.circular(defaultPadding / 2),
                        ),
                      ),
                      width: 120,
                      height: 160,
                      child: Image.asset("assets/images/${stylist.image}",
                          fit: BoxFit.fill),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 75.0,
                        ),
                        Text(
                          stylist.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          stylist.salon,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: textSecondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 3.0,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/star.svg",
                                  color: Color(0xFFFCA919),
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 7.0,
                            ),
                            Text(
                              stylist.rating,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFCA919),
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            const Text(
                              '(56)',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                color: textSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Service List',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: textColor,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: serviceList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: defaultPadding),
                      child: ServiceListItem(
                        serviceName: serviceList[index].serviceName,
                        time: serviceList[index].time,
                        price: serviceList[index].price,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
