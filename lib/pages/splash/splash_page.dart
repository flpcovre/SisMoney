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
  late final AnimationController _exitController;
  late final Animation<double> _fadeOutAnimation;
  late final Animation<Offset> _slideOutAnimation;

  String fullText = 'Si\$Money';
  int currentLength = 0;

  bool _animationCompleted = false;
  bool _authCompleted = false;

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

      if (_textController.isCompleted) {
        _onAnimationComplete();
      }
    });

    Future.delayed(Duration(seconds: 1), () {
      _textController.forward();
    });

    _simulateAuth();

    _exitController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );

    _fadeOutAnimation = CurvedAnimation(
      parent: _exitController,
      curve: Curves.easeOut,
    );

    _slideOutAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -1.0),
    ).animate(
      CurvedAnimation(parent: _exitController, curve: Curves.easeInOut),
    );
  }

  Future<void> _simulateAuth() async {
    await Future.delayed(Duration(seconds: 2));
    _onAuthComplete();
  }

  void _onAnimationComplete() {
    _animationCompleted = true;
    _checkIfReadyToExit();
  }

  void _onAuthComplete() {
    _authCompleted = true;
    _checkIfReadyToExit();
  }

  Future<void> _checkIfReadyToExit() async {
    if (_animationCompleted && _authCompleted) {
      await Future.delayed(Duration(seconds: 1));
      _startExitAnimation();
    }
  }

  void _startExitAnimation() {
    _exitController.forward().whenComplete(() {
      _goToNextPage();
    });
  }

  void _goToNextPage() {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const Placeholder()));
  }

  @override
  void dispose() {
    _imageController.dispose();
    _textController.dispose();
    _exitController.dispose();
    super.dispose();
  }

  List<InlineSpan> _buildStyledText(String text) {
    return List.generate(currentLength, (index) {
      String char = text[index];
      Color color = char == '\$' ? Colors.green : Color(0XFFF9D647);
      return TextSpan(
        text: char,
        style: TextStyle(
          fontSize: 40,
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
        child: FadeTransition(
          opacity: ReverseAnimation(_fadeOutAnimation),
          child: SlideTransition(
            position: _slideOutAnimation,
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
                    text: TextSpan(children: _buildStyledText(fullText)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
