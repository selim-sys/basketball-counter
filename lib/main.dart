import 'package:basketballcounter/cubit/counter-cubit.dart';
import 'package:basketballcounter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Basketball());
}

class Basketball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
    HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
                style: TextStyle(
                    color: Colors.white
                ),
                'Points Counter'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 75),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                                style: TextStyle(
                                    fontSize: 33,
                                    fontWeight: FontWeight.w500
                                ),
                                'Team A'),
                            Text(
                                style: const TextStyle(
                                    fontSize: 140,
                                    fontWeight: FontWeight.bold
                                ),
                                '${BlocProvider.of<CounterCubit>(context).teamAPoints}'),
                            const SizedBox(height: 10,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(115, 38),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 1);
                                }, child: const Text('Add 1 Point')),
                            const SizedBox(height: 13,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(115, 38),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 2);
                                }, child: const Text('Add 2 Points')),
                            const SizedBox(height: 13,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(115, 38),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 3);
                                }, child: const Text('Add 3 Points'))
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        indent: 50,
                        thickness: 3,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                                style: TextStyle(
                                    fontSize: 33,
                                    fontWeight: FontWeight.w500
                                ),
                                'Team B'),
                            Text(
                                style: const TextStyle(
                                    fontSize: 140,
                                    fontWeight: FontWeight.bold
                                ),
                                '${BlocProvider.of<CounterCubit>(context).teamBPoints}'),
                            const SizedBox(height: 10,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(115, 38),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 1);
                                }, child: const Text('Add 1 Point')),
                            const SizedBox(height: 13,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(115, 38),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 2);
                                }, child: const Text('Add 2 Points')),
                            const SizedBox(height: 13,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(115, 38),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 3);
                                }, child: const Text('Add 3 Points'))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(180, 38),
                    ),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).counterReset();
                    }, child: const Text('Reset'))
              ],
            ),
          ),
        );
      },
    );
  }
}

