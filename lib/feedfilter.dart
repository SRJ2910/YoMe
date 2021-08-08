import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

SfRangeValues _values = SfRangeValues(20, 35);

class Filter extends StatefulWidget {
  Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: new Scaffold(
          appBar: AppBar(
            title: const Text('Filter Your Feed',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    // fontFamily: 'sans-serif-light',
                    color: Colors.black)),
          ),
          body: Center(
            child: new ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // height: 200,
                        // width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.male_rounded,
                            size: 50,
                            color: Colors.blue,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[50], // background
                            // onPrimary: Colors.white, // foreground
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // height: 200,
                        // width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.female_rounded,
                            size: 50,
                            color: Colors.pink,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink[50], // background
                            // onPrimary: Colors.white, // foreground
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
          // Center(
          //   child: SfRangeSlider(
          //     min: 18,
          //     max: 80,
          //     values: _values,
          //     interval: 8,
          //     showTicks: true,
          //     showLabels: true,
          //     enableTooltip: true,
          //     minorTicksPerInterval: 1,
          //     onChanged: (SfRangeValues values) {
          //       setState(() {
          //         _values = values;
          //       });
          //     },
          //   ),
          // ),
          ),
    );
  }
}
