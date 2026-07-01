class Player {
  final int? id;
  final String name;
  final int number;
  final String position;
  final int goals;
  final int assists;
  final int yellowCards;
  final int redCards;

  Player({
    this.id,
    required this.name,
    required this.number,
    required this.position,
    this.goals = 0,
    this.assists = 0,
    this.yellowCards = 0,
    this.redCards = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'number': number,
      'position': position,
      'goals': goals,
      'assists': assists,
      'yellowCards': yellowCards,
      'redCards': redCards,
    };
  }

  factory Player.fromMap(Map<String, dynamic> map) {
    return Player(
      id: map['id'],
      name: map['name'],
      number: map['number'],
      position: map['position'],
      goals: map['goals'] ?? 0,
      assists: map['assists'] ?? 0,
      yellowCards: map['yellowCards'] ?? 0,
      redCards: map['redCards'] ?? 0,
    );
  }
}
