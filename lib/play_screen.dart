import 'package:flutter/material.dart';
import 'dart:math';

final randoms = Random();

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  var score = 0;
  var cmpscore = 0;
  var currentImage = 4;
  var myAns = 1;
  void imageScreen1() {
    setState(() {
      currentImage = randoms.nextInt(3) + 1;
      myAns = 1;
    });
  }

  void imageScreen2() {
    setState(() {
      currentImage = randoms.nextInt(3) + 1;
      myAns = 2;
    });
  }

  void imageScreen3() {
    setState(() {
      currentImage = randoms.nextInt(3) + 1;
      myAns = 3;
    });
  }

  void restButton() {
    setState(() {
      score = 0;
      currentImage = 4;
      cmpscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (myAns == 3 && currentImage == 1) {
      score++;
    }
    if (myAns == 2 && currentImage == 3) {
      score++;
    }
    if (myAns == 1 && currentImage == 2) {
      score++;
    }
    if (currentImage == 3 && myAns == 1) {
      cmpscore++;
    }
    if (currentImage == 2 && myAns == 3) {
      cmpscore++;
    }
    if (currentImage == 1 && myAns == 2) {
      cmpscore++;
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //
          Text(
            'Your Score : $score',
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          Text(
            'Computer Score : $cmpscore',
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/pic-$currentImage.png',
            height: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Choose Your Answer:',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          TextButton.icon(
            onPressed: imageScreen1,
            icon: Image.asset(
              'assets/images/pic-1.png',
              height: 50,
            ),
            label: const Text(
              'Rock',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton.icon(
            onPressed: imageScreen2,
            icon: Image.asset(
              'assets/images/pic-2.png',
              height: 50,
            ),
            label: const Text(
              'Scissor',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton.icon(
            onPressed: imageScreen3,
            icon: Image.asset(
              'assets/images/pic-3.png',
              height: 50,
            ),
            label: const Text(
              'Paper',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton.icon(
              onPressed: restButton,
              icon: const Icon(
                Icons.arrow_forward,
              ),
              label: const Text(
                'Reset',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ],
      ),
    );
  }
}
