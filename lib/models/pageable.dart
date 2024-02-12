import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageable.freezed.dart';

@Freezed()
class Pageable<T> with _$Pageable<T> {
  const Pageable._();

  const factory Pageable({
    required int offset,
    required int number,
    required int totalResults,
    required List<T> results,
  }) = _Pagination<T>;

  factory Pageable.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic>) contentFromJson) {
    return Pageable<T>(
      offset: json['offset'] as int,
      number: json['number'] as int,
      totalResults: json['totalResults'] as int,
      results: (json['results'] as List)
          .map((e) => contentFromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
