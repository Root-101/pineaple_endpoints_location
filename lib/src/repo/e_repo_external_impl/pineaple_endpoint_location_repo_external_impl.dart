import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:pineaple_endpoints_location/pineaple_endpoint_location_exporter.dart';

class PineapleEndpointLocationRepoExternalImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<
        PineapleEndpointLocationEntity>
    implements PineapleEndpointLocationRepoExternal {
  PineapleEndpointLocationRepoExternalImpl(Store store) : super(store);
}
