// ignore_for_file: file_names, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/HomePageWidget.dart';
import 'local_provider/providerHomepage.dart';

class PagePlaylistCombiner extends StatefulWidget {
  const PagePlaylistCombiner({Key? key}) : super(key: key);

  @override
  State<PagePlaylistCombiner> createState() => _PagePlaylistCombinerState();
}

class _PagePlaylistCombinerState extends State<PagePlaylistCombiner> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderPlaylistCombiner(),
      child: HomePageWidget(),
    );
  }
}
