import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#snakeCase}}{{name}}_event{{/snakeCase}}.dart';
part '{{#snakeCase}}{{name}}_state{{/snakeCase}}.dart';
part '{{#snakeCase}}{{name}}_bloc{{/snakeCase}}.freezed.dart';

class {{#pascalCase}}{{name}}_bloc{{/pascalCase}} extends Bloc<{{#pascalCase}}{{name}}_event{{/pascalCase}}, 
  {{#pascalCase}}{{name}}_state{{/pascalCase}}> {
  {{#pascalCase}}{{name}}_bloc{{/pascalCase}}({ 
    required {{#pascalCase}}{{repo}}_repository{{/pascalCase}} {{#camelCase}}{{repo}}_repository{{/camelCase}} 
    }) : _{{#camelCase}}{{repo}}_repository{{/camelCase}} = {{#camelCase}}{{repo}}_repository{{/camelCase}}, 
        super(const _Initial()) {
      on<_Started>(_onStarted);
    };
  final {{#pascalCase}}{{repo}}_repository{{/pascalCase}} _{{#camelCase}}{{repo}}_repository{{/camelCase}};
  Future<void> _onStarted(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const _Loading());
      try {
        final result = await _{{#camelCase}}{{repo}}_repository{{/camelCase}}.fetch();
        emit(const _Loaded());
      } catch (e) {
        emit(const _Failed());
      }
  }

}
