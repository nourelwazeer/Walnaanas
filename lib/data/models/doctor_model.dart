class DoctorModel{
  String? address;
  String? name;
  String? phone;
  String? image;


  DoctorModel({
    this.name,
    this.image,
    this.phone,
    this.address
});


  DoctorModel.fromJson(Map<String , dynamic> json){
    address = json['Address'];
    name = json['Name'];
    phone = json['Phone'];
    image = json['Image'];
  }

}