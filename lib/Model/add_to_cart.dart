
class AddToCart {
    int? quantity;
    Paint? paint;
    String? id;

    AddToCart({this.quantity, this.paint, this.id});

    AddToCart.fromJson(Map<String, dynamic> json) {
        this.quantity = json["quantity"];
        this.paint = json["paint"] == null ? null : Paint.fromJson(json["paint"]);
        this.id = json["id"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["quantity"] = this.quantity;
        if(this.paint != null)
            data["paint"] = this.paint?.toJson();
        data["id"] = this.id;
        return data;
    }
}

class Paint {
    String? name;
    String? price;
    bool? deliveryFree;
    String? coverImage;
    String? description;
    String? id;

    Paint({this.name, this.price, this.deliveryFree, this.coverImage, this.description, this.id});

    Paint.fromJson(Map<String, dynamic> json) {
        this.name = json["name"];
        this.price = json["price"];
        this.deliveryFree = json["deliveryFree"];
        this.coverImage = json["coverImage"];
        this.description = json["description"];
        this.id = json["id"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["name"] = this.name;
        data["price"] = this.price;
        data["deliveryFree"] = this.deliveryFree;
        data["coverImage"] = this.coverImage;
        data["description"] = this.description;
        data["id"] = this.id;
        return data;
    }
}