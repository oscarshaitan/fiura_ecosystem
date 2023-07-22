import 'package:fiura_ecosystem/features/widgets/image_loader_widget.dart';
import 'package:flutter/material.dart';

class PostViewWidget extends StatelessWidget {
  final String description;
  final String urlPhoto;
  const PostViewWidget(
      {super.key, required this.description, required this.urlPhoto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200.0,
            child: ImageLoaderWidget(url: urlPhoto),
          ),
          Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Text(
                description,
                textAlign: TextAlign.start,
              )),
        ],
      ),
    );
  }
}
