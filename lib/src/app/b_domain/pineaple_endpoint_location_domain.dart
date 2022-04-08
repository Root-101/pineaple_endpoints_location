import 'package:clean_core/clean_core.dart';

class PineapleEndpointLocationDomain
    extends BasicDomainObject<PineapleEndpointLocationDomain> {
  @override
  int id;

  final String endpointName;
  final String endpointHostName;
  final String endpointPortNumber;
  final String endpointDescription;

  PineapleEndpointLocationDomain({
    this.id = 0,
    required this.endpointName,
    required this.endpointHostName,
    required this.endpointPortNumber,
    this.endpointDescription = "",
  });
}
