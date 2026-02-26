import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:uniride/features/signup_pages/presentation/widget/input_field.dart';
import 'package:uniride/features/signup_pages/presentation/widget/section_title.dart';

class DriveForm extends StatefulWidget {
  const DriveForm({super.key});

  @override
  State<DriveForm> createState() => _DriveFormState();
}

class _DriveFormState extends State<DriveForm> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return _buildDriverForm();
  }

  Widget _buildDriverForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Personal Information'),
        const SizedBox(height: 12),
        const InputField(
          icon: Icons.person_outline,
          label: 'Full Name',
          hint: "Dua'a Osama Khalaf",
        ),
        const SizedBox(height: 16),
        const InputField(
          icon: Icons.email_outlined,
          label: 'Email Address',
          hint: 'dua.osama@example.com',
        ),
        const SizedBox(height: 16),
        const InputField(
          icon: Icons.phone_outlined,
          label: 'Phone Number',
          hint: '059XXXXXXX',
        ),
        const SizedBox(height: 16),
       InputField(
  icon: Icons.lock_outline,
  label: 'Password',
  hint: '••••••••',
  helperText: 'Minimum 8 characters',
  obscure: _obscurePassword,
  suffixIcon: IconButton(
    icon: Icon(
      _obscurePassword ? Icons.visibility_off : Icons.visibility,
    ),
    onPressed: () {
      setState(() {
        _obscurePassword = !_obscurePassword;
      });
    },
  ),
),
        const SizedBox(height: 16),
        const InputField(
          icon: Icons.lock_outline,
          label: 'Confirm Password',
          hint: '••••••••',
          obscure: true,
        ),
        const SizedBox(height: 20),
        const SectionTitle('Driver Information'),
        const SizedBox(height: 12),
        const InputField(
          icon: Icons.badge_outlined,
          label: 'License Number',
          hint: '123456789',
        ),
        const SizedBox(height: 16),
        const InputField(
          icon: Icons.directions_car_outlined,
          label: 'Vehicle Type',
          hint: 'Bus',
        ),
        const SizedBox(height: 16),
        const InputField(
          icon: Icons.confirmation_number_outlined,
          label: 'Plate Number',
          hint: '1234567778',
        ),
        const SizedBox(height: 16),
        const InputField(
          icon: Icons.event_seat_outlined,
          label: 'Number of Seats',
          hint: '4',
        ),
        const SizedBox(height: 16),
        // Upload Document
        SizedBox(
          width: double.infinity,
          height: 54,
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              dashPattern: [10, 5],
              strokeWidth: 2,
              radius: Radius.circular(16),
              color: const Color(0xFF757575),
              padding: EdgeInsets.all(16),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.file_upload_outlined,
                    size: 20,
                    color: Color(0xFF757575),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Upload Document',
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        // Checkbox
        Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                value: false,
                onChanged: (_) {},
                activeColor: const Color(0xFFFF9800),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'I agree to the Terms and Privacy Policy',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
