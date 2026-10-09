import 'package:flutter/material.dart';

class PatientRegistrationScreen extends StatelessWidget {
  const PatientRegistrationScreen({super.key});

  static const Color primaryBlue = Color(0xFF0088CE);
  static const Color darkBlue = Color(0xFF003B71);
  static const Color borderBlue = Color(0xFFCCE8FA);
  static const Color green = Color(0xFF00A889);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F7),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color(0xFFF0FCFF),
                Color(0xFFE0F7FC),
              ],
            ),
          ),
          child: Column(
            children: [
              // Header
              Container(
                height: 58,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF168DFF),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: darkBlue,
                      ),
                    ),

                    const Spacer(),

                    const Icon(
                      Icons.eco,
                      color: green,
                      size: 25,
                    ),

                    const SizedBox(width: 5),

                    const Text(
                      'Healix',
                      style: TextStyle(
                        color: darkBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Spacer(),

                    const SizedBox(width: 48),
                  ],
                ),
              ),

              // Main Content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      // Title
                      const Text(
                        'Patient Registration',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: darkBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: 5),

                      const Text(
                        'Create your patient account',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF58778D),
                        ),
                      ),

                      const SizedBox(height: 18),

                      // Profile Picture
                      Container(
                        width: 58,
                        height: 58,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFD5F7F6),
                        ),
                        child: const Icon(
                          Icons.person_outline,
                          color: primaryBlue,
                          size: 32,
                        ),
                      ),

                      const SizedBox(height: 6),

                      // Add Photo Button
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Add Photo',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      // Full Name
                      const RegistrationField(
                        hint: 'Full Name',
                        icon: Icons.person_outline,
                      ),

                      const SizedBox(height: 9),

                      // Email
                      const RegistrationField(
                        hint: 'Email Address',
                        icon: Icons.mail_outline,
                      ),

                      const SizedBox(height: 9),

                      // Mobile Number
                      const RegistrationField(
                        hint: 'UAE Mobile Number',
                        icon: Icons.phone_outlined,
                      ),

                      const SizedBox(height: 9),

                      // Doctor ID
                      const RegistrationField(
                        hint: "The doctor's ID",
                        icon: Icons.calendar_month_outlined,
                      ),

                      const SizedBox(height: 18),

                      // Password
                      const RegistrationField(
                        hint: 'Password',
                        icon: Icons.lock_outline,
                        isPassword: true,
                      ),

                      const SizedBox(height: 18),

                      // Create Account Button
                      Container(
                        width: double.infinity,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF078ACB),
                              Color(0xFF00A889),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: primaryBlue.withValues(
                                alpha: 0.15,
                              ),
                              blurRadius: 12,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create Account',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 12),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 17,
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
    );
  }
}

// Reusable Input Field
class RegistrationField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;

  const RegistrationField({
    super.key,
    required this.hint,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xFF648399),
            fontSize: 12,
          ),
          prefixIcon: Icon(
            icon,
            size: 18,
            color: const Color(0xFF0088CE),
          ),
          suffixIcon: isPassword
              ? const Icon(
            Icons.visibility_outlined,
            size: 18,
            color: Color(0xFF648399),
          )
              : null,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          filled: true,
          fillColor: const Color(0xFFF8FCFE),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
              color: Color(0xFFCCE8FA),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
              color: Color(0xFF0088CE),
              width: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}