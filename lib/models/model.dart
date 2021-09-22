class UserModel {
  String? name;
  String? description;
  String? imageurl;

  UserModel({
    this.name,
    this.description,
    this.imageurl,
  });
  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    imageurl = json['imageurl'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'imageurl': imageurl,
    };
  }
}
