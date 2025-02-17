import 'package:flutter/material.dart';

class FadeInAnimation extends StatefulWidget {
  final Widget child;
  final double delay;

  const FadeInAnimation({required this.child, required this.delay, super.key});

  @override
  _FadeInAnimationState createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Delay the opacity change based on the 'delay' parameter
    Future.delayed(Duration(milliseconds: (widget.delay * 1000).toInt()), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(seconds: 1),
      child: widget.child,
    );
  }
}
