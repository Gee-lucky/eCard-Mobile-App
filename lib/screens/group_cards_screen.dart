import 'package:flutter/material.dart';

class GroupCardsScreen extends StatefulWidget {
  const GroupCardsScreen({super.key});

  @override
  _GroupCardsScreenState createState() => _GroupCardsScreenState();
}

class _GroupCardsScreenState extends State<GroupCardsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Theme.of(context).highlightColor,
      child: SafeArea(child: Text('Groups')),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
