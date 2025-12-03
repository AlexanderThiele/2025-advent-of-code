import 'dart:convert';

class Token {
  final int exp;
  final int iat;
  final String iss;
  final List<String> scopes;
  final String sub;
  final String userfn;
  final int userid;

  Token({
    required this.exp,
    required this.iat,
    required this.iss,
    required this.scopes,
    required this.sub,
    required this.userfn,
    required this.userid,
  });

  factory Token.fromJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('Invalid JWT token');
    }

    final payload = parts[1];
    final normalized = base64Url.normalize(payload);
    final String decoded = utf8.decode(base64Url.decode(normalized));
    final Map<String, dynamic> json = jsonDecode(decoded);

    return Token.fromJson(json);
  }

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      exp: json['exp'] as int,
      iat: json['iat'] as int,
      iss: json['iss'] as String,
      scopes: (json['scopes'] as List).cast<String>(),
      sub: json['sub'] as String,
      userfn: json['userfn'] as String,
      userid: json['userid'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'exp': exp,
      'iat': iat,
      'iss': iss,
      'scopes': scopes,
      'sub': sub,
      'userfn': userfn,
      'userid': userid,
    };
  }

  @override
  String toString() {
    return 'Token(userfn: $userfn, userid: $userid, sub: $sub, scopes: $scopes)';
  }
}
