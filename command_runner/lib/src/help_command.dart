import 'dart:async';

import 'package:command_runner/command_runner.dart';

class HelpCommand extends Command {
  HelpCommand() {
    addFlag(
      'verbose',
      abbr: 'v',
      help: 'When true, this command will print each command and its options.',
    );

    addOption(
      'command',
      abbr: 'c',
      help: "When a command is passed as an argument, prints only that command's verbose usage.",
    );
  }

  @override
  String get name => 'help';

  @override
  String get description => 'Prints usage information to the command line.';

  @override
  String? get help => 'Prints this usage information';

  @override
  FutureOr<Object?> run(ArgResults args) async {
    final buffer = StringBuffer();

    buffer.writeln(runner.usage);

    // 1. Cenário: Flag --verbose ativada
    if (args.flag('verbose')) {
      for (var cmd in runner.commands) {
        buffer.write(_renderCommandVerbose(cmd));
      }
      return buffer.toString();
    }

   // 2. Cenário: Opção --command fornecida
    final commandArg = args.getOption('command');
    
    // CORRIGIDO: Forçamos o Dart a entender o .input como uma String aceitável para o null-safety
    final input = commandArg.input as String?;

    if (input != null && input.isNotEmpty) {
      final cmd = runner.commands.firstWhere(
        (command) => command.name == input,
        orElse: () {
          throw ArgumentError(
            'Input $input is not a known command.',
          );
        },
      );

      return _renderCommandVerbose(cmd);
    }

    // 3. Cenário padrão: Verbose falso e nenhum comando específico passado
    // Agora este código está vivo e será executado se o input estiver vazio!
    for (var command in runner.commands) {
      buffer.writeln(command.usage);
    }

    return buffer.toString();
  }

  // Método auxiliar privado para renderizar a saída detalhada de um comando
  String _renderCommandVerbose(Command cmd) {
    final indent = ' ' * 10;
    final buffer = StringBuffer();

    buffer.writeln(cmd.usage);
    buffer.writeln('$indent ${cmd.help ?? cmd.description}');

    buffer.writeln('$indent Options:');

    if (cmd.options.isNotEmpty) {
      for (var option in cmd.options) {
        buffer.writeln('$indent ${option.name}: ${option.help ?? "No description"}');
      }
    } else {
      buffer.writeln('$indent (None)');
    }

    return buffer.toString();
  }
}
