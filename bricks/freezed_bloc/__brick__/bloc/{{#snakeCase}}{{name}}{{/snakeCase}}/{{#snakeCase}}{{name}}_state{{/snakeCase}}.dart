part of '{{#snakeCase}}{{name}}_bloc{{/snakeCase}}.dart';

@freezed
class {{#pascalCase}}{{name}}_state{{/pascalCase}} with _${{#pascalCase}}{{name}}_state{{/pascalCase}} {
  const factory {{#pascalCase}}{{name}}_state{{/pascalCase}}.initial() = _Initial;
  const factory {{#pascalCase}}{{name}}_state{{/pascalCase}}.loading() = _Loading;
  const factory {{#pascalCase}}{{name}}_state{{/pascalCase}}.loaded() = _Loaded;
  const factory {{#pascalCase}}{{name}}_state{{/pascalCase}}.error({String? message}) = _Error;
}
