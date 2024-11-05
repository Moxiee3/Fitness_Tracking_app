import 'package:fitness_app/color/color.dart';
import 'package:fitness_app/details/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ActivityDetail extends StatefulWidget {
  const ActivityDetail({super.key});

  @override
  State<ActivityDetail> createState() => _ActivityDetailState();
}

class _ActivityDetailState extends State<ActivityDetail> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("images/avatar.png"),
                  radius: 20,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                ),
                Text(
                  "Nov 11, 2024",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                fitnessItems(
                  0,
                  Colors.deepOrange,
                  Icons.favorite_border,
                  "Heart",
                  "80",
                  "Per min",
                ),
                fitnessItems(
                  1,
                  primaryColor,
                  Icons.crisis_alert_sharp,
                  "Calories",
                  "950",
                  "Kcal",
                ),
                fitnessItems(
                  2,
                  Colors.orangeAccent,
                  Icons.nightlight_round_outlined,
                  "Sleep",
                  "8:30",
                  "Hours",
                ),
                fitnessItems(
                  4,
                  Colors.deepPurple,
                  Icons.timer_sharp,
                  "Training",
                  "2:00",
                  "Hours",
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Stack(
              children: [
                Positioned(
                  left: 80,
                  top: 50,
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.2,
                            thicknessUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.bothCurve,
                          ),
                          showTicks: false,
                          showLabels: false,
                          pointers: const [
                            RangePointer(
                              color: treecolor,
                              value: 80,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.2,
                              sizeUnit: GaugeSizeUnit.factor,
                            ),
                          ],
                          annotations: const [
                            GaugeAnnotation(
                              widget: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2.0",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "KM",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              positionFactor: 0.1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.15,
                            thicknessUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.bothCurve,
                          ),
                          showTicks: false,
                          showLabels: false,
                          pointers: const [
                            RangePointer(
                              color: secondaryColor,
                              value: 65,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.15,
                              sizeUnit: GaugeSizeUnit.factor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 140,
                  child: Image.asset(
                    "images/run.png",
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: const Stack(
              clipBehavior: Clip.none,
              children: [
                MyLineChart(),
                Positioned(
                  top: -10,
                  left: 90,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: secondaryColor,
                  ),
                ),
                Positioned(
                    bottom: 25,
                    left: 15,
                    right: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1km",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "2km",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "3km",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "4km",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "5km",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "6km",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded fitnessItems(int index, color, icon, name, value, unit) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          border: Border.all(
            color: currentIndex == index ? secondaryColor : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              unit,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
