import 'dart:math';

import 'package:flutter/material.dart';

// its the responsibility of the widgets user to not mess up calls after
// widget is disposed
class ScrollPagination extends StatefulWidget {
  const ScrollPagination({
    Key? key,
    this.onScrollEnded,
    this.physics,
    this.controller,
    this.prefixWidgets = const [],
    this.shrinkWrap = false,
    this.showLoadingIndicator = true,
    required this.itemBuilder,
    required this.itemCount,
    this.reverse = false,
    this.padding,
    this.separatorBuilder,
  }) : super(key: key);

  ///{@macro flutter.widgets.scroll_view.controller}
  final ScrollController? controller;

  ///{@macro flutter.widgets.scroll_view.physics}
  final ScrollPhysics? physics;

  ///{@macro flutter.widgets.scroll_view.shrinkWrap}
  final bool shrinkWrap;

  /// Count of items in the actual pagination, not including
  /// loaders, prefix widgets
  final int itemCount;

  final bool showLoadingIndicator;

  final bool reverse;

  final EdgeInsets? padding;

  /// Used to pass widgets that are not conventionally part of the pagination,
  /// but still need to be contained in scroll
  final List<Widget> prefixWidgets;

  final void Function()? onScrollEnded;

  final Widget Function(BuildContext, int) itemBuilder;

  /// If provided, will add the widget returned from function between every item
  final Widget Function(BuildContext, int)? separatorBuilder;

  @override
  _ScrollPaginationState createState() => _ScrollPaginationState();
}

class _ScrollPaginationState extends State<ScrollPagination> {
  late final ScrollController _controller;

  bool callbackUsed = false;

  int get _countLoading => widget.showLoadingIndicator ? 1 : 0;

  int get _actualItemCount =>
      (widget.separatorBuilder != null
          ? _calculateSeparatedItemCount(widget.itemCount)
          : widget.itemCount) +
      widget.prefixWidgets.length;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? ScrollController();
  }

  void _onScroll() {
    if (_controller.position.maxScrollExtent -
            MediaQuery.of(context).size.height <
        _controller.offset) {
      if (!callbackUsed && widget.showLoadingIndicator) {
        widget.onScrollEnded?.call();
        callbackUsed = true;
      }
    }
  }

  @override
  void didChangeDependencies() {
    _controller.removeListener(_onScroll);
    _controller.addListener(_onScroll);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant ScrollPagination oldWidget) {
    super.didUpdateWidget(oldWidget);
    callbackUsed = false;
  }

  static int _calculateSeparatedItemCount(int itemCount) {
    return max(0, itemCount * 2 - 1);
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: widget.padding,
      reverse: widget.reverse,
      shrinkWrap: widget.shrinkWrap,
      controller: _controller,
      physics: widget.physics,
      itemCount: _actualItemCount + _countLoading,
      itemBuilder: (context, index) {
        if (index < widget.prefixWidgets.length) {
          return widget.prefixWidgets[index];
        }
        if (index == _actualItemCount && widget.showLoadingIndicator) {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
          );
        }
        final actualIndex = index - widget.prefixWidgets.length;

        if (widget.separatorBuilder != null) {
          final int itemIndex = actualIndex ~/ 2;
          final Widget widget;
          if (actualIndex.isEven) {
            widget = this.widget.itemBuilder(context, itemIndex);
          } else {
            widget = this.widget.separatorBuilder!(context, itemIndex);
          }
          return widget;
        }
        return widget.itemBuilder(context, actualIndex);
      },
    );
  }
}
