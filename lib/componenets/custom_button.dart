import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        backgroundColor: const Color.fromARGB(255, 233, 115, 178),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ), 
      onPressed: isLoading ? null : onPressed, 
      child: isLoading ? 
        const SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2,),
        ) : 
        Text(text, style: const TextStyle(fontWeight: FontWeight.bold),),
    );
  }
}
