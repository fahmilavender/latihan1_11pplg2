class FootballPlayer {
  String name;
  String position;
  int number;
  String image;

  FootballPlayer({
    required this.name,
    required this.position,
    required this.number,
    required this.image,
  });

    FootballPlayer copyWith({
    String? name,
    String? position,
    int? number,
    String? image,
  }) {
    return FootballPlayer(
      name: name ?? this.name,
      position: position ?? this.position,
      number: number ?? this.number,
      image: image ?? this.image,
    );
  }
}
