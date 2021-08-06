part of '{{#snakeCase}}{{name}}_bloc{{/snakeCase}}.dart';

@freezed
class {{#pascalCase}}{{name}}_event{{/pascalCase}} with _${{#pascalCase}}{{name}}_event{{/pascalCase}} {
  const factory {{#pascalCase}}{{name}}_event{{/pascalCase}}.started() = _Started;
}