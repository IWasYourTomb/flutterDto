import 'package:apiwithbloc/api/repository/api_repository.dart';
import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'covid_event.dart';

part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc() : super(CovidInitial()) {
    final ApiRepository apiRepository = ApiRepository();
    on<GetCovidList>((event, emit) async {
      try {
        emit(CovidLoading());
        final mList = await apiRepository.getCovidList();
        emit(CovidLoaded(mList));
        if (mList.error != null) {
          emit(CovidError(mList.error));
        }
      } on NetworkError {
        emit(const CovidError('Connection error'));
      }
    });
  }
}
