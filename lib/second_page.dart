import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  bool _bigger = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              width: _bigger ? 100 : 500,
              // height: 400,
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut,
              child: Image.asset("star.jpg"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _bigger = !_bigger;
                  });
                },
                child: const Text("button"))
          ],
        ),
      ),
    );
  }
}
