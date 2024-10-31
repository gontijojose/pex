import 'package:flutter_test/flutter_test.dart';
import 'package:pex/main.dart';

void main() {
  testWidgets('Testando widget da Frutas Express', (WidgetTester tester) async {
    await tester.pumpWidget(FrutasExpressApp());
    expect(find.text('Produtos'), findsOneWidget);
  });
}
