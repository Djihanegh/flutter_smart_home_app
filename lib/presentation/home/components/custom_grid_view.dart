import 'package:flutter/cupertino.dart';

import '../../../utils/size_config.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.only(
          left: SizeConfig.screenWidth! / 4,
          right: SizeConfig.screenWidth! / 4,
          top: SizeConfig.screenHeight! * 0.15),
      itemCount: 10,
      itemBuilder: (BuildContext ctx, index) {
        return Container();
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 0),
    );
  }
}
