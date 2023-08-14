import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../Service/driver_service.dart';
import '../../models/driver.dart';

part 'driver_bloc.freezed.dart';

part 'driver_event.dart';

part 'driver_state.dart';

class DriverBloc extends Bloc<DriverEvent, DriverState> {
  DriverService service = DriverService();
  List<DriverModel>? list = [];

  DriverBloc() : super(const DriverState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_AddDriverEvent>(_onAddEvent);
    on<_GetDriverEvent>(_onGetEvent);
  }

  void _onGetEvent(
      _GetDriverEvent event,
      Emitter<DriverState> emit,
      ) async {
    await service.getDriver(event.id).then((value) async {
      emit(_DataDriverState(driver: value,));
    },
    );
  }

  void _onAddEvent(
      _AddDriverEvent event,
      Emitter<DriverState> emit,
      ) async {
    service.add(event.value);
  }

  void _onInitialEvent(
      _InitialEvent event,
      Emitter<DriverState> emit,
      ) async {
    await service.getList().then((value) async {
        list?.addAll(value);
      },
    );
    emit(_DataState(list: list,),
    );
  }
}
