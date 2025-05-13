import 'package:flutter/material.dart';
import 'package:sismoney/layouts/gradient_scaffold.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _imageController;
  late final Animation<double> _imageScale;

  late final AnimationController _textController;

  String fullText = 'Si\$Money';
  int currentLength = 0;

  @override
  void initState() {
    super.initState();

    _imageController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _imageScale = CurvedAnimation(
      parent: _imageController,
      curve: Curves.elasticOut,
    );

    _imageController.forward();

    _textController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 50 * fullText.length),
    )..addListener(() {
        setState(() {
          currentLength = (_textController.value * fullText.length).floor();
        });
      });

    Future.delayed(Duration(seconds: 1), () {
      _textController.forward();
    });
  }

  @override
  void dispose() {
    _imageController.dispose();
    _textController.dispose();
    super.dispose();
  }

  List<InlineSpan> _buildStyledText(String text) {
    return List.generate(currentLength, (index) {
      String char = text[index];
      Color color = char == '\$' ? Colors.green : Color(0XFFF9D647);
      return TextSpan(
        text: char,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: color,
          letterSpacing: 6.0,
          shadows: [
            Shadow(
              offset: Offset(2, 2),
              blurRadius: 1.0,
              color: Colors.black.withOpacity(0.2),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _imageScale,
              child: Image.asset('lib/assets/img/robot.png', width: 100),
            ),
            const SizedBox(height: 16),

            SizedBox(
              height: 50,
              child: RichText(
                text: TextSpan(
                  children: _buildStyledText(fullText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
