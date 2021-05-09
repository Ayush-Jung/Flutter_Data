import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class FullScrrenImage extends StatefulWidget {
  FullScrrenImage(this.image);
  final String image;
  @override
  _FullScrrenImageState createState() => _FullScrrenImageState();
}

class _FullScrrenImageState extends State<FullScrrenImage> {
  Future<void> setWalpaper() async {
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.image);
    String result =
        await WallpaperManager.setWallpaperFromFile(file.path, location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.network(widget.image),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.black,
                child: Center(
                  child: Text("Set Walpaper"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
