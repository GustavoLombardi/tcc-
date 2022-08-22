// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Usuario {
  final String? id;
  final String? fullname;
  final String? email;
  final String? phone;
  final String? cpf;

  final String? token;

  Usuario({
    this.id,
    this.fullname,
    this.email,
    this.phone,
    this.cpf,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullname': fullname,
      'email': email,
      'phone': phone,
      'cpf': cpf,
      'token': token,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'] != null ? map['id'] as String : null,
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      cpf: map['cpf'] != null ? map['cpf'] as String : null,
      token: map['token'] != null ? map['token'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Usuario(id: $id, fullname: $fullname, email: $email, phone: $phone, cpf: $cpf, token: $token)';
  }

  Usuario copyWith({
    String? id,
    String? fullname,
    String? email,
    String? phone,
    String? cpf,
    String? token,
  }) {
    return Usuario(
      id: id ?? this.id,
      fullname: fullname ?? this.fullname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      cpf: cpf ?? this.cpf,
      token: token ?? this.token,
    );
  }

  @override
  bool operator ==(covariant Usuario other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.fullname == fullname &&
        other.email == email &&
        other.phone == phone &&
        other.cpf == cpf &&
        other.token == token;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        fullname.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        cpf.hashCode ^
        token.hashCode;
  }
}
