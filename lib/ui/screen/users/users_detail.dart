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
          title: const Text('About User'),
        ),
        body: FadeAnimation(
                delay: 0.5,
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                            width: 120,
                            height: 120,
                            child:
                            Image.network(users.results![index].picture!.large!)),
                      ),
                    ),
                   const Divider(color: Colors.black,),
                    Text('Name:${users.results![index].name!.first!}', style: const TextStyle(fontSize: 20)),
                    Text('Email: ${users.results![index].email!}', style: const TextStyle(fontSize: 20)),
                    Text('Gender: ${users.results![index].gender!}', style: const TextStyle(fontSize: 20)),
                    Text('Username: ${users.results![index].login!.username!}', style: const TextStyle(fontSize: 20)),
                  ],
                ))
        );
  }
}
