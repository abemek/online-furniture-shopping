package model;

public class Product {
    private String id;
    private String name;
    private double price;
    private String photo;
    private String category;


    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public Product() {
    }

    public Product(String id, String name, String photo, double price,String category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.photo = photo;
        this.category=category;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

}
