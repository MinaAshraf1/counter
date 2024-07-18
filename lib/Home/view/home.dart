import 'package:counter/Home/cubit/counter_cubit.dart';
import 'package:counter/Home/cubit/counter_state.dart';
import 'package:counter/Home/utils/button.dart';
import 'package:counter/Home/utils/team.dart';
import 'package:counter/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Counter",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            centerTitle: true,
            backgroundColor: mainColor,
          ),
          body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Team(
                      team: "Team A",
                      counter: "${BlocProvider.of<CounterCubit>(context).APoints}",
                      txt1: "Add 5 points",
                      txt2: "Add 7 points",
                      txt3: "Add 10 points",
                      btn1: (){
                        BlocProvider.of<CounterCubit>(context)
                            .TeamIncrement(team: 'A', addNum: 5);
                      },
                      btn2: (){
                        BlocProvider.of<CounterCubit>(context)
                            .TeamIncrement(team: 'A', addNum: 7);
                      },
                      btn3: (){
                        BlocProvider.of<CounterCubit>(context)
                            .TeamIncrement(team: 'A', addNum: 10);
                      },
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: VerticalDivider(
                        color: mainColor,
                        thickness: 2,
                      ),
                    ),

                    Team(
                      team: "Team B",
                      counter: "${BlocProvider.of<CounterCubit>(context).BPoints}",
                      txt1: "Add 5 points",
                      txt2: "Add 7 points",
                      txt3: "Add 10 points",
                      btn1: (){
                        BlocProvider.of<CounterCubit>(context)
                            .TeamIncrement(team: 'B', addNum: 5);
                      },
                      btn2: (){
                        BlocProvider.of<CounterCubit>(context)
                            .TeamIncrement(team: 'B', addNum: 7);
                      },
                      btn3: (){BlocProvider.of<CounterCubit>(context)
                          .TeamIncrement(team: 'B', addNum: 10);},
                    ),
                  ],
                ),

                AddButton(txt: "Reset", add: (){
                  BlocProvider.of<CounterCubit>(context)
                      .reset();
                },)
              ],
            ),
          ),
        );
      },
      listener: (context, state) {

      },
    );
  }
}