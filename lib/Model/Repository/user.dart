
class User {
    String? name;
    String? email;
    String? password;
    String? id;

    User({this.name, this.email, this.password, this.id});

    User.fromJson(Map<String, dynamic> json) {
        this.name = json["name"];
        this.email = json["email"];
        this.password = json["password"];
        this.id = json["id"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["name"] = this.name;
        data["email"] = this.email;
        data["password"] = this.password;
        data["id"] = this.id;
        return data;
    }
}