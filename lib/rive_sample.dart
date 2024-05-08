import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

/// Toggle을 하면 춤을 추고, 버튼을 클릭하면 예정된 움직임 한번 실행되는 버전
class Bird extends StatefulWidget {
  const Bird({super.key});

  @override
  State<Bird> createState() => _BirdState();
}

class _BirdState extends State<Bird> {
  late StateMachineController _stmController;

  // Inputs를 보고 SMI 값을 찾아봄
  SMIBool? _dance;
  SMITrigger? _lookUp;

  @override
  void initState() {
    super.initState();
  }

  // Version 1
  void _onInit(Artboard art) {
    // Animations에 있는 StateMachine이름 birb
    _stmController = StateMachineController.fromArtboard(art, 'birb')
        as StateMachineController;
    art.addController(_stmController);
    // Inputs에 있는 dance
    _dance = _stmController.findSMI('dance');
    _lookUp = _stmController.findSMI('look up');
  }

  void toggleDance(bool newValue) {
    setState(
      () => _dance!.value = newValue,
    );
  }

  void triggerLookUp() {
    // fire()는 한번만 실행된다.
    _lookUp?.fire();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            'Toggle을 하면 춤을 추고, \n버튼을 클릭하면 예정된 움직임 한번 실행되는 버전',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: RiveAnimation.asset(
              'assets/bird.riv',
              onInit: _onInit,
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Text('Dance'),
                  Switch(
                    value: _dance == null ? false : _dance!.value,
                    onChanged: (value) => toggleDance(value),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  triggerLookUp();
                },
                child: const Text('look up'),
              ),
            ],
          ),
          LilGuyTwo(),
        ],
      ),
    );
  }
}

/// board 안에 있는 Button을 클릭하여 동작 시키는 버전
class LilGuyTwo extends StatefulWidget {
  const LilGuyTwo({super.key});

  @override
  State<LilGuyTwo> createState() => _LilGuyTwoState();
}

class _LilGuyTwoState extends State<LilGuyTwo> {
  late StateMachineController _stmController;

  @override
  void initState() {
    super.initState();
  }

  void _onInit(Artboard art) {
    _stmController = StateMachineController.fromArtboard(art, 'State Machine 1')
        as StateMachineController;

    _stmController.isActive = true;

    _stmController.addEventListener(onRiveEvent);

    art.addController(_stmController);
  }

  void onRiveEvent(RiveEvent event) {
    event.properties['Number 1' as double];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        const Text('RiveAsset 안에 있는 Button을 클릭하여 동작 시키는 버전'),
        SizedBox(
          height: 200,
          width: 200,
          child: RiveAnimation.asset(
            'assets/lil_guy.riv',
            onInit: _onInit,
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}


//https://medium.com/@moo_min/rive%EB%A5%BC-flutter%EC%97%90%EC%84%9C-%EC%82%AC%EC%9A%A9%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95-1533ccbfc7ac