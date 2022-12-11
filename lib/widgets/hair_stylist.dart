import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saloon_booking_app/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:saloon_booking_app/models/stylist.dart';

class HairStylist extends StatelessWidget {
  const HairStylist({
    super.key,
    required this.stylist,
  });

  final Stylist stylist;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFFFF0EB),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 210,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              top: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stylist.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
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
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      stylist.rating,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: textSecondaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onPressed: () => context.push('/detail', extra: stylist),
                  child: const Text('View Profile'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/${stylist.image}",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
