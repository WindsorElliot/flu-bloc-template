class {{name.pascalCase()}}State {
  final int value;

  {{name.pascalCase()}}State(this.value);

  {{name.pascalCase()}}State.initialValue() : value = 0;


  {{name.pascalCase()}}State copyWith(int? value) {
    return {{name.pascalCase()}}State(value ?? this.value);
  }
}