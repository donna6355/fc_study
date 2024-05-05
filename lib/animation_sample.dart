import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ImplicitAnimationSample extends StatefulWidget {
  const ImplicitAnimationSample({super.key});

  @override
  State<ImplicitAnimationSample> createState() =>
      _ImplicitAnimationSampleState();
}

class _ImplicitAnimationSampleState extends State<ImplicitAnimationSample> {
  bool _bigger = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   width: _bigger ? 100 : 400,
        //   height: _bigger ? 100 : 400,
        //   color: Colors.amber,
        // ),

        // AnimatedAlign, AnimatedOpacity, AnimatedGrid, AnimatedList, AnimatedIcon,
        // Animatedpositioned, AnimatedPadding, AnimatedDefaultTextStyle, AnimatedThemeSize
        AnimatedContainer(
          width: _bigger ? 100 : 400,
          height: _bigger ? 100 : 400,
          color: Colors.amber,
          duration: const Duration(microseconds: 600),
          curve: Curves.bounceOut, //control interpolation
        ),
        ElevatedButton(
          onPressed: () => setState(() {
            _bigger = !_bigger;
          }),
          child: Icon(Icons.star),
        ),
      ],
    );
  }
}

class TweeinAnimationSample extends StatefulWidget {
  const TweeinAnimationSample({super.key});

  @override
  State<TweeinAnimationSample> createState() => _TweeinAnimationSampleState();
}

class _TweeinAnimationSampleState extends State<TweeinAnimationSample> {
  static final angleTween = Tween<double>(begin: 0, end: 2 * 3.14);
  //tween is mutable, can have many options
  //best to declare tween as static final var in order to avoid creating new object
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 400,
          height: 400,
          color: Colors.amber,
        ),
        Center(
          child: TweenAnimationBuilder(
            tween: angleTween,
            duration: const Duration(milliseconds: 600),
            builder: (_, double angle, __) {
              return Transform.rotate(
                angle: angle,
                child: ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.orange, BlendMode.overlay),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class BuiltInExplicitSample extends StatefulWidget {
  const BuiltInExplicitSample({super.key});

  @override
  State<BuiltInExplicitSample> createState() => _BuiltInExplicitSampleState();
}

class _BuiltInExplicitSampleState extends State<BuiltInExplicitSample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(microseconds: 600))
      ..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //sizeTransition, FadeTransition, AlignTransition, ScaleTransition, SlideTransition
    return Column(
      children: [
        RotationTransition(
          turns: _animationController,
          alignment: Alignment.center,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: _animationController.stop, child: Text('STOP')),
            ElevatedButton(
                onPressed: _animationController.repeat, child: Text('TURN')),
          ],
        )
      ],
    );
  }
}

//repeat animation, puase and resume etc.
//custom animation is needed such as funnel-shaped gradients
class CustomExplicitSample extends StatefulWidget {
  const CustomExplicitSample({super.key});

  @override
  State<CustomExplicitSample> createState() => _CustomExplicitSampleState();
}

class _CustomExplicitSampleState extends State<CustomExplicitSample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.cabin),
        AnimatedBuilder(
          animation: _animationController,
          builder: (_, __) {
            return ClipPath(
              clipper: const BeamClipper(),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 1.5,
                    colors: [
                      Colors.yellow,
                      Colors.transparent,
                    ],
                    stops: [0, _animationController.value],
                  ),
                ),
              ),
            );
          },
        ),
        //refactor to separate widget with an AnimatedWidget
        BeamTransition(_animationController),
      ],
    );
  }
}

class BeamTransition extends AnimatedWidget {
  const BeamTransition(Animation<double> animation, {super.key})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return ClipPath(
      clipper: const BeamClipper(),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1.5,
            colors: [
              Colors.yellow,
              Colors.transparent,
            ],
            stops: [0, animation.value],
          ),
        ),
      ),
    );
  }
}

class BeamClipper extends CustomClipper<Path> {
  const BeamClipper();

  @override
  getClip(Size size) {
    return Path()
      ..lineTo(size.width / 2, size.height / 2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height / 2)
      ..close();
  }

  /// Return false always because we always clip the same area.
  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

/*Lottie is a mobile library for Android and iOS that parses Adobe After Effects animations exported as json with Bodymovin and renders them natively on mobile! */

class LottieSample extends StatelessWidget {
  const LottieSample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Lottie.asset('assets/lottie.json'),
        Lottie.network(
            'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
      ],
    );
  }
}
/*
- Drawing based animation => required third party package (rive,lottie)
- Code based animation => implicit && explicit
  - implicit : set the first and last value then flutter handles other misc
  - explicit : manage the controller by yourself
    - build in implicit animation
    - tween animation builder
*/
