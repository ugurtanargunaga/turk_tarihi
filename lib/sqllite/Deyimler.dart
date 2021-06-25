class Deyimler {
  int id;
  String name;

  Deyimler(this.id, this.name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
    };
    return map;
  }

  Deyimler.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}
