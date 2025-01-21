import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart'; // Certifique-se de que o caminho esteja correto.

void main() {
  testWidgets('Testando layout da página motivacional', (WidgetTester tester) async {
    // Constrói o aplicativo e inicia o teste.
    await tester.pumpWidget(MyApp());

    // Verifica se o título da AppBar está correto.
    expect(find.text('Frases Motivacionais'), findsOneWidget);

    // Verifica se as frases estão sendo exibidas.
    expect(
      find.text('"O sucesso é a soma de pequenos esforços repetidos dia após dia."'),
      findsOneWidget,
    );
    expect(
      find.text('"Acredite em si mesmo e todo o resto se encaixará."'),
      findsOneWidget,
    );
    expect(
      find.text('"A persistência é o caminho do êxito."'),
      findsOneWidget,
    );

    // Verifica se os containers estão com as cores corretas.
    final blueSection = tester.widget<Container>(
      find.byWidgetPredicate((widget) => widget is Container && widget.color == Colors.blueAccent),
    );
    final greenSection = tester.widget<Container>(
      find.byWidgetPredicate((widget) => widget is Container && widget.color == Colors.greenAccent),
    );
    final orangeSection = tester.widget<Container>(
      find.byWidgetPredicate((widget) => widget is Container && widget.color == Colors.orangeAccent),
    );

    expect(blueSection, isNotNull);
    expect(greenSection, isNotNull);
    expect(orangeSection, isNotNull);
  });
}
