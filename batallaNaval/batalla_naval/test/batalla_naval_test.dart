import 'dart:js_util';

import 'package:batalla_naval/batalla_naval.dart';
import 'package:test/test.dart';

void main() {
  test('barco este entero', () {
    Barco barco = new Barco(3);
    expect(barco.estaIntacto, equals(true));
  });
  test('Si barco(s) debe mandar excepcion', () {
    expect(()=>Barco(5), throwsA(isA<EsloraIncorrectaDeBarco>()));
  });

}



class EsloraIncorrectaDeBarco implements Exception{

}

Set eslorasCorrectas = {1,2,3,4};

class Barco{
bool _estaIntacto = true;
late final int _eslora;

bool get estaIntacto => _estaIntacto;
int get eslora => _eslora;

Barco(int es){
  if (!eslorasCorrectas.contains(es)) throw EsloraIncorrectaDeBarco();
  _eslora = es;
}
}