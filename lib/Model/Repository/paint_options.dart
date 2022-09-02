
class PaintOptions {
    int? count;
    List<Data>? data;

    PaintOptions({this.count, this.data});

    PaintOptions.fromJson(Map<String, dynamic> json) {
        this.count = json["count"];
        this.data = json["data"]==null ? null : (json["data"] as List).map((e)=>Data.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["count"] = this.count;
        if(this.data != null)
            data["data"] = this.data?.map((e)=>e.toJson()).toList();
        return data;
    }
}

class Data {
    String? name;
    String? image;
    int? price;
    List<Benefits>? benefits;

    Data({this.name, this.image, this.price, this.benefits});

    Data.fromJson(Map<String, dynamic> json) {
        this.name = json["name"];
        this.image = json["image"];
        this.price = json["price"];
        this.benefits = json["benefits"]==null ? null : (json["benefits"] as List).map((e)=>Benefits.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["name"] = this.name;
        data["image"] = this.image;
        data["price"] = this.price;
        if(this.benefits != null)
            data["benefits"] = this.benefits?.map((e)=>e.toJson()).toList();
        return data;
    }
}

class Benefits {
    String? name;
    String? icon;

    Benefits({this.name, this.icon});

    Benefits.fromJson(Map<String, dynamic> json) {
        this.name = json["name"];
        this.icon = json["icon"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["name"] = this.name;
        data["icon"] = this.icon;
        return data;
    }
}