import 'package:flutter/material.dart';

void main() {
  runApp(const Animations());
}

class Animations extends StatelessWidget {
  const Animations({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimationView(),
    );
  }
}

class AnimationView extends StatelessWidget {
  const AnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Hello Students'),
            SizedBox(
              width: 16,
            ),
            AnimatedCrossFade(
              firstChild: CircleAvatar(),
              secondChild: SizedBox(),
              crossFadeState: CrossFadeState.showFirst,
              duration: Duration(milliseconds: 500),
            )
          ],
        ),
      ),
    );
  }
}
