import 'package:flutter/material.dart';


class {{#pascalCase}}{{name}}page{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}page{{/pascalCase}}({Key? key}) : super(key: key);
  {{#routable}}
  static PageRoute route() {
    return MaterialPageRoute(builder: (context)=> const {{#pascalCase}}{{name}}page{{/pascalCase}}());
  }
  {{/routable}}
  @override
  Widget build(BuildContext context) {
    return const _{{#pascalCase}}{{name}}view{{/pascalCase}}();
  }
}

{{#stateful}}
class  _{{#pascalCase}}{{name}}view{{/pascalCase}} extends StatefulWidget {
 const _{{#pascalCase}}{{name}}view{{/pascalCase}}({Key? key}) : super(key: key);

  @override
  _ {{#pascalCase}}{{name}}view{{/pascalCase}}State createState() => _{{#pascalCase}}{{name}}view{{/pascalCase}}State();
}

class _{{#pascalCase}}{{name}}view{{/pascalCase}}State extends State<_{{#pascalCase}}{{name}}view{{/pascalCase}}> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SizedBox(),
    );
  }
}
{{/stateful}}  
{{^stateful}}
class _{{#pascalCase}}{{name}}view{{/pascalCase}} extends StatelessWidget {
  const _{{#pascalCase}}{{name}}view{{/pascalCase}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SizedBox(),
    );
}
{{/stateful}}  