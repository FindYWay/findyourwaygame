import 'package:flutter/material.dart';
import 'quiz_home_screen.dart';

class QuizStartScreen extends StatefulWidget {
  const QuizStartScreen({super.key});

  @override
  State<QuizStartScreen> createState() => _QuizStartScreenState();
}

class _QuizStartScreenState extends State<QuizStartScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    
    // Initialize animation controller
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    
    // Create fade animation
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    
    // Start animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFEAF4FF), Colors.white],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'Find your way!',
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A5EB0),
                      letterSpacing: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ScaleTransition(
                    scale: Tween<double>(begin: 0.95, end: 1.0).animate(
                      CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
                    ),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Image.asset(
                        'assets/logo/Aiesec_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'in roma tre',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Text(
                    'Powered by AIESEC Roma Tre',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.95, end: 1.0).animate(
              CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const QuizHomeScreen()),
                  );
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('START THE QUIZ'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A5EB0),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}