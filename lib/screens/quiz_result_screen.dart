import 'package:flutter/material.dart';
import '../models/finishGameModel.dart';
import 'quiz_start_screen.dart';

class QuizResultScreen extends StatefulWidget {
  final String profileSlug;
  const QuizResultScreen({super.key, required this.profileSlug});

  @override
  State<QuizResultScreen> createState() => _QuizResultScreenState();
}

class _QuizResultScreenState extends State<QuizResultScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  late Animation<double> _scale;

  static const Map<String, String> emojiForProfile = {
    'heartbeat': '🩺',
    'global_classroom': '📚',
    'youth_4_impact': '♻️',
    'raise_your_voice': '✊',
    'equify': '🫂',
    'skill_up': '💻',
    'on_the_map': '🗺️',
    'green_leaders': '🌿',
    'aquatica': '🌊',
    'rooted': '🌱',
    'scale_up': '📈',
    'explorer': '🧭',
    'happy_bus': '👶',
    'fingerprint': '🎨',
    'eco_city': '🏘️',
    'my_self_my_world': '🌐',
  };

  static const Map<String, String> sdgForProfile = {
    'heartbeat': '3.4',
    'global_classroom': '4.6',
    'youth_4_impact': '4.7',
    'raise_your_voice': '5.1',
    'equify': '10.2',
    'skill_up': '8.6',
    'on_the_map': '8.9',
    'green_leaders': '13.3',
    'aquatica': '14.1',
    'rooted': '15.5',
    'scale_up': '17.17',
    'explorer': '4.1',
    'happy_bus': '4.2',
    'fingerprint': '4.4',
    'eco_city': '12.8',
    'my_self_my_world': '17.16',
  };

  FinishGameModel _findProfile(String slug) {
    return allFinishGame.firstWhere(
      (p) => p.profile == slug,
      orElse: () => allFinishGame.first,
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _scale = Tween<double>(begin: 0.95, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profile = _findProfile(widget.profileSlug);
    final emoji = emojiForProfile[profile.profile] ?? '✨';
    final sdg = sdgForProfile[profile.profile] ?? '—';

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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  ScaleTransition(
                    scale: _scale,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0x110A5EB0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            emoji,
                            style: const TextStyle(fontSize: 48),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            profile.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A5EB0),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'SDG: $sdg',
                            style: const TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            profile.description,
                            style: const TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Cosa farai?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A5EB0),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            profile.whatYouDo,
                            style: const TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0x110A5EB0)),
                    ),
                    child: const Text(
                      'Questo risultato è stato calcolato in base alle risposte che hai selezionato. Ogni risposta aumenta il punteggio di uno o più profili. Il profilo con più punti è quello suggerito per te. ',
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => const QuizStartScreen()),
                          (route) => false,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A5EB0),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text('Concludi il sondaggio'),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}