import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/{{name}}_bloc.dart';
import '../../../bloc/{{name}}_event.dart';
import '../../../bloc/{{name}}_state.dart';

class {{name.pascalCase()}}View extends StatelessWidget {

  const {{name.pascalCase()}}View({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('{{name.pascalCase()}}')),
      body: Center(
        child: BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
          builder: (context, state) {
            return Text('${state.value}', style: Theme.of(context).textTheme.headline1);
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<{{name.pascalCase()}}Bloc>().add({{name.pascalCase()}}EventIncrement());
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<{{name.pascalCase()}}Bloc>().add({{name.pascalCase()}}EventDecrement());
            },
          ),
        ],
      ),
    );
  }
}