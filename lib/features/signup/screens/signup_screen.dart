// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uniride/features/signup/presentation/widget/build_drive.dart';
import 'package:uniride/features/signup/presentation/widget/buildstudent.dart';
import 'package:uniride/features/signup/presentation/widget/build_tab.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isDriver = false;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildTextField('');
  }

  Widget buildTextField(String hint, {bool isPassword = false}) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: const Color(0xFF757575),
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 1.25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // التابات
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        BuildTab('Student/Doctor', !isDriver, () {
                          setState(() => isDriver = false);
                        }),
                        BuildTab('Driver', isDriver, () {
                          setState(() => isDriver = true);
                        }),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  if (!isDriver) buildStudentForm() else _buildDriverForm(),

                  const SizedBox(height: 24),

                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF9800),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.56,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Column(
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Login Now',
                              style: TextStyle(
                                color: Color(0xFFCF8307),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            '|',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0x4C757474),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1.43,
                            ),
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                color: Color(0xFFCF8307),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            RichText(
              text: const TextSpan(
                text: 'Powered by ',
                style: TextStyle(color: Color(0xFF757575), fontSize: 12),
                children: [
                  TextSpan(
                    text: 'PTUK Engineering',
                    style: TextStyle(
                      color: Color(0xFFCF8307),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget buildStudentForm() => const StudentForm();

  Widget _buildDriverForm() => const DriveForm();
}
