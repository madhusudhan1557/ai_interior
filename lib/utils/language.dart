class Language {
  final int id;
  final String flag;
  final String name;
  final String languagecode;

  Language({
    required this.id,
    required this.flag,
    required this.name,
    required this.languagecode,
  });

  static List<Language> languagelist() {
    return <Language>[
      Language(id: 1, flag: "🇦🇺", name: "English", languagecode: "en"),
      Language(id: 2, flag: "🇮🇳", name: "हिन्दी", languagecode: "hi"),
      Language(id: 3, flag: "🇯🇵", name: "日本", languagecode: "ja")
    ];
  }
}
