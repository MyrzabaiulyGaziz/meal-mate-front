import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    String? firstName,
    String? lastname,
    int? age,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

extension UserFullName on User {
  String get fullName {
    final fn = StringBuffer();

    if (firstName != null) {
      fn.write(firstName);
      fn.write(" ");
    }

    if (lastname != null) {
      fn.write(lastname);
    }

    if (fn.isEmpty) {
      fn.write("Anonymous User");
    }

    return fn.toString();
  }
}