class LanguageEntity {
  final String code;
  final String value;

  const LanguageEntity({required this.code, required this.value});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageEntity &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          value == other.value;

  @override
  int get hashCode => code.hashCode ^ value.hashCode;
}
