part of 'grafic_bloc.dart';

@freezed
class GraficEvent with _$GraficEvent {
  const factory GraficEvent.initial(String clientId) = _InitialEvent;
  const factory GraficEvent.addGrafic(GraficModel grafic) = _AddGraficEvent;
}