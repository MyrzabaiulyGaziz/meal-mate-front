import 'package:flutter/material.dart';
import 'package:mealmate/widgets/custom_list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 80,
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
                child: Center(
                  child: Text(
                    'Gaziz Myrzabaiuly',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
            expandedHeight: 280,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Myrzabaiuly Gaziz',
                textScaler: TextScaler.noScaling,
              ),
              background: Image.asset(
                'assets/images/img_photo_profile.png',
                fit: BoxFit.fill,
              ),
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
            }, childCount: 5),
          )
        ],
      ),
    );
  }
}
