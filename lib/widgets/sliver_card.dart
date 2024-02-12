import 'package:flutter/material.dart';

class SliverCard extends StatelessWidget {
  const SliverCard({
    Key? key,
    required this.image,
    required this.title,
    required this.sliver,
  }) : super(key: key);

  final Widget image;
  final String title;
  final Widget sliver;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
          ),
          expandedHeight: 280,
          flexibleSpace: FlexibleSpaceBar(
            background: image,
          ),
        ),
        sliver,
      ],
    );
  }
}
