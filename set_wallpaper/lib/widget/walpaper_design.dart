import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:set_wallpaper/widget/full_screen_image.dart';

class WallpaperDesign extends StatefulWidget {
  @override
  _WallpaperDesignState createState() => _WallpaperDesignState();
}

class _WallpaperDesignState extends State<WallpaperDesign> {
  List images = [];
  int page = 1;
  bool loading = false;
  fetchWalpaper() async {
    await http.get(Uri.parse('https://api.pexels.com/v1/curated?per_page=80'),
        headers: {
          'Authorization':
              '563492ad6f917000010000017a2ba63cbafb40c0bc0aa59afe91c850'
        }).then((value) {
      Map response = jsonDecode(value.body);
      setState(() {
        images = response['photos'];
      });
    });
  }

  @override
  void initState() {
    fetchWalpaper();
    super.initState();
  }

  loadMore() async {
    setState(() {
      page = page + 1;
    });
    String url =
        'https://api.pexels.com/v1/curated?per_page=80&page' + page.toString();
    loading = true;
    await http.get(Uri.parse(url), headers: {
      'Authorization':
          '563492ad6f917000010000017a2ba63cbafb40c0bc0aa59afe91c850'
    }).then((value) {
      Map response = jsonDecode(value.body);
      setState(() {
        images.addAll(response['photos']);
      });
    });
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Container(
            child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    childAspectRatio: 2 / 3),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullScrrenImage(
                                  images[index]['src']['large2x'])));
                    },
                    child: Container(
                      color: Colors.white,
                      child: Image.network(
                        images[index]['src']['tiny'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          )),
          GestureDetector(
            onTap: loadMore,
            child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: Center(
                  child: loading
                      ? CircularProgressIndicator()
                      : Text(
                          "Load More!!",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                )),
          ),
        ],
      )),
    );
  }
}
