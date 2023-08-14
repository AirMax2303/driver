import 'model.dart';
import '../models/driver.dart';

List<GraficElement> grafics = [
  GraficElement(1, [
    RouteModel(name: 'Поездка в школу', from: 'Красная, 1', to: 'Шевченко, 23', month: '1 июня', time: '7:00'),
    RouteModel(name: 'Поездка домой', from: 'Шевченко, 23', to: 'Красная, 1', month: '1 июня', time: '13:00'),
    RouteModel(name: 'Рисование', from: 'Красная, 1', to: 'Карасунская, 43', month: '1 июня', time: '15:00'),
    RouteModel(name: 'Поездка домой', from: 'Карасунская, 43', to: 'Красная, 1', month: '1 июня', time: '17:00')
  ]),
  GraficElement(2, [
    RouteModel(name: 'Поездка в школу', from: 'Красная, 1', to: 'Шевченко, 23', month: '2 июня', time: '7:00'),
    RouteModel(name: 'Поездка домой', from: 'Шевченко, 23', to: 'Красная, 1', month: '2 июня', time: '13:00'),
    RouteModel(name: 'Рисование', from: 'Красная, 1', to: 'Карасунская, 43', month: '2 июня', time: '15:00'),
    RouteModel(name: 'Поездка домой', from: 'Карасунская, 43', to: 'Красная, 1', month: '2 июня', time: '17:00')
  ]),
  GraficElement(3, []),
  GraficElement(4, []),
  GraficElement(5, []),
  GraficElement(6, []),
  GraficElement(7, [])
];

List<DriverModel> drivers = [DriverModel(), DriverModel(), DriverModel()];
