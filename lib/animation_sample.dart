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

/*
- Drawing based animation => required third party package (rive,lottie)
- Code based animation => implicit && explicit
  - implicit : set the first and last value then flutter handles other misc
  - explicit : manage the controller by yourself
    - build in implicit animation
    - tween animation builder
*/
