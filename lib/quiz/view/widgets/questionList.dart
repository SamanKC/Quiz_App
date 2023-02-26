import 'package:flutter/material.dart';

import '../../model/result.dart';
import '../../view_models/api_services.dart';

List<Result> apiServices = [];
Future<List<Result>> apiMethod() async {
  apiServices = await ApiServices().getQuizfromApi();
  return apiServices;
}

Widget questionList() {
  return FutureBuilder<List<Result>>(
    future: apiMethod(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        var data = snapshot.data;
        return ListView.builder(
          shrinkWrap: true,
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Q. ${data[index].question.toString()}",
                            style: const TextStyle(
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "Ans. ${data[index].correctAnswer.toString()}",
                            style: const TextStyle(fontSize: 16),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: data[index].incorrectAnswers!.length,
                            itemBuilder: (context, int inx) {
                              return Text(
                                "Ans. ${data[index].incorrectAnswers![inx]}",
                                style: const TextStyle(fontSize: 16),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            );
          },
        );
      } else if (snapshot.hasError) {
        return Text('${snapshot.error}');
      }
      return const CircularProgressIndicator();
    },
  );
}
