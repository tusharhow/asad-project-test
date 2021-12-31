import 'package:asad_sirs_test_project/constants.dart';
import 'package:asad_sirs_test_project/re_usable_components/components/user_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    Key? key,
    required this.label,
    required this.firstBtnText,
    required this.firstBtnColor,
    required this.secondBtnText,
    required this.secondBtnColor,
    required this.firstLineLabel,
    required this.secondLineLabel,
    required this.thirdLineLabel,
    required this.firstLineText,
    required this.secondLineText,
    required this.thirdLineText,
    required this.time,
    required this.containerColor,
  }) : super(key: key);

  final label;
  final firstBtnText;
  final firstBtnColor;
  final secondBtnText;
  final secondBtnColor;
  final firstLineLabel;
  final secondLineLabel;
  final thirdLineLabel;
  final firstLineText;
  final secondLineText;
  final thirdLineText;
  final time;
  final containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 260,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Text(
                    label,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8CF391),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      color: firstBtnColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        firstBtnText,
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            UserDetails(
              title: firstLineLabel,
              description: firstLineText,
            ),
            UserDetails(
              title: secondLineLabel,
              description: secondLineText,
            ),
            UserDetails(
              title: thirdLineLabel,
              description: thirdLineText,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/icons/clock.png'),
                  height: 15,
                  width: 15,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Start time: ',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      color: secondBtnColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        secondBtnText,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
