import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.
enum ButtonTypes{
  primary, 
  secondary,
  disabled
}

enum IconsPosition {
  left,
  right,
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 10,
              children: [
                CustomButton(
                  label: 'Submit',
                  icon: Icons.check,
                ),
                CustomButton(
                  label: 'Time', 
                  icon: Icons.access_time,
                  buttonType: ButtonTypes.secondary,
                  iconPosition: IconsPosition.right,
                ),
                CustomButton(
                  label: 'Account', 
                  icon: Icons.account_tree,
                  buttonType: ButtonTypes.disabled,
                  iconPosition: IconsPosition.right,
                ),
              ]
            )
          )
        )
      ), // YOUR CODE
    );
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconsPosition iconPosition;
  final ButtonTypes buttonType;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconsPosition.left,
    this.buttonType = ButtonTypes.primary,
  });

  @override
  Widget build(BuildContext context) {

    final Color backgroundColor = switch (buttonType) {
      ButtonTypes.primary=> Colors.blue,
      ButtonTypes.secondary => Colors.green,
      ButtonTypes.disabled => Colors.grey,
    };

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPosition == IconsPosition.left)
              Icon(icon, color: Colors.grey),
                Text(
                label,
                style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 18,
                ),
              ),
    
           if(iconPosition == IconsPosition.right)
              Icon(icon, color: Colors.grey),
          ],
        )
      ),
    );
  }
}

