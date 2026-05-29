import 'dart:io';

const String ansiEscapeLiteral = '\x1B';

/// Splits strings on `\n` characters, then writes each line to the
/// console. [duration] defines how many milliseconds there will be
/// between each line print.
Future<void> write(String text, {int duration = 50}) async {
  final List<String> lines = text.split('\n');

  for (final String line in lines) {
    await _delayedPrint('$line\n', duration: duration);
  }
}

/// Prints line-by-line
Future<void> _delayedPrint(String text, {int duration = 0}) async {
  return Future<void>.delayed(
    Duration(milliseconds: duration),
    () => stdout.write(text),
  );
}

/// RGB formatted colors that are used to style input
///
/// All colors from Dart's brand styleguide
///
/// As a demo, only includes colors this program cares about.
/// If you want to use more colors, add them here.
enum ConsoleColor {
  /// Sky blue - #B8EAFE
  lightBlue(184, 234, 254),

  /// Warm red - #F25D50
  red(242, 93, 80),

  /// Light yellow - #F9F8C4
  yellow(249, 248, 196),

  /// Light grey - #F0F0F0
  grey(240, 240, 240),

  /// White
  white(255, 255, 255);

  const ConsoleColor(this.r, this.g, this.b);

  final int r;
  final int g;
  final int b;

<<<<<<< HEAD
  // ... (existing enum values)

=======
>>>>>>> 94718f3 (Fiz a tarefa 2 atualizada brasileiro 2026 copa do mundo)
  /// Change text color for all future output (until reset)
  String get enableForeground =>
      '$ansiEscapeLiteral[38;2;$r;$g;${b}m';

  /// Change background color for all future output (until reset)
  String get enableBackground =>
      '$ansiEscapeLiteral[48;2;$r;$g;${b}m';

  /// Reset text and background color to terminal defaults
  static String get reset => '$ansiEscapeLiteral[0m';

  /// Sets text color for the input
  String applyForeground(String text) {
    return '$enableForeground$text$reset';
  }

  /// Sets background color and then resets the color change
  String applyBackground(String text) {
    return '$enableBackground$text$reset';
  }
}

/// String utility extensions
extension TextRenderUtils on String {
  /// Applies red foreground color
  String get errorText =>
      ConsoleColor.red.applyForeground(this);

  /// Applies yellow foreground color
  String get instructionText =>
      ConsoleColor.yellow.applyForeground(this);

  /// Applies blue foreground color
  String get titleText =>
      ConsoleColor.lightBlue.applyForeground(this);

  /// Splits text into lines with max length
  List<String> splitLinesByLength(int length) {
    final List<String> words = split(' ');
    final List<String> output = <String>[];
    final StringBuffer strBuffer = StringBuffer();

    for (int i = 0; i < words.length; i++) {
      final String word = words[i];

      if (strBuffer.length + word.length <= length) {
        strBuffer.write(word.trim());

        if (strBuffer.length + 1 <= length) {
          strBuffer.write(' ');
        }
      }

      // If the next word surpasses length, start the next line
      if (i + 1 < words.length &&
          words[i + 1].length + strBuffer.length + 1 > length) {
        output.add(strBuffer.toString().trim());
        strBuffer.clear();
      }
    }

    // Add leftovers
    if (strBuffer.isNotEmpty) {
      output.add(strBuffer.toString().trim());
    }

    return output;
  }
}
