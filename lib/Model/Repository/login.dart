
class Login {
    String? accessToken;

    Login({this.accessToken});

    Login.fromJson(Map<String, dynamic> json) {
        this.accessToken = json["access-token"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["access-token"] = this.accessToken;
        return data;
    }
}