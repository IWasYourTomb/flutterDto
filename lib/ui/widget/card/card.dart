import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';
import 'package:flutter/material.dart';

Widget cardList(BuildContext context, Covid model) {
  return ListView.builder(
      itemCount: model.countries!.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8.0),
          child: Card(
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
        );
      });
}
