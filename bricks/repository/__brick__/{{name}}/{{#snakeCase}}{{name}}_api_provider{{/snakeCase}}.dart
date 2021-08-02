import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_service/graphql_repository.dart';

class {{#pascalCase}}{{name}}_api_provider{{/pascalCase}} {
  {{#pascalCase}}{{name}}_api_provider{{/pascalCase}}(this._graphQLService);
  final GraphQLService _graphQLService;

  Future<QueryResult> fetch() async {
    try {
      final result = await _graphQLService.performQuery(
        '',
      );
      return result;
    } on Exception {
      throw const ServerException();
    }
  }
  
  Future<QueryResult> fetchLists() async {
    try {
      final result = await _graphQLService.performQuery(
        '',
      );
      return result;
    } on Exception {
      throw const ServerException();
    }
  }

}