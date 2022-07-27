import 'package:apiwithbloc/dto/model%20/user/user.dart';
import 'package:apiwithbloc/ui/screen/users/users_detail.dart';
import 'package:apiwithbloc/ui/widget/scroll/sroll_behavior.dart';
import 'package:flutter/material.dart';


Widget cardUserList(BuildContext context, Users model) {
  final void Function(Users userCourse) onPressed;
  return Column(children: <Widget>[
    Expanded(
        child: SizedBox(
      height: double.infinity,
      child: ScrollConfiguration(
        behavior: ScrollLeftBehavior(),
        child: ListView.builder(
            itemCount: model.results!.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    shadowColor: Colors.grey,
                    child: Container(
                        margin: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  model.results![index].picture!.medium!),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                        'Name: ${model.results![index].name!.first}'),
                                  ),
                                  Center(
                                    child: Text(
                                        'Phone: ${model.results![index].phone}'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetail(users: model, index: index,)));
                  },
                ),
              );
            }),
      ),
    ))
  ]);
}


