import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';

extension timeFormat on int {
  String timer() {
    final minutesStr = ((this / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (this % 60).floor().toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }
}

class TimerView extends StatelessWidget {
  const TimerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MEOW Timer MEOW')),
      body: const Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(child: TimerText()),
              ),
              Actions(),
            ],
          ),
        ],
      ),
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int duration =
        context.select((TimerBloc bloc) => bloc.state.duration);
    return Text(
      duration.timer(),
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            if (state is TimerRunInProgress)
              FloatingActionButton(
                child: const Icon(Icons.pause),
                onPressed: () =>
                    context.read<TimerBloc>().add(const TimerPaused()),
              ),
            if (state is TimerRunPause)
              FloatingActionButton(
                child: const Icon(Icons.play_arrow),
                onPressed: () =>
                    context.read<TimerBloc>().add(const TimerResumed()),
              ),
            state is TimerInitial
                ? FloatingActionButton(
                    child: const Icon(Icons.play_arrow),
                    onPressed: () => context
                        .read<TimerBloc>()
                        .add(TimerStarted(state.duration)),
                  )
                : FloatingActionButton(
                    child: const Icon(Icons.replay),
                    onPressed: () =>
                        context.read<TimerBloc>().add(const TimerReset()),
                  )
          ],
          // children: switch (state) {
          //   TimerInitial() => [
          //       FloatingActionButton(
          //         child: const Icon(Icons.play_arrow),
          //         onPressed: () => context
          //             .read<TimerBloc>()
          //             .add(TimerStarted(duration: state.duration)),
          //       ),
          //     ],
          //   TimerRunInProgress() => [
          //       FloatingActionButton(
          //         child: const Icon(Icons.pause),
          //         onPressed: () =>
          //             context.read<TimerBloc>().add(const TimerPaused()),
          //       ),
          //       FloatingActionButton(
          //         child: const Icon(Icons.replay),
          //         onPressed: () =>
          //             context.read<TimerBloc>().add(const TimerReset()),
          //       ),
          //     ],
          //   TimerRunPause() => [
          //       FloatingActionButton(
          //         child: const Icon(Icons.play_arrow),
          //         onPressed: () =>
          //             context.read<TimerBloc>().add(const TimerResumed()),
          //       ),
          //       FloatingActionButton(
          //         child: const Icon(Icons.replay),
          //         onPressed: () =>
          //             context.read<TimerBloc>().add(const TimerReset()),
          //       ),
          //     ],
          //   TimerRunCompleted() => [
          //       FloatingActionButton(
          //         child: const Icon(Icons.replay),
          //         onPressed: () =>
          //             context.read<TimerBloc>().add(const TimerReset()),
          //       ),
          //     ]
          // },
        );
      },
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade50,
            Colors.blue.shade500,
          ],
        ),
      ),
    );
  }
}
