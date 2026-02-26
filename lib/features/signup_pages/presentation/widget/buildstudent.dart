import 'package:flutter/material.dart';
import 'package:uniride/features/signup_pages/presentation/widget/input_field.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({super.key});

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return _buildStudentForm();
  }

  Widget _buildStudentForm() {
    return Column(
      children: [
        InputField(
          icon: Icons.person_outline,
          label: 'Full Name',
          hint: "Dua'a Osama Khalaf",
        ),
        SizedBox(height: 16),
        InputField(
          icon: Icons.tag,
          label: 'University ID',
          hint: '202110542',
          helperText: 'Enter your 9-digit PTUK ID ',
        ),
        SizedBox(height: 16),
        InputField(
          icon: Icons.email_outlined,
          label: 'Email Address',
          hint: 'dua.osama@example.com',
        ),
        SizedBox(height: 16),
        InputField(
          icon: Icons.phone_outlined,
          label: 'Phone Number',
          hint: '059XXXXXXX',
        ),
        SizedBox(height: 16),
        InputField(
          icon: Icons.lock_outline,
          label: 'Password',
          hint: '••••••••',
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xFF757575),
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
          helperText: 'Minimum 8 characters',
          obscure: _obscurePassword,
        ),
        SizedBox(height: 16),
        InputField(
          icon: Icons.lock_outline,
          label: 'Confirm Password',
          hint: '••••••••',
          obscure: true,
        ),
      ],
    );
  }
}
