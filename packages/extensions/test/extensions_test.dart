import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:extensions/extensions.dart';

void main() {
  Widget _makeTestable(Widget widget) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: Column(
            children: [widget],
          ),
        ),
      );

  group('text_extension: ', () {
    testWidgets('Find text', (WidgetTester tester) async {
      final widget = Text('Hello word!');

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.text('Hello word!'), findsOneWidget);
    });

    testWidgets('Typography h3, has default fontSize = 16',
        (WidgetTester tester) async {
      final widget = Text('Hello word!').h3();

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final textExtension = tester.widget<Text>(find.byType(Text).first);

      expect(textExtension.style.fontSize, 16.0);
    });

    testWidgets('Typography h3, has default color = black (Color(0xFF3F3E3E))',
        (WidgetTester tester) async {
      final widget = Text('Hello word!').h3();

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final textExtension = tester.widget<Text>(find.byType(Text).first);

      expect(textExtension.style.color, Color(0xFF3F3E3E));
    });

    testWidgets('Typography h3, change color to blue (Colors.blue)',
        (WidgetTester tester) async {
      final widget = Text('Hello word!').h3(color: Colors.blue);

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final textExtension = tester.widget<Text>(find.byType(Text).first);

      expect(textExtension.style.color, Colors.blue);
    });
  });

  group('selectable_text_extension: ', () {
    testWidgets('Find text', (WidgetTester tester) async {
      final widget = SelectableText('Hi!');

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.text('Hi!'), findsOneWidget);
    });

    testWidgets('Typography b2, has default fontSize = 14',
        (WidgetTester tester) async {
      final widget = SelectableText('Hello word!').b2();

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final textExtension =
          tester.widget<SelectableText>(find.byType(SelectableText).first);

      expect(textExtension.style.fontSize, 14.0);
    });

    testWidgets('Typography b2, has default color = black (Color(0xFF3F3E3E))',
        (WidgetTester tester) async {
      final widget = SelectableText('Hello word!').b2();

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final textExtension =
          tester.widget<SelectableText>(find.byType(SelectableText).first);

      expect(textExtension.style.color, Color(0xFF3F3E3E));
    });

    testWidgets('Typography b2, change color to blue (Colors.blue)',
        (WidgetTester tester) async {
      final widget = SelectableText('Hello word!').b2(color: Colors.blue);

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final textExtension =
          tester.widget<SelectableText>(find.byType(SelectableText).first);

      expect(textExtension.style.color, Colors.blue);
    });
  });
}
