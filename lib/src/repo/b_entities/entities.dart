import 'package:clean_core/clean_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity() //flutter pub run build_runner build
class PineapleEndpointLocationEntity extends BasicEntityObject {
  @Id()
  int id;

  @Unique()
  final String endpointName;
  final String endpointHostName;
  final String endpointPortNumber;
  final String endpointDescription;

  //default construct, DON'T REMOVE
  PineapleEndpointLocationEntity({
    this.id = 0,
    this.endpointName = "unknown name",
    this.endpointHostName = "unknown host name",
    this.endpointPortNumber = "unknown port number",
    this.endpointDescription = "",
  });

  //the one to use
  PineapleEndpointLocationEntity.build({
    this.id = 0,
    required this.endpointName,
    required this.endpointHostName,
    required this.endpointPortNumber,
    this.endpointDescription = "",
  });
}
