import 'dart:convert';

Guerreros guerrerosFromJson(String str) => Guerreros.fromJson(json.decode(str));

String guerrerosToJson(Guerreros data) => json.encode(data.toJson());

class Guerreros {
  List<Item> items;
  Meta meta;
  Links links;

  Guerreros({
    required this.items,
    required this.meta,
    required this.links,
  });

  factory Guerreros.fromJson(Map<String, dynamic> json) => Guerreros(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
        links: Links.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "meta": meta.toJson(),
        "links": links.toJson(),
      };
}

class Item {
  int id;
  String name;
  String ki;
  String maxKi;
  String race;
  String gender;
  String description;
  String image;
  String affiliation;
  dynamic deletedAt;

  Item({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.description,
    required this.image,
    required this.affiliation,
    required this.deletedAt,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        ki: json["ki"],
        maxKi: json["maxKi"],
        race: json["race"],
        gender: json["gender"],
        description: json["description"],
        image: json["image"],
        affiliation: json["affiliation"],
        deletedAt: json["deletedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ki": ki,
        "maxKi": maxKi,
        "race": race,
        "gender": gender,
        "description": description,
        "image": image,
        "affiliation": affiliation,
        "deletedAt": deletedAt,
      };
}

class Links {
  String first;
  String previous;
  String next;
  String last;

  Links({
    required this.first,
    required this.previous,
    required this.next,
    required this.last,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        previous: json["previous"],
        next: json["next"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "previous": previous,
        "next": next,
        "last": last,
      };
}

class Meta {
  int totalItems;
  int itemCount;
  int itemsPerPage;
  int totalPages;
  int currentPage;

  Meta({
    required this.totalItems,
    required this.itemCount,
    required this.itemsPerPage,
    required this.totalPages,
    required this.currentPage,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        totalItems: json["totalItems"],
        itemCount: json["itemCount"],
        itemsPerPage: json["itemsPerPage"],
        totalPages: json["totalPages"],
        currentPage: json["currentPage"],
      );

  Map<String, dynamic> toJson() => {
        "totalItems": totalItems,
        "itemCount": itemCount,
        "itemsPerPage": itemsPerPage,
        "totalPages": totalPages,
        "currentPage": currentPage,
      };
}
