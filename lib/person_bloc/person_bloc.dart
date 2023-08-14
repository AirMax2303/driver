import 'package:driver/person_bloc/personService.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/person.dart';

part 'person_bloc.freezed.dart';

part 'person_event.dart';

part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonService service = PersonService();
  List<PersonModel>? list = [];

  PersonBloc() : super(const PersonState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
  }

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<PersonState> emit,
  ) async {
    await service.getPersonList().then(
      (value) async {
        list = value;
      },
    );
    emit(
      _DataState(
        list: list,
      ),
    );
  }
}
