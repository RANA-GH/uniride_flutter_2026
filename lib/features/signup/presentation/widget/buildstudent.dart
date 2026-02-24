import 'package:flutter/material.dart';
import 'package:uniride/features/signup/presentation/widget/input_field.dart';

class StudentForm extends StatelessWidget {
  const StudentForm({super.key});

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
          helperText: 'Minimum 8 characters',
          obscure: true,
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
