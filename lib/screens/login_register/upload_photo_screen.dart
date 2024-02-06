import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';

class UploadPhotoScreen extends StatelessWidget {
  const UploadPhotoScreen({Key? key}) : super(key: key);

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              child: Text(
                'Upload Your Photo Profile',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width / 2.8,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/gallery_icon.png',
                  ),
                ),
              ),
            ),
            Text(
              'From Gallery',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width / 2.8,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/camera_icon.png',
                  ),
                ),
              ),
            ),
            Text(
              'Take Photo',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 150),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.navigationBottomBar,
                  (_) => false,
                );
              },
              child: Text('Next'),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Color(0xff53E88B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
