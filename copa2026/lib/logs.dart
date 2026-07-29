import 'dart:io';


void registrarLog(String mensagem) {

  File arquivo = File(
    '../logs/copa2026.log',
  );


  arquivo.parent.createSync(
    recursive: true,
  );


  arquivo.writeAsStringSync(
    '${DateTime.now()} - $mensagem\n',
    mode: FileMode.append,
  );

}
