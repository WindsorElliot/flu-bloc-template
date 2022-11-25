import 'package:flutter_bloc/flutter_bloc.dart';

import '{{name}}_event.dart';
import '{{name}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc(): super({{name.pascalCase()}}State.initialValue()) {
    on<{{name.pascalCase()}}EventIncrement>((event, emit) => _handleIncrementEvent(event, emit));
    on<{{name.pascalCase()}}EventDecrement>((event, emit) => _handleDecrementeEvent(event, emit));
  }

  void _handleDecrementeEvent({{name.pascalCase()}}EventDecrement event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(state.copyWith(state.value - 1));
  }

  void _handleIncrementEvent({{name.pascalCase()}}EventIncrement event, Emitter<{{name.pascalCase()}}State> emit) async {
    emit(state.copyWith(state.value + 1));
  }

}