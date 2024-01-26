import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app_cubit/counterBlocs/counter_bloc.dart';

class BlocHomeSCreen extends StatelessWidget {
  const BlocHomeSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CounterBloc, CounterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Center(
              child: Text("${context.watch<CounterBloc>().state.counter}"
                  // state.counter.toString()
                  ));
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context)
                  .add(IncrementCounterEvent());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context)
                  .add(DecrementCounterEvent());
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
