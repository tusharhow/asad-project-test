import 'package:asad_sirs_test_project/constants.dart';
import 'package:asad_sirs_test_project/re_usable_components/circle_shape_component.dart';
import 'package:asad_sirs_test_project/re_usable_components/components/list_view_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isDateClicked = false;
Clip clip = Clip.none;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDefaultPrimaryColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: 900,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 6000,
                ),
                CircleShapeComponent(
                  topPosition: 100,
                  rightPosition: 0,
                  height: 250,
                  width: 250,
                ),
                CircleShapeComponent(
                  topPosition: 80,
                  rightPosition: 0,
                  height: 300,
                  width: 300,
                ),
                CircleShapeComponent(
                  topPosition: 60,
                  rightPosition: 0,
                  height: 350,
                  width: 350,
                ),
                Positioned(
                  top: kDefaultPadding + 10,
                  left: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: kDefaultSeconderyColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/icons/mul.png'),
                              height: 14,
                              width: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '21',
                          style: GoogleFonts.poppins(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wednesday',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              'Jan 2020',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kDefaultSeconderyColor.withOpacity(0.66),
                          ),
                          child: Center(
                            child: Text(
                              'Today',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff158059),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  right: 20,
                  top: 130,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.20,
                        height: 90,
                        decoration: BoxDecoration(
                          color: kDefaultSeconderyColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          clipBehavior: clip,
                          children: [
                            Positioned(
                              bottom: 0,
                              top: 5,
                              right: -10,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(Icons.keyboard_arrow_right),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              top: 5,
                              right: 310,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(Icons.keyboard_arrow_left),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DateFormates(
                                    day: 'S',
                                    date: '18',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DateFormates(
                                    day: 'M',
                                    date: '19',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DateFormates(
                                    day: 'T',
                                    date: '20',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DateFormates(
                                    day: 'W',
                                    date: '21',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DateFormates(
                                    day: 'T',
                                    date: '22',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DateFormates(
                                    day: 'F',
                                    date: '22',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 30,
                  bottom: 610,
                  child: Text(
                    'Time',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  bottom: 170,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '9:40',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'am',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            '1:15',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'pm',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            '4:10',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'pm',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 450,
                        width: 3,
                        color: Colors.white10,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          ListViewCard(
                            firstBtnText: 'Completed',
                            label: 'Cloud Architect',
                            time: '9:40 am',
                            firstLineLabel: 'SME:',
                            firstLineText: 'John Hensen',
                            secondLineLabel: 'Candidate:',
                            secondLineText: 'Mark Smith',
                            thirdLineLabel: 'Client:',
                            thirdLineText: 'Facebook',
                            firstBtnColor: Colors.green,
                            secondBtnColor: Colors.amber,
                            secondBtnText: 'Feedback',
                            containerColor: Color(0xff158059),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ListViewCard(
                            firstBtnText: 'Completed',
                            label: 'Software Eng.',
                            time: '8:40 am',
                            firstLineLabel: 'SME:',
                            firstLineText: 'Scala Anderson',
                            secondLineLabel: 'Candidate:',
                            secondLineText: 'Mark Smith',
                            thirdLineLabel: 'Client:',
                            thirdLineText: 'Facebook',
                            firstBtnColor: Colors.deepOrange,
                            secondBtnColor: Colors.indigo,
                            secondBtnText: 'Not started',
                            containerColor: kDefaultSeconderyColor,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ListViewCard(
                            firstBtnText: 'Completed',
                            label: 'Geography Expert',
                            time: '8:40 am',
                            firstLineLabel: 'SME:',
                            firstLineText: 'Scala Anderson',
                            secondLineLabel: 'Candidate:',
                            secondLineText: 'Mark Smith',
                            thirdLineLabel: 'Client:',
                            thirdLineText: 'Facebook',
                            firstBtnColor: Colors.green,
                            secondBtnColor: Colors.amber,
                            secondBtnText: 'Not started',
                            containerColor: kDefaultSeconderyColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 50,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 55,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Color(0xff158059),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              'Schedule',
                              style: GoogleFonts.poppins(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DateFormates extends StatefulWidget {
  DateFormates({
    Key? key,
    required this.day,
    required this.date,
  }) : super(key: key);

  final day;
  final date;

  @override
  State<DateFormates> createState() => _DateFormatesState();
}

class _DateFormatesState extends State<DateFormates> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isDateClicked) {
          setState(() {
            isDateClicked = false;
          });
        } else {
          setState(() {
            isDateClicked = true;
          });
        }
      },
      child: Container(
        height: 60,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              isDateClicked == false ? Colors.transparent : Color(0xff158059),
        ),
        child: Column(
          children: [
            Text(
              widget.day,
              style: GoogleFonts.poppins(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              widget.date,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
