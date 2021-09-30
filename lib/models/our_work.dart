class WorkModel {
  String? name1;
  String? name2;
  String? imageurl1;
  String? imageurl2;
  String? description1;
  String? description2;

  WorkModel({
    this.name1,
    this.name2,
    this.imageurl1,
    this.imageurl2,
    this.description1,
    this.description2,
  });
  WorkModel.fromJson(Map<String, dynamic> json) {
    name1 = json['name1'];
    name2 = json['name2'];
    imageurl1 = json['imageurl1'];
    imageurl2 = json['imageurl2'];
    description1 = json['description1']; 
    description2 = json['description2']; 
  }

  Map<String, dynamic> toMap() {
    return {
      'name1': name1,
      'name2': name2,
      'imageurl1': imageurl1,
      'imageurl2': imageurl2,
      'description1': description1,
      'description2': description2,
    };
  }
}
