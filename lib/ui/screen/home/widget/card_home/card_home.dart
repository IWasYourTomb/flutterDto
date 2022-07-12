import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';
import 'package:flutter/material.dart';

Widget cardHomeList(BuildContext context, Covid model) {
  return Column(children: <Widget>[
    Expanded(
        child: SizedBox(
      height: double.infinity,
      child: ScrollConfiguration(
        behavior: ScrollLeftBehavior(),
        child: ListView.builder(
            itemCount: model.countries!.length,
            itemBuilder: (context, index) {
              return Container(

                margin: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)), shadowColor: Colors.grey,
                    child: Container(
                        margin: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text('Country: ${model.countries![index].country}'),
                            Text(
                                'Total Confirmed: ${model.countries![index].totalConfirmed}'),
                            Text(
                                'Total Deaths: ${model.countries![index].totalDeaths}'),
                            Text(
                                'Total Recovered: ${model.countries![index].totalRecovered}'),
                          ],
                        )),
                  ),
                  onTap: () {},
                ),
              );
            }),
      ),
    ))
  ]);
}

class ScrollLeftBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
