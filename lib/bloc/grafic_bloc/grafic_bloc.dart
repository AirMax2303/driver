import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../Service/grafic_service.dart';
import '../../models/grafic.dart';
import '../../models/model.dart';

part 'grafic_bloc.freezed.dart';

part 'grafic_event.dart';

part 'grafic_state.dart';

class GraficBloc extends Bloc<GraficEvent, GraficState> {
  final GraficService service;

  GraficBloc(this.service) : super(const GraficState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_AddGraficEvent>(_onAddEvent);
  }

  void _onAddEvent(
      _AddGraficEvent event,
      Emitter<GraficState> emit,
      ) async {
    service.addGrafic(event.grafic);
    emit(_DataState(list: service.list,));
  }

  void _onInitialEvent(
      _InitialEvent event,
      Emitter<GraficState> emit,
      ) async {
    await service.getGraficList(event.clientId).then((value) => emit(_DataState(list: value,),)
//    emit(_DataState(list: service.list,),
    );
  }
}
