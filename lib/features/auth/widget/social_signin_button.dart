import 'package:flutter/material.dart';
import 'package:yours_news/shared/constant/colors.dart';

class SocialLoginButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Full width button
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppColor.colorEDEDED), // Outline color
          padding:
              EdgeInsets.symmetric(vertical: 12.0), // Padding for the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 24.0), // Padding for the icon
                child: Image.asset(
                  imagePath,
                  height: 24.0, // Logo height
                ),
              ),
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
