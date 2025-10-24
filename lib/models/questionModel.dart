// lib/models/questionModel.dart
import 'package:flutter/material.dart';

class AnswerModel {
  final String text;
  final List<String> profiles; // List of profile IDs that get points from this answer
  
  const AnswerModel({
    required this.text,
    required this.profiles,
  });
}

class QuestionModel {
  final String question;
  final List<AnswerModel> answers;
  
  const QuestionModel({
    required this.question,
    required this.answers,
  }) : assert(question != '');
}