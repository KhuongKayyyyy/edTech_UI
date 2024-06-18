import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtech_app/components/primary_button.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:edtech_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'result_screen.dart';  // Import the ResultScreen

class QuestionScreen extends StatefulWidget {
  final CourseSection courseSection;
  QuestionScreen({required this.courseSection});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int index = 0; // Start from the first question
  int? selectedAnswerIndex;
  bool answeredCorrectly = false;

  void checkAnswer(int answerIndex) {
    setState(() {
      selectedAnswerIndex = answerIndex;
      answeredCorrectly = widget.courseSection.questions?[index].correctAnswerIndex == answerIndex;
    });
  }

  void moveToNextQuestion() {
    if (index < (widget.courseSection.questions?.length ?? 1) - 1) {
      setState(() {
        index++;
        selectedAnswerIndex = null;
        answeredCorrectly = false;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ResultScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.courseSection.questions?[index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(
                '${index + 1} of ${widget.courseSection.questions?.length ?? 0}',
                style: TextStyle(
                  color: AppTheme.inkGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                question?.questionText ?? "No question available",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppTheme.inkGrey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: widget.courseSection.imgURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              for (int i = 0; i < (question?.options.length ?? 0); i++)
                Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: selectedAnswerIndex == null
                            ? () {
                          checkAnswer(i);
                        }
                            : null, // Disable button after an answer is selected
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedAnswerIndex == i
                              ? (answeredCorrectly
                              ? Colors.green
                              : Colors.red)
                              : Colors.white,
                          foregroundColor: selectedAnswerIndex == i
                              ? Colors.white
                              : AppTheme.inkGreyDark,
                          side: BorderSide(
                              color: selectedAnswerIndex == i
                                  ? (answeredCorrectly
                                  ? Colors.green
                                  : Colors.red)
                                  : AppTheme.inkGrey,
                              width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "${String.fromCharCode(65 + i)}. ${question?.options[i] ?? "No answer found"}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              PrimaryButton(
                btnText: "Next Question",
                onPressed: selectedAnswerIndex != null
                    ? () {
                  moveToNextQuestion();
                }
                    : (){}, // Disable button if no answer is selected
              ),
            ],
          ),
        ),
      ),
    );
  }
}
