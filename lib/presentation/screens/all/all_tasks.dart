import 'package:algoriza_to_do_app_phase_one_project/domain/usecases/logic/cubit/cubit.dart';
import 'package:algoriza_to_do_app_phase_one_project/domain/usecases/logic/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../views/task_builder.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).allTasks;

        return TaskBuilder(
            tasks: tasks, noTasks: 'No Tasks Yet..', taskType: 'all');
      },
    );
  }
}
