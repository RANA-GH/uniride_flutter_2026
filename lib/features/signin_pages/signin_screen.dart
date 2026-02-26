// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _obscurePassword = true;
  bool _rememberMe = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          'Sign In',
          style: TextStyle(
            color: Color(0xFF757575),
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 1.25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Card container
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  // Avatar
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEE7DC).withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 36,
                      color: Color(0xFFE8A317),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Welcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF212121),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.40,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Email field
                  _buildLabel('Email or Phone'),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'dua.osama@example.com',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Color(0xFFE8A317),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Password field
                  _buildLabel('Password'),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: '••••••••',
                      prefixIcon: const Icon(
                        Icons.lock_rounded,
                        color: Color(0xFF757575),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: const Color(0xFF757575),
                        ),
                        onPressed: () => setState(
                          () => _obscurePassword = !_obscurePassword,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: _rememberMe,
                              activeColor: const Color(0xFFCF8307),
                              onChanged: (v) =>
                                  setState(() => _rememberMe = v ?? false),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Remember Me',
                            style: TextStyle(
                              color: const Color(0xFF212121),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1.20,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          /* Navigate to forgot password */
                        },
                        child: Text(
                          'Forgot Password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFFCF8307),
                            fontSize: 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Login button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        /* Handle login */
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFCF8307),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Login',
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

                  // Sign up link
                  Column(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: const Color(0xFF757575),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.43,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              /* Navigate to sign up */
                            },
                            child: SizedBox(
                              width: 91,
                              height: 17,
                              child: Text(
                                'Sign Up Now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFFCF8307),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          SizedBox(
                            width: 9,
                            height: 17,
                            child: Text(
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
                          ),
                          SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              /* Navigate to Arabic sign up */
                            },
                            child: const Text(
                              'تسجيل الدخول',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFFCF8307),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.43,
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

            // Footer
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Powered by',
                  style: TextStyle(
                    color: const Color(0xFF757575),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
                SizedBox(width: 7.08),
                Text(
                  'PTUK Engineering',
                  style: TextStyle(
                    color: const Color(0xFFCF8307),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 1.33,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xFF212121),
          fontSize: 12,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 1.33,
        ),
      ),
    );
  }
}
