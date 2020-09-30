import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/homepage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: [
            _topSection(context),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              left: 16.0,
              child: _buttomSection(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _topSection(context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: FlutterLogo(
            size: 160.0,
            style: FlutterLogoStyle.stacked,
          ),
        ),
        SizedBox(height: 32.0),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePgae(),
                      ));
                },
                child: Container(
                  height: 50,
                  // width: 200,
                  child: Center(
                      child: Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  //width: 200,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buttomSection(context) {
    return Column(
      children: [
        Text(
          "or via social media",
          style: TextStyle(fontSize: 18.0, color: Colors.grey.withOpacity(0.8)),
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 32.0,
                width: 32.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/facebook.svg'),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            InkWell(
              child: Container(
                height: 32.0,
                width: 32.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/google.svg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
