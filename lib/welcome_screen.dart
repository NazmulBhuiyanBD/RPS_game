import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome(this.playScreens, {super.key});
  final void Function() playScreens;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //
        const Text(
          'Welcome TO Rock Paper Scissor',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/images/pic-4.png',
          height: 300,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton.icon(
            onPressed: playScreens,
            icon: const Icon(
              Icons.arrow_forward,
            ),
            label: const Text(
              'Lets! Play',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
      ],
    );
  }
}
