import 'dart:io';
import 'dart:convert';

void main() async {
  var file = new File("data.json");
  print("============ Cadastro de Tasks ============\n");
  if (await file.exists()) {
    var tasks = jsonDecode(file.readAsStringSync());
    printTasks(tasks);
  } else
    print("Arquivo informado não existe");
}

void printTasks(var tasks) {
  for (var task in tasks) {
    print('-------------------------------------------');
    print("Título: ${task['title']}");
    print("Responsável: ${task['name']}");
    print("Descrição: ${task['description']}");
    print('-------------------------------------------');
  }
}
