import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_api/app/modules/home/model/home_model.dart';
import 'package:provider_with_api/app/modules/home/provider/home_provider.dart';

import '../../../root/widgets/list_type_global_widgets.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('sajksna'),
        ),
        body: Consumer<HomeProvider>(
          builder: (context, value, child) {
            final data = value.homeModel.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (_, index) {
                final singledata = data[index];
                return ListTypeGlobalWidgets(
                  avater: singledata.avatar,
                  email: singledata.email,
                  onClick: (){

                  },
                  onLongClick: (){
                    print('metthod called');
                    data.removeAt(index);
                  },
                );
              },
            );
          },
        ));
  }
}
