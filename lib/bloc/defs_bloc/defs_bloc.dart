import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../Service/defs_service.dart';
import '../../models/defs.dart';

part 'defs_bloc.freezed.dart';

part 'defs_event.dart';

part 'defs_state.dart';

class DefsBloc extends Bloc<DefsEvent, DefsState> {
  DefsService service = DefsService();
  DefsModel? defs = DefsModel(id: '');

  DefsBloc() : super(const DefsState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_SaveDefsEvent>(_onSaveEvent);
  }

  void _onSaveEvent(
      _SaveDefsEvent event,
      Emitter<DefsState> emit,
      ) async {
    service.saveDefs(event.key, event.defs);
  }

  void _onInitialEvent(_InitialEvent event,
      Emitter<DefsState> emit,) async {
    await service.getDefs(event.key).then((value) async {
      defs = value;
    },
    );
    emit(_DataState(defs: defs,),);
  }
}

