import 'package:get/get.dart';

import '../c_usecase_def/pineaple_endpoint_location_usecase_exporter.dart';

class PineapleEndpointLocationCoreModule {
  static Future init() async {
    await DnDRepoModule.init();

    Get.put<PineapleEndpointLocationUseCase>(
      DnDSubLevelProgressUseCaseImpl(DnDRepoModule.subLevelProgressRepo),
    );
  }

  static void dispose() {
    DnDRepoModule.dispose();
    Get.deleteAll(force: true);
  }
}
