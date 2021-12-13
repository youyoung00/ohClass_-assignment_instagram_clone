import 'package:flutter/material.dart';


class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Album Page"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
            ), itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Container(
                  color: Colors.red,
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2020/04/18/17/06/decoration-5060006__480.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              );
          },
        ),
      )
    );
  }
}
