import 'grafic.dart';
import 'model.dart';
import '../models/driver.dart';

List<GraficElement> grafics = [
  GraficElement(1, [
    const GraficModel(name: 'Поездка в школу', gfrom: 'Красная, 1', gto: 'Шевченко, 23', gmonth: '1 июня', gtime: '7:00'),
    const GraficModel(name: 'Поездка домой', gfrom: 'Шевченко, 23', gto: 'Красная, 1', gmonth: '1 июня', gtime: '13:00'),
    const GraficModel(name: 'Рисование', gfrom: 'Красная, 1', gto: 'Карасунская, 43', gmonth: '1 июня', gtime: '15:00'),
    const GraficModel(name: 'Поездка домой', gfrom: 'Карасунская, 43', gto: 'Красная, 1', gmonth: '1 июня', gtime: '17:00')
  ]),
  GraficElement(2, [
    const GraficModel(name: 'Поездка в школу', gfrom: 'Красная, 1', gto: 'Шевченко, 23', gmonth: '2 июня', gtime: '7:00'),
    const GraficModel(name: 'Поездка домой', gfrom: 'Шевченко, 23', gto: 'Красная, 1', gmonth: '2 июня', gtime: '13:00'),
    const GraficModel(name: 'Рисование', gfrom: 'Красная, 1', gto: 'Карасунская, 43', gmonth: '2 июня', gtime: '15:00'),
    const GraficModel(name: 'Поездка домой', gfrom: 'Карасунская, 43', gto: 'Красная, 1', gmonth: '2 июня', gtime: '17:00')
  ]),
  GraficElement(3, []),
  GraficElement(4, []),
  GraficElement(5, []),
  GraficElement(6, []),
  GraficElement(7, [])
];

List<DriverModel> drivers = [const DriverModel(), const DriverModel(), const DriverModel()];
