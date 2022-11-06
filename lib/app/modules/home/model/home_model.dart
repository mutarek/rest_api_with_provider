class HomeModel {
  int? page;
  int? per_page;
  int? total;
  int? total_pages;
  List<Data>? data;

  HomeModel({this.page, this.per_page, this.total, this.total_pages, this.data});
  
  factory HomeModel.fromJson(Map<String,dynamic> json)=> HomeModel(
    page: json['page'],
    per_page: json['per_page'],
    total: json['total'],
    total_pages: json['total_page'],
    data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
  );
}

class Data{
  int? id;
  String? email;
  String?first_name;
  String? last_name;
  String? avatar;

  Data({this.id, this.email, this.first_name, this.last_name, this.avatar});

  factory Data.fromJson(Map<String,dynamic> json)=> Data(
    id: json['id'],
    email: json['email'],
    first_name: json['first_name'],
    last_name: json['last_name'],
    avatar: json['avatar']
  );
  
}
