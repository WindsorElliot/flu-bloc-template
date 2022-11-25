import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/counter/{{name}}_view.dart';

class {{name.pascalCase()}}Screen extends StatefulWidget {

  const {{name.pascalCase()}}Screen({ super.key });
  
  @override
  State<StatefulWidget> createState() => _{{name.pascalCase()}}Screen();
}

class _{{name.pascalCase()}}Screen extends State<{{name.pascalCase()}}Screen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => {{name.pascalCase()}}Bloc(),
      child: const {{name.pascalCase()}}View(),
    );
  }
}