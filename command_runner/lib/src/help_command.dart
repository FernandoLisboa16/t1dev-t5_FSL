import 'dart:async';

import 'package:command_runner/command_runner.dart';

class HelpCommand extends Command {
  HelpCommand() {
    // Flag para exibir todas as informações dos comandos
    addFlag(
      'verbose',
      abbr: 'v',
      help: 'Exibe todos os comandos com seus detalhes.',
    );

    // Opção para mostrar ajuda de um comando específico
    addOption(
      'command',
      abbr: 'c',
      help: 'Mostra informações detalhadas de um comando específico.',
    );
  }

  @override
  String get name => 'help';

  @override
  String get description => 'Exibe informações de ajuda dos comandos.';

  @override
  String? get help => 'Mostra esta mensagem de ajuda.';

  @override
  String? get defaultValue => null;

  @override
  String? get valueHelp => null;

  @override
  FutureOr<Object?> run(ArgResults args) async {
    final buffer = StringBuffer();

    buffer.writeln(runner.usage);

    // Se a flag --verbose for utilizada,
    // exibe todos os comandos detalhadamente.
    if (args.flag('verbose')) {
      for (var cmd in runner.commands) {
        buffer.write(_renderCommandVerbose(cmd));
      }
      return buffer.toString();
    }

    // Se foi passada a opção --command,
    // mostra apenas o comando solicitado.
    if (args.hasOption('command')) {
      final commandArg = args.getOption('command');
      final input = commandArg.input as String?;

      if (input != null && input.isNotEmpty) {
        final cmd = runner.commands.firstWhere(
          (command) => command.name == input,
          orElse: () {
            throw ArgumentError(
              'O comando "$input" não existe.',
            );
          },
        );

        return _renderCommandVerbose(cmd);
      }
    }

    // Caso padrão: mostra apenas a lista dos comandos.
    for (var command in runner.commands) {
      buffer.writeln(command.usage);
    }

    return buffer.toString();
  }

  // Gera uma descrição detalhada de um comando.
  String _renderCommandVerbose(Command cmd) {
    const indent = '          ';
    final buffer = StringBuffer();

    buffer.writeln(cmd.usage);
    buffer.writeln('$indent${cmd.help ?? cmd.description}');
    buffer.writeln('$indent}Opções:');

    if (cmd.options.isEmpty) {
      buffer.writeln('$indent(Nenhuma)');
    } else {
      for (var option in cmd.options) {
        buffer.writeln('$indent${option.usage}');
      }
    }

    return buffer.toString();
  }
}
