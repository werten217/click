import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/counter_cubit.dart';
import 'ui/styles.dart';
import 'ui/dimensions.dart';
import 'ui/widgets/counter_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit Clicker',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          elevation: 0,
          titleTextStyle: AppTextStyles.appBar,
          centerTitle: true,
        ),
      ),
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const CounterScreen(),
      ),
    );
  }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Clicker")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          BlocBuilder<CounterCubit, int>(
            builder: (context, count) {
              return Text('$count', style: AppTextStyles.counter);
            },
          ),
          const SizedBox(height: 40),

         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterButton(
                onTapDown: () => cubit.startDecrement(),
                onTapUp: () => cubit.stop(),
                icon: Icons.remove,
                color: AppColors.negative,
              ),
              const SizedBox(width: AppDimensions.spacing),
              CounterButton(
                onTapDown: () => cubit.startIncrement(),
                onTapUp: () => cubit.stop(),
                icon: Icons.add,
                color: AppColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
