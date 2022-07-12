import 'dart:async';

import 'package:apiwithbloc/api/repository/user_repositories/users_repository.dart';
import 'package:apiwithbloc/dto/model%20/user/user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'users_event.dart';

part 'users_state.dart';

final UsersRepository apiRepository = UsersRepository();

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(UsersInitial()) {
    on<GetUserList>(_getCovidList);
  }

  void _getCovidList(GetUserList event, Emitter<UsersState> emit) async {
    try {
      emit(UsersLoading());
      final mList = await apiRepository.getUserList();
      emit(UsersLoaded(mList));
      if (mList.error != null) {
        emit(UsersError(mList.error));
      }
    } on NetworkError {
      emit(const UsersError('Connection error'));
    }
  }
}
