import 'package:custom_buttons/src/loading/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_buttons/custom_buttons.dart';

void main() {
  Widget _makeTestable(Widget button) => MaterialApp(home: button);

  group('PrimaryButton Widget', () {
    testWidgets('shown', (WidgetTester tester) async {
      final widget = PrimaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.byType(PrimaryButton), findsOneWidget);
    });

    testWidgets("Should see text 'Click me'", (WidgetTester tester) async {
      final widget = PrimaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.text('Click me'), findsOneWidget);
    });

    testWidgets('Enabled Button onPressed called on tapping FlatButton',
        (WidgetTester tester) async {
      bool pressed = false;
      final widget = PrimaryButton(
          label: 'Click me',
          onPressed: () {
            pressed = true;
          });

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      await tester.tap(find.byType(FlatButton));

      expect(pressed, true);
    });

    testWidgets('Enabled Button text color should be white50',
        (WidgetTester tester) async {
      final widget = PrimaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final labelButton = tester.widget<Text>(find.byType(Text));

      expect(find.text('Click me'), findsOneWidget);
      expect(labelButton.style.color, Color(0xFFFFFFFF));
    });

    testWidgets('Enabled Button color should be purple',
        (WidgetTester tester) async {
      final widget = PrimaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final flatButton = tester.widget<FlatButton>(find.byType(FlatButton));

      expect(flatButton.color, Colors.deepPurple);
    });

    testWidgets('Disabled Button onPressed not called on tapping FlatButton',
        (WidgetTester tester) async {
      bool pressed = false;
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {
          pressed = true;
        },
        disabled: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      await tester.tap(find.byType(FlatButton));

      expect(pressed, false);
    });

    testWidgets('Disabled Button text color should be grey200',
        (WidgetTester tester) async {
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {},
        disabled: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final labelButton = tester.widget<Text>(find.byType(Text));

      expect(find.text('Click me'), findsOneWidget);
      expect(labelButton.style.color, Color(0xFFA6A6A6));
    });

    testWidgets('Disabled Button color should be grey50',
        (WidgetTester tester) async {
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {},
        disabled: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final flatButton = tester.widget<FlatButton>(find.byType(FlatButton));

      expect(flatButton.disabledColor, Color(0xFFF2F2F2));
    });

    testWidgets('Loading Button onPressed not called on tapping FlatButton',
        (WidgetTester tester) async {
      bool pressed = false;
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {
          pressed = true;
        },
        loading: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      await tester.tap(find.byType(FlatButton));

      expect(pressed, false);
    });

    testWidgets('Loading Button should be show CustomProgressIndicator',
        (WidgetTester tester) async {
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {},
        loading: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.byType(CustomProgressIndicator), findsOneWidget);
    });

    testWidgets('Loading Button color should be purple',
        (WidgetTester tester) async {
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {},
        loading: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final flatButton = tester.widget<FlatButton>(find.byType(FlatButton));

      expect(flatButton.disabledColor, Colors.deepPurple);
    });
  });

  group('SecondaryButton Widget', () {
    testWidgets('shown', (WidgetTester tester) async {
      final widget = SecondaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.byType(SecondaryButton), findsOneWidget);
    });

    testWidgets("Should see text 'Click me'", (WidgetTester tester) async {
      final widget = SecondaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.text('Click me'), findsOneWidget);
    });

    testWidgets('Enabled Button onPressed called on tapping OutlineButton',
        (WidgetTester tester) async {
      bool pressed = false;
      final widget = SecondaryButton(
          label: 'Click me',
          onPressed: () {
            pressed = true;
          });

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      await tester.tap(find.byType(OutlineButton));

      expect(pressed, true);
    });

    testWidgets('Enabled Button text color should be purple',
        (WidgetTester tester) async {
      final widget = SecondaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final labelButton = tester.widget<Text>(find.byType(Text));

      expect(find.text('Click me'), findsOneWidget);
      expect(labelButton.style.color, Colors.deepPurple);
    });

    testWidgets('Enabled Button color should be white50',
        (WidgetTester tester) async {
      final widget = SecondaryButton(label: 'Click me', onPressed: () {});

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final outlineButton =
          tester.widget<OutlineButton>(find.byType(OutlineButton));

      expect(outlineButton.color, Color(0xFFFFFFFF));
    });

    testWidgets('Enabled Button border color should be purple',
        (WidgetTester tester) async {
      final widget = SecondaryButton(
        label: 'Click me',
        onPressed: () {},
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final outlineButton =
          tester.widget<OutlineButton>(find.byType(OutlineButton));

      expect(outlineButton.borderSide.color, Colors.deepPurple);
    });

    testWidgets('Disabled Button onPressed not called on tapping OutlineButton',
        (WidgetTester tester) async {
      bool pressed = false;
      final widget = SecondaryButton(
        label: 'Click me',
        onPressed: () {
          pressed = true;
        },
        disabled: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      await tester.tap(find.byType(OutlineButton));

      expect(pressed, false);
    });

    testWidgets('Disabled Button text color should be grey200',
        (WidgetTester tester) async {
      final widget = SecondaryButton(
        label: 'Click me',
        onPressed: () {},
        disabled: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final labelButton = tester.widget<Text>(find.byType(Text));

      expect(find.text('Click me'), findsOneWidget);
      expect(labelButton.style.color, Color(0xFFA6A6A6));
    });

    testWidgets('Disabled border color should be grey100',
        (WidgetTester tester) async {
      final widget = SecondaryButton(
        label: 'Click me',
        onPressed: () {},
        disabled: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final outlineButton =
          tester.widget<OutlineButton>(find.byType(OutlineButton));

      expect(outlineButton.disabledBorderColor, Color(0xFFDCDCDC));
    });

    testWidgets('Disabled Button border color should be grey100',
        (WidgetTester tester) async {
      final widget = SecondaryButton(
        label: 'Click me',
        onPressed: () {},
        disabled: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final outlineButton =
          tester.widget<OutlineButton>(find.byType(OutlineButton));

      expect(outlineButton.disabledBorderColor, Color(0xFFDCDCDC));
    });

    testWidgets('Loading Button onPressed not called on tapping OutlineButton',
        (WidgetTester tester) async {
      bool pressed = false;
      final widget = SecondaryButton(
        label: 'Click me',
        onPressed: () {
          pressed = true;
        },
        loading: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      await tester.tap(find.byType(OutlineButton));

      expect(pressed, false);
    });
    testWidgets('Loading Button onPressed not called on tapping FlatButton',
        (WidgetTester tester) async {
      bool pressed = false;
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {
          pressed = true;
        },
        loading: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      await tester.tap(find.byType(FlatButton));

      expect(pressed, false);
    });

    testWidgets('Loading Button should be show CustomProgressIndicator',
        (WidgetTester tester) async {
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {},
        loading: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      expect(find.byType(CustomProgressIndicator), findsOneWidget);
    });

    testWidgets('Loading Button color should be purple',
        (WidgetTester tester) async {
      final widget = PrimaryButton(
        label: 'Click me',
        onPressed: () {},
        loading: true,
      );

      await tester.pumpWidget(_makeTestable(widget));

      await tester.pump();

      final flatButton = tester.widget<FlatButton>(find.byType(FlatButton));

      expect(flatButton.disabledColor, Colors.deepPurple);
    });
  });
}
