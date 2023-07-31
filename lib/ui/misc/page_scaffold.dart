import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({
    super.key,
    required this.title,
    required this.drawer,
    required this.appBarLeading,
    this.automaticallyImplyLeading = true,
    required this.customAppBarContent,
    required this.actions,
    required this.body,
  });

  final String title;
  final Widget drawer;
  final Widget appBarLeading;
  final bool automaticallyImplyLeading;
  final Widget customAppBarContent;
  final List<Widget> actions;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
      drawer: drawer,
    );
  }
}
