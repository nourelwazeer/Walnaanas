class UserModel{
  String? name;
  String? email;
  String? userId;
  String? image;
  UserModel({
    this.email,
    this.name,
    this.userId,
    this.image,
  });
  UserModel.fromJson(Map<String , dynamic> json){
    email= json["email"];
    name = json["name"];
    image = json["image"];
    userId = json['UId'];
  }


  Map<String,dynamic> toMap(){
    return {
      'email' : email,
      'name' : name,
      'UId' : userId,
      'image' : image,
    };
  }
}