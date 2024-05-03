import 'package:flutter/material.dart';

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

/*
- Drawing based animation => required third party package (rive,lottie)
- Code based animation => implicit && explicit
  - implicit : set the first and last value then flutter handles other misc
  - explicit : manage the controller by yourself
    - build in implicit animation
    - tween animation builder
*/
