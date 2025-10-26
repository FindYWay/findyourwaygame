import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class QuizHomeScreen extends StatefulWidget {
  const QuizHomeScreen({super.key});

  @override
  State<QuizHomeScreen> createState() => _QuizHomeScreenState();
}

class _QuizHomeScreenState extends State<QuizHomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEAF4FF), Colors.white],
          ),
        ),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fade,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    'Find your way!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A5EB0),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Sei curioso di vivere un’esperienza che unisca crescita personale, impatto sociale e scoperta del mondo? AIESEC Roma Tre offre opportunità di volontariato internazionale per giovani universitari e neolaureati.',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Questo breve test ha l’obiettivo di capire i tuoi interessi e motivazioni, così da orientarti verso l’esperienza più adatta a te. I progetti sono legati agli Obiettivi di Sviluppo Sostenibile (SDGs).',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '“Viaggiare non è mai solo spostarsi: è scoprire se stessi attraverso l’incontro con gli altri.”',
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.black87),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const QuizScreen()),
                        );
                      },
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text('Proseguiamo'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A5EB0),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}