import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_api/app/modules/home/provider/home_provider.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    final dataProvider = Provider.of<HomeProvider>(context, listen: false);
    dataProvider.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

