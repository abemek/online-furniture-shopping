package model;

import java.util.ArrayList;
import java.util.List;

public class ProductDB {

    public List<Product> getProductDBS() {
        return productDBS;
    }

    public void setProductDBS(List<Product> productDBS) {
        this.productDBS = productDBS;
    }

    List<Product> productDBS = new ArrayList();

    public ProductDB(){
        productDBS.add(new Product("1","unique design sofa","coach1.jpg",120,"Couch"));
        productDBS.add(new Product("2","Giantex Arm Chair","coach2.jpg",210,"Couch"));
        productDBS.add(new Product("3","Ashley Furniture","coach3.jpg",210,"Couch"));
        productDBS.add(new Product("4","Christopher Furniture","coach4.jpg",210,"Couch"));
        productDBS.add(new Product("5","Rogers Fabric Sofa ","coach5.jpg",210,"Couch"));
        productDBS.add(new Product("6","Harper&Bright Designs","webcarousel_chairs.png",210,"Couch"));
        productDBS.add(new Product("7","Casoria Fog Sofa","sofa.jpg",210,"Sofa"));
        productDBS.add(new Product("8","Dash Pewter Sofa","sofa1.jpg",210,"Sofa"));
        productDBS.add(new Product("9","Penn Taupe Sofa Chaise","sofa3.jpg",210,"Sofa"));
        productDBS.add(new Product("10","Rufford Tan Reclining Sofa","sofa4.jpg",210,"Sofa"));
        productDBS.add(new Product("11","Burnaby Reclining Sofa","sofa5.jpg",210,"Sofa"));
        productDBS.add(new Product("12","Tempus Sofa","sofa6.jpg",210,"Sofa"));

    }
}
