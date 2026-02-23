import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 430,
          height: 1055,
          child: Stack(
            children: [
              Positioned(
                left: 24,
                top: 32,
                child: Container(
                  width: 382,
                  height: 943,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x66E0DFDF),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 3,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 2,
                        offset: Offset(0, 1),
                        spreadRadius: -1,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 25,
                        top: 25,
                        child: Container(
                          width: 332,
                          height: 58,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE0E0E0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4,
                                top: 4,
                                child: Container(
                                  width: 163,
                                  height: 50,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: const Color(0x7FE0DFDF),
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 3,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                        spreadRadius: -1,
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 58.34,
                                        top: 17,
                                        child: Container(
                                          width: 47,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -22.34,
                                                top: 1,
                                                child: Text(
                                                  'Student/Doctor',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: const Color(
                                                      0xFFCF8307,
                                                    ),
                                                    fontSize: 12,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.33,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 167,
                                top: 4,
                                child: Container(
                                  width: 161,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 63,
                                        top: 17,
                                        child: Container(
                                          width: 36,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -1,
                                                top: 1,
                                                child: SizedBox(
                                                  width: 39,
                                                  height: 15,
                                                  child: Text(
                                                    'Driver',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(
                                                        0xFF757575,
                                                      ),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.33,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 115,
                        child: Container(
                          width: 332,
                          height: 639,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 332,
                                  height: 97,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 332,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 4,
                                                top: 0,
                                                child: Container(
                                                  width: 58,
                                                  height: 16,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -1.50,
                                                        top: 0.50,
                                                        child: SizedBox(
                                                          width: 61,
                                                          height: 15,
                                                          child: Text(
                                                            'Full Name',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.33,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 270.29,
                                                top: 0,
                                                child: Container(
                                                  width: 58,
                                                  height: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 82,
                                        child: Container(
                                          width: 332,
                                          height: 15,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 3,
                                                top: 1.50,
                                                child: SizedBox(
                                                  width: 253,
                                                  height: 12,
                                                  child: Text(
                                                    'As written in university records',
                                                    style: TextStyle(
                                                      color: const Color(
                                                        0xFF757575,
                                                      ),
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.50,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 22,
                                        child: Container(
                                          width: 332,
                                          height: 54,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 332,
                                                  height: 54,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        color: const Color(
                                                          0xFFE0E0E0,
                                                        ),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 48,
                                                        top: 15,
                                                        child: SizedBox(
                                                          width: 268,
                                                          height: 24,
                                                          child: Text(
                                                            'Dua\'a Osama Khalaf',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 16,
                                                top: 17,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 121,
                                child: Container(
                                  width: 332,
                                  height: 97,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 332,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 4,
                                                top: 0,
                                                child: Container(
                                                  width: 76,
                                                  height: 16,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -1.50,
                                                        top: 0.50,
                                                        child: SizedBox(
                                                          width: 79,
                                                          height: 15,
                                                          child: Text(
                                                            'University ID',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.33,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 260.81,
                                                top: 0,
                                                child: Container(
                                                  width: 68,
                                                  height: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 82,
                                        child: Container(
                                          width: 332,
                                          height: 15,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 3,
                                                top: 1.50,
                                                child: SizedBox(
                                                  width: 271,
                                                  height: 12,
                                                  child: Text(
                                                    'Enter your 9-digit PTUK ID ',
                                                    style: TextStyle(
                                                      color: const Color(
                                                        0xFF757575,
                                                      ),
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.50,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 22,
                                        child: Container(
                                          width: 332,
                                          height: 54,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 332,
                                                  height: 54,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        color: const Color(
                                                          0xFFE0E0E0,
                                                        ),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 48,
                                                        top: 15,
                                                        child: SizedBox(
                                                          width: 268,
                                                          height: 24,
                                                          child: Text(
                                                            '202110542',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 16,
                                                top: 17,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 242,
                                child: Container(
                                  width: 332,
                                  height: 76,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 332,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 4,
                                                top: 0,
                                                child: Container(
                                                  width: 84,
                                                  height: 16,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -1.50,
                                                        top: 0.50,
                                                        child: SizedBox(
                                                          width: 87,
                                                          height: 15,
                                                          child: Text(
                                                            'Email Address',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.33,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 246.55,
                                                top: 0,
                                                child: Container(
                                                  width: 82,
                                                  height: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 22,
                                        child: Container(
                                          width: 332,
                                          height: 54,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 332,
                                                  height: 54,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        color: const Color(
                                                          0xFFE0E0E0,
                                                        ),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 48,
                                                        top: 15,
                                                        child: SizedBox(
                                                          width: 268,
                                                          height: 24,
                                                          child: Text(
                                                            'dua.osama@example.com',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 16,
                                                top: 17,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 342,
                                child: Container(
                                  width: 332,
                                  height: 76,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 332,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 4,
                                                top: 0,
                                                child: Container(
                                                  width: 88,
                                                  height: 16,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -1.50,
                                                        top: 0.50,
                                                        child: SizedBox(
                                                          width: 91,
                                                          height: 15,
                                                          child: Text(
                                                            'Phone Number',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.33,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 278.07,
                                                top: 0,
                                                child: Container(
                                                  width: 50,
                                                  height: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 22,
                                        child: Container(
                                          width: 332,
                                          height: 54,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 332,
                                                  height: 54,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        color: const Color(
                                                          0xFFE0E0E0,
                                                        ),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 48,
                                                        top: 15,
                                                        child: SizedBox(
                                                          width: 268,
                                                          height: 24,
                                                          child: Text(
                                                            '059XXXXXXX',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 16,
                                                top: 17,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 442,
                                child: Container(
                                  width: 332,
                                  height: 97,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 332,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 4,
                                                top: 0,
                                                child: Container(
                                                  width: 58,
                                                  height: 16,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -1.50,
                                                        top: 0.50,
                                                        child: SizedBox(
                                                          width: 61,
                                                          height: 15,
                                                          child: Text(
                                                            'Password',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.33,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 279.09,
                                                top: 0,
                                                child: Container(
                                                  width: 49,
                                                  height: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 82,
                                        child: Container(
                                          width: 332,
                                          height: 15,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 3,
                                                top: 1.50,
                                                child: SizedBox(
                                                  width: 182,
                                                  height: 12,
                                                  child: Text(
                                                    'Minimum 8 characters ',
                                                    style: TextStyle(
                                                      color: const Color(
                                                        0xFF757575,
                                                      ),
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.50,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 22,
                                        child: Container(
                                          width: 332,
                                          height: 54,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 332,
                                                  height: 54,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        color: const Color(
                                                          0xFFE0E0E0,
                                                        ),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 48,
                                                        top: 15,
                                                        child: SizedBox(
                                                          width: 236,
                                                          height: 24,
                                                          child: Text(
                                                            '••••••••',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 16,
                                                top: 17,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(),
                                                ),
                                              ),
                                              Positioned(
                                                left: 296,
                                                top: 17,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 20,
                                                          height: 20,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Stack(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 563,
                                child: Container(
                                  width: 332,
                                  height: 76,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 332,
                                          height: 16,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 4,
                                                top: 0,
                                                child: Container(
                                                  width: 109,
                                                  height: 16,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -1.50,
                                                        top: 0.50,
                                                        child: SizedBox(
                                                          width: 112,
                                                          height: 15,
                                                          child: Text(
                                                            'Confirm Password',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.33,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 251.66,
                                                top: 0,
                                                child: Container(
                                                  width: 77,
                                                  height: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 22,
                                        child: Container(
                                          width: 332,
                                          height: 54,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 332,
                                                  height: 54,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        color: const Color(
                                                          0xFFE0E0E0,
                                                        ),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 48,
                                                        top: 15,
                                                        child: SizedBox(
                                                          width: 268,
                                                          height: 24,
                                                          child: Text(
                                                            '••••••••',
                                                            style: TextStyle(
                                                              color:
                                                                  const Color(
                                                                    0xFF212121,
                                                                  ),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 16,
                                                top: 17,
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 794,
                        child: Container(
                          width: 332,
                          height: 124,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 332,
                                  height: 56,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFCF8307),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 132,
                                        top: 14,
                                        child: Container(
                                          width: 69,
                                          height: 28,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -1.53,
                                                top: 3,
                                                child: SizedBox(
                                                  width: 72,
                                                  height: 22,
                                                  child: Text(
                                                    'Sign Up',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.56,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 180.56,
                                        top: 14,
                                        child: Container(width: 64, height: 28),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 80,
                                child: Container(
                                  width: 332,
                                  height: 44,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 80.53,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 20,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -1,
                                                top: 1.50,
                                                child: SizedBox(
                                                  width: 173,
                                                  height: 17,
                                                  child: Text(
                                                    'Already have an account?',
                                                    style: TextStyle(
                                                      color: const Color(
                                                        0xFF757575,
                                                      ),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 80.84,
                                        top: 24,
                                        child: Container(
                                          width: 171,
                                          height: 20,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 73,
                                                  height: 20,
                                                ),
                                              ),
                                              Positioned(
                                                left: 85.36,
                                                top: 0,
                                                child: Container(
                                                  width: 85,
                                                  height: 20,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: -91.20,
                                                        top: 0,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          spacing: 4,
                                                          children: [
                                                            SizedBox(
                                                              width: 76,
                                                              height: 17,
                                                              child: Text(
                                                                'Login Now',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                  color: const Color(
                                                                    0xFFCF8307,
                                                                  ),
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  height: 1.43,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 6,
                                                              height: 20,
                                                              child: Stack(
                                                                children: [
                                                                  Positioned(
                                                                    left: -1.50,
                                                                    top: 1.50,
                                                                    child: SizedBox(
                                                                      width: 9,
                                                                      height:
                                                                          17,
                                                                      child: Text(
                                                                        '|',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                          color: const Color(
                                                                            0x4C757474,
                                                                          ),
                                                                          fontSize:
                                                                              14,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w700,
                                                                          height:
                                                                              1.43,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Text(
                                                              'تسجيل الدخول',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color:
                                                                    const Color(
                                                                      0xFFCF8307,
                                                                    ),
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.43,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 1007,
                child: Container(
                  width: 382,
                  height: 16,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 100.13,
                        top: 0,
                        child: Container(
                          width: 68,
                          height: 16,
                          child: Stack(
                            children: [
                              Positioned(
                                left: -1,
                                top: 0.50,
                                child: SizedBox(
                                  width: 70,
                                  height: 15,
                                  child: Text(
                                    'Powered by',
                                    style: TextStyle(
                                      color: const Color(0xFF757575),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 175.21,
                        top: 0,
                        child: Container(
                          width: 107,
                          height: 16,
                          child: Stack(
                            children: [
                              Positioned(
                                left: -1.50,
                                top: 0.50,
                                child: SizedBox(
                                  width: 110,
                                  height: 15,
                                  child: Text(
                                    'PTUK Engineering',
                                    style: TextStyle(
                                      color: const Color(0xFFCF8307),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
