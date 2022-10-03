import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:smart_home_app/presentation/home/components/custom_header.dart';
import 'package:smart_home_app/presentation/widgets/loading_widget.dart';
import 'package:smart_home_app/utils/app_colors.dart';

import '../../../application/weather/weather_bloc.dart';
import '../../../infrastructure/api/client/api_key.dart';
import '../../../utils/app_style.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import 'custom_grid_view.dart';
import 'temperature_humidity_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  TabController? tabController;
  Position? position;
  WeatherBloc? weatherBloc;

  @override
  void initState() {
    weatherBloc = BlocProvider.of<WeatherBloc>(context);
    getCurrentPosition();
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  void getCurrentPosition() async {
    await Geolocator.requestPermission();
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {});

      log(position.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    if (position != null) {
      weatherBloc!.add(GetCurrentWeather(
          APIKeys.openWeatherAPIKey, position!.latitude, position!.longitude));
    }

    return SafeArea(
        child: Padding(
            padding: paddingAll(10),
            child: BlocConsumer<WeatherBloc, WeatherState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      position != null
                          ? const CustomHeader()
                          : const LoadingWidget(),
                      position != null
                          ? const TemperatureHumidityWidget(temp: 0, humd: 43)
                          : const LoadingWidget(),
                      Padding(
                          padding: paddingAll(30),
                          child: TabBar(
                            unselectedLabelColor: Colors.black.withOpacity(0.4),
                            labelColor: primaryColor,
                            tabs: const [
                              Tab(
                                text: 'Devices',
                              ),
                              Tab(
                                text: 'Rooms',
                              )
                            ],
                            labelStyle:
                                TextStyles.nunitoSans400.copyWith(fontSize: 15),
                            controller: tabController!,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: primaryColor,
                            indicatorPadding: paddingAll(10),
                            labelPadding: EdgeInsets.zero,
                          )),
                      Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: const [
                            CustomGridView(
                              key: Key("device"),
                            ),
                            CustomGridView(key: Key("room")),
                          ],
                        ),
                      ),
                    ],
                  );
                })));
  }
}
