import 'package:flutter/material.dart';
import 'package:mealmate/models/search_option.dart';
import 'package:mealmate/screens/search/search_filters.dart';

class HeroSearchBar extends StatefulWidget {
  const HeroSearchBar({
    Key? key,
    this.enabled = true,
    this.currentFilters,
    this.onChanged,
    this.onFilters,
  }) : super(key: key);

  final SearchOption? currentFilters;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final ValueChanged<SearchOption>? onFilters;

  @override
  State<HeroSearchBar> createState() => _HeroSearchBarState();
}

class _HeroSearchBarState extends State<HeroSearchBar> {

  bool filtersOpened = false;

  Widget _textField() {
    return TextField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        enabled: widget.enabled,
        hintText: ('Search'),
        suffixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget filter = IconButton(
      onPressed: widget.enabled ? () {
        setState(() {
          filtersOpened = !filtersOpened;
        });
      } : null,
      icon: Icon(
        Icons.filter_alt,
        color: filtersOpened ? Theme.of(context).colorScheme.primary : null,
        size: 30,
      ),
    );

    final arrow = IconButton(
      // borderRadius: BorderRadius.circular(100),
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(
        Icons.arrow_back_ios_new,
      ),
    );

    Widget _widget = Hero(
      flightShuttleBuilder: (context, anim, dir, ctx, ctx2) {
        return Material(
          color: Colors.transparent,
          child: SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizeTransition(
                  axis: Axis.horizontal,
                  sizeFactor: anim,
                  child: arrow,
                ),
                Expanded(
                  child: _textField(),
                ),
                filter,
              ],
            ),
          ),
        );
      },
      tag: "Search",
      child: Material(
        child: SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.enabled) arrow,
              Expanded(
                child: _textField(),
              ),
              filter,
            ],
          ),
        ),
      ),
    );

    if (widget.enabled) {
      _widget = Column(
        children: [
          _widget,
          AnimatedSize(
            duration: Duration(milliseconds: 300),
            child: SizedBox(
              height: filtersOpened ? null : 0,
              child: SearchFilters(
                searchOption: widget.currentFilters ?? SearchOption(),
                onFilters: widget.onFilters,
              ),
            ),
          ),
        ],
      );
    }

    return _widget;
  }
}
