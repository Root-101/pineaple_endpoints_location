import 'package:clean_core/clean_core.dart';
import 'package:pineaple_endpoints_location/pineaple_endpoint_location_exporter.dart';

class PineapleEndpointLocationUseCaseImpl extends DefaultCRUDUseCase<
    PineapleEndpointLocationDomain,
    PineapleEndpointLocationRepo> implements PineapleEndpointLocationUseCase {
  PineapleEndpointLocationUseCaseImpl(PineapleEndpointLocationRepo repo)
      : super(repo: repo);
}
