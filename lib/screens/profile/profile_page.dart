import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealmate/core/cubit/app_cubit.dart';
import 'package:mealmate/core/cubit/app_state.dart';
import 'package:mealmate/models/user.dart';
import 'package:mealmate/widgets/sliver_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return Center(child: CircularProgressIndicator());
          }

          return SliverCard(
            image: Image.asset(
              'assets/images/img_photo_profile.png',
              fit: BoxFit.fill,
            ),
            title: user.fullName,
            sliver: SliverToBoxAdapter(
              child: Text('Favorites'),
            ),
          );
        },
      ),
    );
  }
}
