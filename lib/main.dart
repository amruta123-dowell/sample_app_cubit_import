import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app_cubit/bloc_home_screen.dart';
import 'package:sample_app_cubit/counterCubits/counter_cubit.dart';
import 'package:sample_app_cubit/other_screen.dart';

import 'counterBlocs/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const BlocHomeSCreen(),
        ));
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<CounterCubit, CounterState>(
//         listener: (context, state) {
//           switch (state.counter) {
//             case -1:
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const OtherScreen()));
//               break;
//             case 3:
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       content: Text("Counter number is ${state.counter}"),
//                     );
//                   });

//               break;
//             default:
//               const SizedBox.shrink();
//           }
//         },
//         builder: (context, state) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 state.counter.toString(),
//                 style: const TextStyle(fontSize: 40),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const BlocHomeSCreen()));
//                   },
//                   child: const Text("Go to home screen"))
//             ],
//           );
//         },
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               context.read<CounterCubit>().increment();
//             },
//             heroTag: "INCREMENT",
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(width: 10),
//           FloatingActionButton(
//             onPressed: () {
//               context.read<CounterCubit>().decrement();
//             },
//             heroTag: "DECREMENT",
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
