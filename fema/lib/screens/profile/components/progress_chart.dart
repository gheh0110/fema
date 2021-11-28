import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

@override
  

    class ChartData {
      ChartData(this.x, this.y, this.size);
        final String x;
        final int y;
        final String size;
    }

class ProgressData extends StatelessWidget {
  const ProgressData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final List<ChartData> chartData = [
            ChartData('Total Burned', 100, '100%'),
            ChartData('Total Workout', 100, '100%'),
        ];
        return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),

            child: SfCircularChart(
              legend: Legend(isVisible: true,isResponsive: true, position: LegendPosition.bottom),
              series: <CircularSeries>[
                // Render pie chart
                PieSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    dataLabelSettings: const DataLabelSettings(isVisible : true),
                    explode: true,
                    explodeIndex: 1,
                    pointRadiusMapper: (ChartData data, _) => data.size
                )
            ])
        );
    }
}
