class PostModel {
  String? username;
  String? time;
  String? category;
  String? voted;

  PostModel({this.username, this.time, this.category, this.voted});

  PostModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    time = json['time'];
    category = json['category'];
    voted = json['voted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['time'] = this.time;
    data['category'] = this.category;
    data['voted'] = this.voted;
    return data;
  }
}
