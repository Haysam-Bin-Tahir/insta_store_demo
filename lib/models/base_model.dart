abstract class AppBaseModel {
  /// For now keys should just be String really
  String get key => throw UnimplementedError();

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
