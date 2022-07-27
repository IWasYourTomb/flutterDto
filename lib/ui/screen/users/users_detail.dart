import 'package:apiwithbloc/dto/model%20/user/user.dart';
import 'package:apiwithbloc/ui/widget/animation/fade_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  static const id = '/detail';
  final Users users;
  final int index;

  const UserDetail({required this.index, required this.users, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: FadeAnimation(
                delay: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              users.results![index].picture!.large!),
                          fit: BoxFit.cover)),
                ),
              )
            ),
            FadeAnimation(
                delay: 0.1,
                child: Column(
                      children: [
                        Text('${users.results![index].name!.first!} ${users.results![index].name!.last!}', style: const TextStyle(fontSize: 20)),
                        Text('Email:${users.results![index].email!}', style: const TextStyle(fontSize: 20)),
                        Text('Gender: ${users.results![index].gender!}', style: const TextStyle(fontSize: 20)),
                        Text('Username: ${users.results![index].login!.username!}', style: const TextStyle(fontSize: 20)),
                        Text('Age: ${users.results![index].dob!.age.toString()}', style: const TextStyle(fontSize: 20)),
                      ],
                  )
            )
          ],
        ));
  }
}
