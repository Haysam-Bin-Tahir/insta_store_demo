import 'package:rxdart/rxdart.dart';

class StoreHelpers {
  static BehaviorSubject<T?> getSubjectFromSubjectMap<T>(
    String id,
    Map<String, BehaviorSubject<T?>> subjectMap, {
    BehaviorSubject<T?> Function(String id, {bool seedNull})? subjectBuilder,
    Function(BehaviorSubject<T?>, String id)? onCreate,
    List<Function(String, T?)>? listeners,
    bool seedNull = false,
  }) {
    assert((subjectBuilder != null));
    if (!subjectMap.containsKey(id)) {
      if (subjectBuilder != null) {
        subjectMap[id] = subjectBuilder(id, seedNull: seedNull);
      } else {
        if (seedNull) {
          subjectMap[id] = BehaviorSubject<T?>.seeded(null);
        } else {
          subjectMap[id] = BehaviorSubject<T?>();
        }
      }
      if (listeners != null) {
        for (var listener in listeners) {
          subjectMap[id]!.listen((T? v) => listener(id, v));
        }
      }
      if (onCreate != null) {
        onCreate(subjectMap[id] as BehaviorSubject<T?>, id);
      }
    }
    return subjectMap[id]!;
  }

  static BehaviorSubject<T> getStrictSubjectFromSubjectMap<T>(
    String id,
    Map<String, BehaviorSubject<T>> subjectMap, {
    BehaviorSubject<T> Function(String id)? subjectBuilder,
    Function(BehaviorSubject<T>, String id)? onCreate,
    List<Function(String, T)>? listeners,
  }) {
    assert((subjectBuilder != null));
    if (!subjectMap.containsKey(id)) {
      if (subjectBuilder != null) {
        subjectMap[id] = subjectBuilder(id);
      } else {
        subjectMap[id] = BehaviorSubject<T>();
      }
      if (listeners != null) {
        for (var listener in listeners) {
          subjectMap[id]!.listen((T v) => listener(id, v));
        }
      }
      if (onCreate != null) {
        onCreate(subjectMap[id] as BehaviorSubject<T>, id);
      }
    }
    return subjectMap[id]!;
  }
}
