import 'dart:io';

import 'package:get/get.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';
import 'package:pineaple_endpoints_location/pineaple_endpoint_location_exporter.dart';

class DnDRepoModule {
  static late final Store
      _STORE; //todo: posible null pointer, llamar primero al constructor

  static const _EndpointLocationDir = "/endpoint_location";

  static Future<bool> init({String parentDirectory = ""}) async {
    //obtiene el directorio por defecto
    Directory defaultDir = await defaultStoreDirectory();

    //se concatenan las direcciones
    Directory dbDir =
        Directory('${defaultDir.path}$parentDirectory$_EndpointLocationDir');

    //Se crea el directorio por si no está creado
    dbDir = await dbDir.create(recursive: true);

    _STORE = await openStore(directory: dbDir.path);

    Get.put<PineapleEndpointLocationRepo>(
      PineapleEndpointLocationRepoImpl(
        PineapleEndpointLocationRepoExternalImpl(_STORE),
      ),
    );

    return _STORE != null;
  }

  static void dispose() {
    _STORE.close();
  }
}
