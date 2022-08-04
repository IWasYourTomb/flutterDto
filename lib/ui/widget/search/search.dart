// import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';
// import 'package:flutter/material.dart';
// import 'package:supercharged/supercharged.dart';
//
// class Search extends SearchDelegate<String> {
//
//   final List<String> covidAllCity;
//   final List<String> covidCitySuggestion;
//
//   Search({required this.covidAllCity, required this.covidCitySuggestion});
//
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = '';
//           },
//           icon: const Icon(Icons.clear))
//     ];
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(onPressed: () {}, icon: const Icon(Icons.clear));
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     final List<String> allCity = covidAllCity.where((covidCity) => covidCitySuggestion.contains(query.toLowerCase())).toList();
//
//     return ListView.builder(
//       itemBuilder: allCity.length,
//
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     throw UnimplementedError();
//   }
// }
