import 'package:test/test.dart';
import '../descontos.dart';

void main() {
  const valorSemDesconto = 150.0;

  test('Deve clacular desconto corretamente', () {
    var desconto = 25.0;
    expect(calcularDesconto(valorSemDesconto, desconto, false),
        valorSemDesconto - desconto);
  });

  test('Deve clacular desconto(Porcentagem) corretamente', () {
    var desconto = 10.0;
    var valorCalculadoManualmente = 135.0;
    expect(calcularDesconto(valorSemDesconto, desconto, true),
        valorCalculadoManualmente);
  });

  test('Deve dar erro ao calcula valor com desconto negativo ou zero', () {
    expect(() => calcularDesconto(valorSemDesconto, -1, true),
        throwsA(TypeMatcher<ArgumentError>()));

    expect(() => calcularDesconto(valorSemDesconto, 0, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Deve dar erro ao calcula valor com valor inicial negativo ou zero', () {
    expect(() => calcularDesconto(0, 15, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Deve dar erro ao calcula valor com valor inicial negativo ou zero', () {
    expect(() => calcularDesconto(-1, 15, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });
}
