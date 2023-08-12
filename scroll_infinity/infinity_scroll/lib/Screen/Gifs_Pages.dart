import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinity_scroll/models/Modelo.dart';
import 'package:infinity_scroll/providers/Gif_provider.dart';

class GifPages extends StatefulWidget {
  final String title;

  const GifPages({required this.title});

  @override
  _GifPagesState createState() => _GifPagesState();
}

class _GifPagesState extends State<GifPages> {
  List<Modelo> gifs = [];
  int i = 0;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadGifs();
    _scrollController.addListener(_scrollListener);
  }

  Future<void> _loadGifs() async {
    final listGifs = await GifProvider().getGifs(offset: i);
    setState(() {
      gifs.addAll(listGifs);
      i += listGifs.length;
    });
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadGifs();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        controller: _scrollController,
        itemCount: gifs.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(gifs[index].images!.fixedHeight!.url!);
        },
      ),
    );
  }
}
