import 'package:insta_store/utils/pred.dart';
import 'package:rxdart/rxdart.dart';

/// Automatically closes when input subjects close -- I think
class SubjectHelper with _CombineLatestMixin {
  static BehaviorSubject<T> combineLatestStream<T>(
    List<BehaviorSubject> subjects,
    T Function(List) combine, {
    Stream<T> Function(Stream<T>)? filter,
  }) {
    if (subjects.length == 1) {
      return throw Exception('Atleast 2 subjects are required');
    }
    if (subjects.length > 9) return throw Exception('Too many subjects. 9 max');
    BehaviorSubject<T> subject;
    filter ??= Pred.identity;

    final values = subjects.map((e) => e.valueOrNull).toList();
    final subjectValue = combine(values);
    if (subjectValue == null) {
      subject = BehaviorSubject<T>();
    } else {
      subject = BehaviorSubject<T>.seeded(subjectValue);
    }

    final Stream<T?> stream =
        _CombineLatestMixin.combineLatest<T?>(subjects, combine);
    final changedStream = stream.map((event) => event as T);
    subject.addStream(
      filter(changedStream),
    );
    return subject;
  }

  // CAUTION: only use for subjects for which you're sure
  // that the subject has a value. otherwise further mapping on this
  // subject will not work and the subject returned with not emit value
  // until value isn't added for the first time
  // no value = no emit = no subject helpers will work on it
  static BehaviorSubject<T> mapStrict<T, A>(
    BehaviorSubject<A> a,
    T Function(A) combine, {
    Stream<T> Function(Stream<T>)? filter,
  }) {
    BehaviorSubject<T> subject;
    filter ??= Pred.identity;
    if (a.hasValue) {
      subject = BehaviorSubject<T>.seeded(combine(a.value));
    } else {
      subject = BehaviorSubject<T>();
    }
    subject.addStream(filter(a.map(combine))).then((_) => subject.close());
    return subject;
  }

  static BehaviorSubject<T?> map<T, A>(
    BehaviorSubject<A> a,
    T Function(A) combine, {
    Stream<T> Function(Stream<T>)? filter,
  }) {
    BehaviorSubject<T?> subject;
    filter ??= Pred.identity;
    if (a.hasValue) {
      subject = BehaviorSubject<T>.seeded(combine(a.value));
    } else {
      subject = BehaviorSubject<T?>.seeded(null);
    }
    subject.addStream(filter(a.map(combine))).then((_) => subject.close());
    return subject;
  }
}

mixin _CombineLatestMixin {
  static Stream<T?> combineLatest<T>(
    List<BehaviorSubject> subjects,
    Function(List) combine,
  ) {
    if (subjects.length == 2) {
      return CombineLatestStream.combine2(
          subjects[0], subjects[1], (a, b) => combine([a, b]));
    } else if (subjects.length == 3) {
      return CombineLatestStream.combine3(subjects[0], subjects[1], subjects[2],
          (a, b, c) => combine([a, b, c]));
    } else if (subjects.length == 4) {
      return CombineLatestStream.combine4(subjects[0], subjects[1], subjects[2],
          subjects[3], (a, b, c, d) => combine([a, b, c, d]));
    } else if (subjects.length == 5) {
      return CombineLatestStream.combine5(
          subjects[0],
          subjects[1],
          subjects[2],
          subjects[3],
          subjects[4],
          (a, b, c, d, e) => combine([a, b, c, d, e]));
    } else if (subjects.length == 6) {
      return CombineLatestStream.combine6(
          subjects[0],
          subjects[1],
          subjects[2],
          subjects[3],
          subjects[4],
          subjects[5],
          (a, b, c, d, e, f) => combine([a, b, c, d, e, f]));
    } else if (subjects.length == 7) {
      return CombineLatestStream.combine7(
          subjects[0],
          subjects[1],
          subjects[2],
          subjects[3],
          subjects[4],
          subjects[5],
          subjects[6],
          (a, b, c, d, e, f, g) => combine([a, b, c, d, e, f, g]));
    } else if (subjects.length == 8) {
      return CombineLatestStream.combine8(
          subjects[0],
          subjects[1],
          subjects[2],
          subjects[3],
          subjects[4],
          subjects[5],
          subjects[6],
          subjects[7],
          (a, b, c, d, e, f, g, h) => combine([a, b, c, d, e, f, g, h]));
    } else {
      return CombineLatestStream.combine9(
          subjects[0],
          subjects[1],
          subjects[2],
          subjects[3],
          subjects[4],
          subjects[5],
          subjects[6],
          subjects[7],
          subjects[8],
          (a, b, c, d, e, f, g, h, i) => combine([a, b, c, d, e, f, g, h, i]));
    }
  }
}
