import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home_app/utils/app_style.dart';

import '../../../application/weather/weather_bloc.dart';
import '../../../utils/app_texts.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';

class TemperatureHumidityWidget extends StatelessWidget {
  const TemperatureHumidityWidget({
    Key? key,
    required this.onRefresh,
  }) : super(key: key);
  final Function onRefresh;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {},
        builder: (context, state) {
          Widget? child;

          switch (state.status) {
            case WeatherStatus.loading:
              child = const SizedBox.shrink(); // const LoadingWidget();
              break;

            case WeatherStatus.initial:
              child = const SizedBox.shrink(); // const LoadingWidget();
              break;

            case WeatherStatus.failure:
              child = const SizedBox.shrink();
              /* Center(
                  child: CustomErrorWidget(
                refresh: () => onRefresh(),
                errorMessage: state.errorMessage!,
              ));*/

              break;

            case WeatherStatus.success:
              child = AutoSizeText(
                '$temperature ${state.data?['main']['temp']}" | $humidity ${state.data?['main']['humidity']}%',
                style: TextStyles.nunitoSans400.copyWith(
                    color: Colors.black.withOpacity(0.4), fontSize: 12),
              );

              break;
            default:
          }

          return child!;
        });
  }
}
