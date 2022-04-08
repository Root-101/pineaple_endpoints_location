import 'package:get/get.dart';
import 'package:pineaple_endpoints_location/pineaple_endpoint_location_exporter.dart';

class PineapleEndpointLocationCoreModule {
  static Future init() async {
    await DnDRepoModule.init();

    Get.put<PineapleEndpointLocationUseCase>(
      PineapleEndpointLocationUseCaseImpl(
        Get.find<PineapleEndpointLocationRepo>(),
      ),
    );
  }

  static void dispose() {
    DnDRepoModule.dispose();
    Get.deleteAll(force: true);
  }
}
