import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import '../../Service/defs_service.dart';
import '../../models/defs.dart';

part 'defs_bloc.freezed.dart';

part 'defs_event.dart';

part 'defs_state.dart';

class DefsBloc extends Bloc<DefsEvent, DefsState> {
  final DefsService service;

  DefsBloc(this.service) : super(const DefsState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_SaveDefsEvent>(_onSaveEvent);
  }

  void _onSaveEvent(
      _SaveDefsEvent event,
      Emitter<DefsState> emit,
      ) async {
    service.setDefs(event.key);
  }

  void _onInitialEvent(_InitialEvent event,
      Emitter<DefsState> emit,) async {
    await service.getDefs(event.key).then((value) async {
//      defs = value;
    },
    );
    emit(_DataState(defs: service.defs,),);
  }
}

