import 'dart:convert';
import 'dart:io';

void main() async {
  var client = new HttpClient();

  chamadaAssincrona(client);
  chamadaSincrona(client);
  client.close();
}

void chamadaAssincrona(HttpClient client) async {
  var request =
      await client.getUrl(Uri.parse("http://viacep.com.br/ws/96085000/json/"));

  var response = await request.close();

  print("***** Assíncrono *****");
  await for (var contents in response.transform(Utf8Decoder())) {
    print(contents);
  }
}

void chamadaSincrona(HttpClient client) {
  client
      .getUrl(Uri.parse("http://viacep.com.br/ws/96085000/json/"))
      .then((request) => request.close()) //Envia a requisição
      .then((response) {
    print("***** Síncrono *****");
    response.transform(Utf8Decoder()).listen(print);
  });
}
