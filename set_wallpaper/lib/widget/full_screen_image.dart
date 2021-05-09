import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class FullScrrenImage extends StatefulWidget {
  FullScrrenImage(this.image);
  final String image;

  @override
  _FullScrrenImageState createState() => _FullScrrenImageState();
}

class _FullScrrenImageState extends State<FullScrrenImage> {
  bool loader = false;

  Future<void> setWalpaper() async {
    loader = true;
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.image);

    await WallpaperManager.setWallpaperFromFile(file.path, location);
    loader = false;
  }

  downloadImage(String url) async {
    int value = 0;
    loader = true;
    var response = await get(Uri.parse(url));
    print("Response: $response");
    var documentDirectory = await getApplicationDocumentsDirectory();
    print("documentdirectory $documentDirectory");
    var firstPath = documentDirectory.path + "/wallpaper";
    print("firstpath $firstPath");
    value = value + 1;
    var filePathAndName = documentDirectory.path + '/wallpaper/$value';
    print("filepathandname $filePathAndName");

    await Directory(firstPath).create(recursive: true);
    File file2 = new File(filePathAndName);
    file2.writeAsBytesSync(response.bodyBytes);
    print("saved");
  }

  chooseMethod() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: loader ? CircularProgressIndicator() : Text("Download"),
                onTap: () {
                  downloadImage(widget.image);
                },
              ),
              ListTile(
                title: loader
                    ? CircularProgressIndicator()
                    : Text("Set Wallpaper"),
                onTap: () {
                  setWalpaper();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 10,
                right: MediaQuery.of(context).size.width * 0.05,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: chooseMethod,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
