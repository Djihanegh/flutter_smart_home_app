import 'package:flutter/cupertino.dart';
import 'package:smart_home_app/presentation/home/components/device_item.dart';
import 'package:smart_home_app/utils/app_assets.dart';

import '../../../utils/constants.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext ctx, index) {
        return const Deviceitem(
            title: "Lamp", subtitle: 'Turning on', image: lamp, isOn: true);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
    );
  }
}
