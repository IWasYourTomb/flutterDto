import 'package:apiwithbloc/bloc/user_bloc/users_bloc.dart';
import 'package:apiwithbloc/ui/screen/users/widget/card_user/card_user.dart';

import 'package:apiwithbloc/utils/bloc/bloc_inital.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widget/error/error.dart';
import '../../../../widget/loading/loading.dart';


Widget listUser() {
  return Container(
    margin: const EdgeInsets.all(8.0),
    child: MultiBlocListener(
      listeners: BlocInitial.listener,
      child: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          if (state is UsersInitial) {
            return loading();
          } else if (state is UsersLoading) {
            return loading();
          } else if (state is UsersLoaded) {
            return cardUserList(context, state.users);
          } else if (state is UsersError) {
            return error();
          }
          return Container();
        },
      ),
    ),
  );
}
