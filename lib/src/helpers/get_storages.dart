import 'package:get_storage/get_storage.dart';

class GetStorages {
  GetStorages._internal();
  static GetStorages _instance = GetStorages._internal();
  static GetStorages get inst => _instance;

  GetStorage _storage = GetStorage();

  // Métodos de getStorage
  Future<void> init() async => await GetStorage.init();
  Future<void> clear() async => await _storage.erase();

  // Setter y getters de datos

  set server(String valor) => _storage.write('server', valor);
  String get server => _storage.read('server') ?? 'https://qa.timeshareapp.com';

  set api(String valor) => _storage.write('api', valor);
  String get api => _storage.read('api') ?? "$server/api/app";

  // Token de la aplicación de laravel
  set token(String value) => _storage.write('token', value);
  String get token => _storage.read('token') ?? '';

  set page(String valor) => _storage.write('page', valor);
  String get page => _storage.read('page') ?? '/home';

  set sistema(int valor) => _storage.write('sistema', valor);
  int get sistema => _storage.read('sistema') ?? 0;

  set idusuario(int valor) => _storage.write('idusuario', valor);
  int get idusuario => _storage.read('idusuario') ?? 0;
  
  set idsocio(int valor) => _storage.write('idsocio', valor);
  int get idsocio => _storage.read('idsocio') ?? 0;

  set avatar(String valor) => _storage.write('avatar', "$server/$valor");
  String get avatar => _storage.read('avatar') ?? "$server/images/avatar-masculino.png";
  
  set nombre(String valor) => _storage.write('nombre', valor);
  String get nombre => _storage.read('nombre') ?? '';
  
  set email(String valor) => _storage.write('email', valor);
  String get email => _storage.read('email') ?? '';

}
