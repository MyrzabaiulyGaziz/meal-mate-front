// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Pageable<T> {
  int get offset => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageableCopyWith<T, Pageable<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<T, $Res> {
  factory $PageableCopyWith(
          Pageable<T> value, $Res Function(Pageable<T>) then) =
      _$PageableCopyWithImpl<T, $Res, Pageable<T>>;
  @useResult
  $Res call({int offset, int number, int totalResults, List<T> results});
}

/// @nodoc
class _$PageableCopyWithImpl<T, $Res, $Val extends Pageable<T>>
    implements $PageableCopyWith<T, $Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? number = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<T, $Res>
    implements $PageableCopyWith<T, $Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl<T> value, $Res Function(_$PaginationImpl<T>) then) =
      __$$PaginationImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int offset, int number, int totalResults, List<T> results});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<T, $Res>
    extends _$PageableCopyWithImpl<T, $Res, _$PaginationImpl<T>>
    implements _$$PaginationImplCopyWith<T, $Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl<T> _value, $Res Function(_$PaginationImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? number = null,
    Object? totalResults = null,
    Object? results = null,
  }) {
    return _then(_$PaginationImpl<T>(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$PaginationImpl<T> extends _Pagination<T> {
  const _$PaginationImpl(
      {required this.offset,
      required this.number,
      required this.totalResults,
      required final List<T> results})
      : _results = results,
        super._();

  @override
  final int offset;
  @override
  final int number;
  @override
  final int totalResults;
  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Pageable<$T>(offset: $offset, number: $number, totalResults: $totalResults, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl<T> &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, number, totalResults,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<T, _$PaginationImpl<T>> get copyWith =>
      __$$PaginationImplCopyWithImpl<T, _$PaginationImpl<T>>(this, _$identity);
}

abstract class _Pagination<T> extends Pageable<T> {
  const factory _Pagination(
      {required final int offset,
      required final int number,
      required final int totalResults,
      required final List<T> results}) = _$PaginationImpl<T>;
  const _Pagination._() : super._();

  @override
  int get offset;
  @override
  int get number;
  @override
  int get totalResults;
  @override
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<T, _$PaginationImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
