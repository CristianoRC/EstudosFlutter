import 'package:test/test.dart';
import '../descontos.dart';

void main() {
  const valorSemDesconto = 150.0;

  test('Deve clacular desconto corretamente utilizando valores decimais', () {
    const desconto = 25.0;
    const valorComDesconto = valorSemDesconto - desconto;

    expect(
        calcularDesconto(valorSemDesconto, desconto, false), valorComDesconto);
  });

  test('Deve clacular desconto corretamente utilizando porcentagem', () {
    var desconto = 10.0;
    var valorComDesconto = 135.0;
    expect(
        calcularDesconto(valorSemDesconto, desconto, true), valorComDesconto);
  });

  test('Deve dar erro ao calcula valor com desconto negativo ou zero', () {
    expect(() => calcularDesconto(valorSemDesconto, -1, true),
        throwsA(TypeMatcher<ArgumentError>()));

    expect(() => calcularDesconto(valorSemDesconto, 0, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Deve dar erro ao calcula valor com valor inicial zero', () {
    expect(() => calcularDesconto(0, 15, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Deve dar erro ao calcula valor com valor inicial negativo', () {
    expect(() => calcularDesconto(-1, 15, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });
}
