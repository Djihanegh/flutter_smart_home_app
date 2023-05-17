import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home_app/utils/constants.dart';

import '../../../application/weather/weather_bloc.dart';
import '../../../utils/app_style.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/size_config.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key, required this.onRefresh}) : super(key: key);

  final Function onRefresh;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {},
        builder: (context, state) {
          Widget? child;

          switch (state.status) {
            case WeatherStatus.loading:
              child = const LoadingWidget();
              break;

            case WeatherStatus.initial:
              child = const LoadingWidget();
              break;

            case WeatherStatus.failure:
              child = Center(
                  child: CustomErrorWidget(
                refresh: () => onRefresh(),
                errorMessage: state.errorMessage!,
              ));

              break;

            case WeatherStatus.success:
              child = Padding(
                  padding: paddingAll(10),
                  child: Wrap(
                    spacing: 10,
                    children: [
                      AutoSizeText(
                        welcomeText,
                        style: TextStyles.nunitoSans.copyWith(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: SizeConfig.screenWidth! * 0.055),
                      ),
                      AutoSizeText(
                        "${state.data?['sys']['country']}, ${state.data?['name']}",
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.nunitoSans.copyWith(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: SizeConfig.screenWidth! * 0.06),
                      )
                    ],
                  ));
              break;
            default:
          }

          return child!;
        });
  }
}
