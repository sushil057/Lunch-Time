import 'package:flutter/material.dart';
import 'package:my_app/Pages/login_page.dart';
import 'package:my_app/components/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: AppColors.secondarycolor,
          backgroundColor: AppColors.primarycolor,
          title: const Text(
            "Lunch Time",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Logo
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 50),
                child: Image.asset(
                  "assets/images/lunchtime_logo.png",
                  height: 150, // Adjust height as needed
                ),
              ),
              // Welcome Text
              const Text(
                "Welcome",
                style: TextStyle(
                  color: AppColors.primarycolor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Description
              const Text(
                "Your desired food items at your fingertips.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              // Animated Button
              AnimatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Animated Button Widget
class AnimatedButton extends StatefulWidget {
  final VoidCallback onPressed;

  const AnimatedButton({super.key, required this.onPressed});

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: widget.onPressed,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          padding: EdgeInsets.zero,
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.primarycolor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              "Proceed",
              style: TextStyle(
                color: AppColors.secondarycolor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           foregroundColor: AppColors.secondarycolor,
//           backgroundColor: AppColors.primarycolor,
//           title: const Text(
//             "Lunch Time",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: Container(
//           margin: const EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(
//                     bottom: 10, top: 10, right: 60, left: 60),
//                 child: Image.asset(
//                   "assets/images/lunchtime_logo.png",
//                 ),
//               ),
//               const Text(
//                 "Welcome",
//                 style: TextStyle(
//                   color: AppColors.primarycolor,
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 "Your Desired food items in your finger tips",
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 100),
//               Container(
//                 padding: EdgeInsets.zero,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primarycolor,
//                     foregroundColor: AppColors.secondarycolor,
//                   ),
//                   child: const Text("Proceed"),
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => const LoginPage(),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
