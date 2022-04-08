import 'package:clean_core/clean_core.dart';
import 'package:pineaple_endpoints_location/pineaple_endpoint_location_exporter.dart';

class PineapleEndpointLocationRepoImpl extends DefaultCRUDRepo<
        PineapleEndpointLocationDomain,
        PineapleEndpointLocationEntity,
        PineapleEndpointLocationRepoExternal>
    implements PineapleEndpointLocationRepo {
  PineapleEndpointLocationRepoImpl(
      PineapleEndpointLocationRepoExternal repoExternal)
      : super(
            externalRepo: repoExternal,
            converter: DnDSubLevelProgressConverter.converter);
}

class DnDSubLevelProgressConverter extends GeneralConverter<
    PineapleEndpointLocationDomain, PineapleEndpointLocationEntity> {
  static final DnDSubLevelProgressConverter converter =
      DnDSubLevelProgressConverter._();

  DnDSubLevelProgressConverter._();

  @override
  PineapleEndpointLocationDomain toDomain(
      PineapleEndpointLocationEntity entity) {
    return PineapleEndpointLocationDomain(
      id: entity.id,
      endpointHostName: entity.endpointHostName,
      endpointName: entity.endpointName,
      endpointPortNumber: entity.endpointPortNumber,
      endpointDescription: entity.endpointDescription,
    );
  }

  @override
  PineapleEndpointLocationEntity toEntity(
      PineapleEndpointLocationDomain domain) {
    return PineapleEndpointLocationEntity.build(
      id: domain.id,
      endpointHostName: domain.endpointHostName,
      endpointName: domain.endpointName,
      endpointPortNumber: domain.endpointPortNumber,
      endpointDescription: domain.endpointDescription,
    );
  }
}
