// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utube_playlist_combiner/pages/combined/components/SongWidget.dart';
import 'package:utube_playlist_combiner/pages/combined/local_provider/providerCombined.dart';

class CombinedWidget extends StatefulWidget {
  final List<String> songsIDs;

  const CombinedWidget({Key? key, required this.songsIDs}) : super(key: key);

  @override
  State<CombinedWidget> createState() => _CombinedWidgetState();
}

class _CombinedWidgetState extends State<CombinedWidget> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProviderCombined>(context, listen: false).songsIDs =
        widget.songsIDs;

    Provider.of<ProviderCombined>(context, listen: false)
        .getVideoItemsFromSongs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(child: _videsWidgetDecider()),
      ),
    );
  }

  Widget _videsWidgetDecider() {
    if (Provider.of<ProviderCombined>(context, listen: false).itemVideos ==
        null) {
      return Text("Processing songs");
    } else {
      if (Provider.of<ProviderCombined>(context, listen: false)
          .itemVideos!
          .isEmpty)
        return Text("Processing songs");
      else {
        //songs are there
        return Column(
            children: List.generate(
                Provider.of<ProviderCombined>(context, listen: false)
                    .itemVideos!
                    .length,
                (index) => SongWidget()));
      }
    }
  }
}
