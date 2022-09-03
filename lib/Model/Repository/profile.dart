
class Profile {
    String? email;
    String? name;
    String? avatar;

    Profile({this.email, this.name, this.avatar});

    Profile.fromJson(Map<String, dynamic> json) {
        this.email = json["email"];
        this.name = json["name"];
        this.avatar = json["avatar"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["email"] = this.email;
        data["name"] = this.name;
        data["avatar"] = this.avatar;
        return data;
    }
}