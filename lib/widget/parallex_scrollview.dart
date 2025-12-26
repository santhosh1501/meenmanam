import 'package:flutter/material.dart';

class ParallexScrollview extends StatelessWidget {
  final Widget? headerWidget;
  final Widget? childWidget;
  const ParallexScrollview({
    super.key,
    required this.headerWidget,
    this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 120,
          floating: true,
          pinned: false,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: headerWidget,
          ),
        ),
        SliverToBoxAdapter(child: childWidget),
      ],
    );
  }
}
