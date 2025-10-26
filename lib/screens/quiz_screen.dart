import 'dart:async';
import 'package:flutter/material.dart';
import '../data/questions_data.dart';
import '../models/questionModel.dart';
import 'quiz_result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
  final int total = allQuestions.length; // should be 7
  int index = 0;
  final List<int?> selections = List<int?>.filled(allQuestions.length, null);
  late AnimationController _switchController;
  late Animation<Offset> _slideAnim;

  Timer? _advanceTimer;

  @override
  void initState() {
    super.initState();
    _switchController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _slideAnim = Tween<Offset>(begin: const Offset(0.1, 0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _switchController, curve: Curves.easeInOut));
    _switchController.forward();
  }

  @override
  void dispose() {
    _advanceTimer?.cancel();
    _switchController.dispose();
    super.dispose();
  }

  void _goTo(int newIndex) {
    if (newIndex < 0 || newIndex >= total) return;
    setState(() {
      index = newIndex;
      _switchController.forward(from: 0);
    });
  }

  void _onAnswerTap(int ansIndex) {
    selections[index] = ansIndex;
    setState(() {});
    _advanceTimer?.cancel();
    _advanceTimer = Timer(const Duration(milliseconds: 500), () {
      if (index == total - 1) {
        _finishQuiz();
      } else {
        _goTo(index + 1);
      }
    });
  }

  void _finishQuiz() {
    // Calculate profile scores
    final Map<String, int> scores = {};
    for (int q = 0; q < total; q++) {
      final int? sel = selections[q];
      if (sel == null) continue;
      final AnswerModel ans = allQuestions[q].answers[sel];
      for (final profile in ans.profiles) {
        scores[profile] = (scores[profile] ?? 0) + 1;
      }
    }
    // Determine top profile
    String? topProfile;
    int topScore = -1;
    scores.forEach((key, value) {
      if (value > topScore) {
        topScore = value;
        topProfile = key;
      }
    });
    // Fallback if none selected
    topProfile ??= 'heartbeat';
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => QuizResultScreen(profileSlug: topProfile!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final QuestionModel q = allQuestions[index];
    final double progress = (index + 1) / total;

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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Progress Bar
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 10,
                          backgroundColor: Colors.white,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF0A5EB0)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text('${index + 1}/$total'),
                  ],
                ),
                const SizedBox(height: 12),
                // Question Card
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, anim) {
                      return SlideTransition(position: _slideAnim, child: FadeTransition(opacity: anim, child: child));
                    },
                    child: Container(
                      key: ValueKey<int>(index),
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
                            q.question,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A5EB0),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Expanded(
                            child: ListView.separated(
                              itemCount: q.answers.length,
                              separatorBuilder: (_, __) => const SizedBox(height: 8),
                              itemBuilder: (context, i) {
                                final bool selected = selections[index] == i;
                                return ElevatedButton(
                                  onPressed: () => _onAnswerTap(i),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: selected ? const Color(0xFF0A5EB0) : Colors.white,
                                    foregroundColor: selected ? Colors.white : Colors.black87,
                                    side: BorderSide(color: const Color(0x220A5EB0)),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      q.answers[i].text,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Navigation buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: index > 0 ? () => _goTo(index - 1) : null,
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Indietro'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF0A5EB0),
                          side: const BorderSide(color: Color(0xFF0A5EB0)),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if (index == total - 1) {
                            _finishQuiz();
                          } else {
                            _goTo(index + 1);
                          }
                        },
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('Avanti'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A5EB0),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}