import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/weather/weather_bloc.dart';
import '../../../utils/app_style.dart';
import '../../../utils/app_texts.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

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
                refresh: () {
                  //_refresh();
                },
                errorMessage: state.errorMessage!,
              ));

              break;

            case WeatherStatus.success:
              child = Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    welcomeText,
                    style: TextStyles.nunitoSans.copyWith(
                        color: Colors.black.withOpacity(0.8), fontSize: 25),
                  ),
                  AutoSizeText(
                      "${state.data?['sys']['country']}, ${state.data?['name']}")
                ],
              );
              break;
            default:
          }

          return child!;
        });
  }
}
