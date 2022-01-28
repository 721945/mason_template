import 'package:flutter/material.dart';


class {{#pascalCase}}{{name}}_page{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}_page{{/pascalCase}}({Key? key}) : super(key: key);
  {{#routable}}
  static PageRoute route() {
    return MaterialPageRoute<dynamic>(
      builder: (context) => const {{#pascalCase}}{{name}}_page{{/pascalCase}}(),
    );
  }
  {{/routable}}
  @override
  Widget build(BuildContext context) {
    return const _{{#pascalCase}}{{name}}_view{{/pascalCase}}();
  }
}

{{#stateful}}
class  _{{#pascalCase}}{{name}}_view{{/pascalCase}} extends StatefulWidget {
 const _{{#pascalCase}}{{name}}_view{{/pascalCase}}({Key? key}) : super(key: key);

  @override
  _{{#pascalCase}}{{name}}_view{{/pascalCase}}State createState() => _{{#pascalCase}}{{name}}_view{{/pascalCase}}State();
}

class _{{#pascalCase}}{{name}}_view{{/pascalCase}}State extends State<_{{#pascalCase}}{{name}}_view{{/pascalCase}}> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
{{/stateful}}  
{{^stateful}}
class _{{#pascalCase}}{{name}}_view{{/pascalCase}} extends StatelessWidget {
  const _{{#pascalCase}}{{name}}_view{{/pascalCase}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
{{/stateful}}  