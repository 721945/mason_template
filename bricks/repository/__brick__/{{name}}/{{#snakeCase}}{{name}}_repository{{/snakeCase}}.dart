import 'package:graphql_service/graphql_repository.dart';
import '{{#snakeCase}}{{name}}_api_provider{{/snakeCase}}.dart';

class {{#pascalCase}}{{name}}_repository{{/pascalCase}} {
 {{#pascalCase}}{{name}}_repository{{/pascalCase}}(GraphQLService graphQLService) {
    _{{#camelCase}}{{name}}_api_provider{{/camelCase}} = {{#pascalCase}}{{name}}_api_provider{{/pascalCase}}(
      graphQLService,
    );
  }
  late {{#pascalCase}}{{name}}_api_provider{{/pascalCase}} _{{#camelCase}}{{name}}_api_provider{{/camelCase}};
  Future<Model?> fetch() async {
    try {
      final result = await _{{#camelCase}}{{name}}_api_provider{{/camelCase}}.fetch();
      if (!result.hasException) {
        final data = result.data![''];
        if (data != null) {
          final item = Model.fromJson(data));
          return item;
        }
      } else {
        throw MessageException(result.exception!.graphqlErrors.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
  Future<List<Model>?> fetchLists() async {
    try {
      final result = await _{{#camelCase}}{{name}}_api_provider{{/camelCase}}.fetchList();
      if (!result.hasException) {
        final data = result.data![''];
        if (data != null) {
          final listData = (data as List).map((e) => Model.fromJson(e)).toList();
          return listData;
        }
      } else {
        throw MessageException(result.exception!.graphqlErrors.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}