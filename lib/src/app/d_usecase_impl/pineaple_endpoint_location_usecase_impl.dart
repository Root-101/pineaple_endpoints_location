import 'package:clean_core/clean_core.dart';
import 'package:pineaple_endpoints_location/pineaple_endpoint_location_exporter.dart';

class PineapleEndpointLocationUseCaseImpl extends DefaultCRUDUseCase<
    PineapleEndpointLocationDomain,
    DnDSubLevelProgressRepo> implements PineapleEndpointLocationUseCase {
  PineapleEndpointLocationUseCaseImpl(DnDSubLevelProgressRepo repo)
      : super(repo: repo);
}
