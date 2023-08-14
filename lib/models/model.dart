typedef IndexCallback = void Function(int index);


/*
  Map<String, String> toMapCar() {
    return {
      'Марка': carbrand!,
      'Модель': carmodel!,
      'Цвет': carcolor!,
      'Год выпуска': caryear!,
      'Гос номер': carNP!,
      'СТС': carCTC!,
    };
  }
 */

class RouteModel {
  String? graficid = '';
  String? name = '';
  String? from = '';
  String? to = '';
  String? month = '';
  String? time = '';
  RouteModel({this.graficid, this.name, this.from, this.to, this.month, this.time});
}

class GraficElement {
  int dayweek = 1;
  List<RouteModel> routes = [];
  GraficElement(this.dayweek, this.routes);
}
