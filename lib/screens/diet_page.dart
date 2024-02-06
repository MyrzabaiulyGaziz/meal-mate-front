import 'package:flutter/material.dart';
import 'package:mealmate/widgets/custom_list_tile.dart';

class DietPage extends StatelessWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverAppBar(
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                expandedHeight: 210,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: 0),
                  expandedTitleScale: 1,
                  centerTitle: true,
                  title: Text(
                    'Vegan Diet',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  background: Image.asset('assets/images/vegan_diet.png'),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '100+ recipes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return CustomListTile(
                    leading: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(),
                      child: Image.asset(
                        'assets/images/img_healthy_bowl_1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(
                      'Favorite Food ${index + 1}',
                      textScaler: TextScaler.linear(2),
                    ),
                    height: 110,
                    width: 100,
                  );
                }, childCount: 10),
              )
            ]));
  }
}