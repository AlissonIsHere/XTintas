
class PaintOptions {
    String? name;
    String? image;
    int? price;
    List<Benefits>? benefits;

    PaintOptions({this.name, this.image, this.price, this.benefits});

    PaintOptions.fromJson(Map<String, dynamic> json) {
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