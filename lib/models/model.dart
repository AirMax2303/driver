import 'grafic.dart';

typedef IndexCallback = void Function(int index);

class GraficElement {
  int dayweek = 1;
  List<GraficModel> routes = [];
  GraficElement(this.dayweek, this.routes);
}
