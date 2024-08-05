import 'package:hive/hive.dart';
import 'package:insta_store/models/base_model.dart';

part 'key_value.g.dart';

@HiveType(typeId: 0)
class KeyValue extends AppBaseModel {
  @HiveField(0)
  // ignore: annotate_overrides
  final String key;
  @HiveField(1)
  final bool value;

  KeyValue(
    this.key,
    this.value,
  );
}
