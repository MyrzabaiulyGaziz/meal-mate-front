// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeInstruction _$RecipeInstructionFromJson(Map<String, dynamic> json) {
  return _RecipeInstruction.fromJson(json);
}

/// @nodoc
mixin _$RecipeInstruction {
  List<RecipeStep> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeInstructionCopyWith<RecipeInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeInstructionCopyWith<$Res> {
  factory $RecipeInstructionCopyWith(
          RecipeInstruction value, $Res Function(RecipeInstruction) then) =
      _$RecipeInstructionCopyWithImpl<$Res, RecipeInstruction>;
  @useResult
  $Res call({List<RecipeStep> steps});
}

/// @nodoc
class _$RecipeInstructionCopyWithImpl<$Res, $Val extends RecipeInstruction>
    implements $RecipeInstructionCopyWith<$Res> {
  _$RecipeInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<RecipeStep>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeInstructionImplCopyWith<$Res>
    implements $RecipeInstructionCopyWith<$Res> {
  factory _$$RecipeInstructionImplCopyWith(_$RecipeInstructionImpl value,
          $Res Function(_$RecipeInstructionImpl) then) =
      __$$RecipeInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecipeStep> steps});
}

/// @nodoc
class __$$RecipeInstructionImplCopyWithImpl<$Res>
    extends _$RecipeInstructionCopyWithImpl<$Res, _$RecipeInstructionImpl>
    implements _$$RecipeInstructionImplCopyWith<$Res> {
  __$$RecipeInstructionImplCopyWithImpl(_$RecipeInstructionImpl _value,
      $Res Function(_$RecipeInstructionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
  }) {
    return _then(_$RecipeInstructionImpl(
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<RecipeStep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeInstructionImpl implements _RecipeInstruction {
  const _$RecipeInstructionImpl({final List<RecipeStep> steps = const []})
      : _steps = steps;

  factory _$RecipeInstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeInstructionImplFromJson(json);

  final List<RecipeStep> _steps;
  @override
  @JsonKey()
  List<RecipeStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'RecipeInstruction(steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeInstructionImpl &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeInstructionImplCopyWith<_$RecipeInstructionImpl> get copyWith =>
      __$$RecipeInstructionImplCopyWithImpl<_$RecipeInstructionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeInstructionImplToJson(
      this,
    );
  }
}

abstract class _RecipeInstruction implements RecipeInstruction {
  const factory _RecipeInstruction({final List<RecipeStep> steps}) =
      _$RecipeInstructionImpl;

  factory _RecipeInstruction.fromJson(Map<String, dynamic> json) =
      _$RecipeInstructionImpl.fromJson;

  @override
  List<RecipeStep> get steps;
  @override
  @JsonKey(ignore: true)
  _$$RecipeInstructionImplCopyWith<_$RecipeInstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
