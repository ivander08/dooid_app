import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBalanceVisible = false;
  bool isSpentTodayVisible = false;

  void toggleBalanceVisibility() {
    setState(() {
      isBalanceVisible = !isBalanceVisible;
    });
  }

  void toggleSpentTodayVisibility() {
    setState(() {
      isSpentTodayVisible = !isSpentTodayVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/images/home/nair_guy.jpeg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hello, ',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Kevin!',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 6),
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.grey.shade400,
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            'assets/images/home/verified.png',
                            height: 10,
                            width: 10,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Welcome Back!',
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Stack(
                  children: [
                    Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      child: Center(
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.grey.shade500,
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            'assets/images/home/bell.png',
                            height: 16,
                            width: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/home/Card.png',
                  width: 385,
                ),
                Positioned(
                  top: 50,
                  left: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'your balance',
                        style: GoogleFonts.montserrat(
                          color: Color(0xFFBFBFBF),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            'RP',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          isBalanceVisible
                              ? Text(
                                  '24,365,322.46',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Text(
                                  '********',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: toggleBalanceVisibility,
                            child: Icon(
                              isBalanceVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'spent today',
                        style: GoogleFonts.montserrat(
                          color: Color(0xFFBFBFBF),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            'RP',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFFFF5151),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          isSpentTodayVisible
                              ? Text(
                                  '5,223,447.0',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xFFFF5151),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Text(
                                  '********',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xFFFF5151),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: toggleSpentTodayVisibility,
                            child: Icon(
                              isSpentTodayVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
