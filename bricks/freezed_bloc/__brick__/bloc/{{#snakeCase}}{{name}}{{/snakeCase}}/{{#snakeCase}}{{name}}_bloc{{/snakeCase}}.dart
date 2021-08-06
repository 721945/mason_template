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
    }) : _{{#camelCase}}{{repo}}_repository{{/camelCase}} = {{#camelCase}}{{repo}}_repository{{/camelCase}}, super(const _Initial());
  final {{#pascalCase}}{{repo}}_repository{{/pascalCase}} _{{#camelCase}}{{repo}}_repository{{/camelCase}};
  @override
  Stream<{{#pascalCase}}{{name}}_state{{/pascalCase}}> mapEventToState(
    {{#pascalCase}}{{name}}_event{{/pascalCase}} event) async* {
      if (event is _Started) {
        yield* mapStartedEventToState(event);
      }
  }
  Stream<{{#pascalCase}}{{name}}_state{{/pascalCase}}> mapStartedEventToState(
    _Started event) async* {
      yield const {{#pascalCase}}{{name}}_state{{/pascalCase}}.loading();
      try {
        final result = await _{{#camelCase}}{{repo}}_repository{{/camelCase}}.fetch();
        yield {{#pascalCase}}{{name}}_state{{/pascalCase}}.loaded();
      } catch (e) {
        yield {{#pascalCase}}{{name}}_state{{/pascalCase}}.error(message:e.toString());
      }
    }
}
