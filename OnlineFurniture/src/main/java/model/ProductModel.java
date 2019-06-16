package model;

import java.util.ArrayList;
import java.util.List;


public class ProductModel{
    public List<Product> getProductDBS() {
        return productDBS;
    }

    public void setProductDBS(List<Product> productDBS) {
        this.productDBS = productDBS;
    }

    List<Product> productDBS = new ArrayList();

   public ProductModel(){
       productDBS.add(new Product("1","unique design sofa","coach1.jpg",120,"Couch"));
       productDBS.add(new Product("2","Giantex Arm Chair","coach2.jpg",210,"Couch"));
       productDBS.add(new Product("3","Ashley Furniture","coach3.jpg",210,"Couch"));
       productDBS.add(new Product("4","Christopher Furniture","coach4.jpg",210,"Couch"));
       productDBS.add(new Product("5","Rogers Fabric Sofa ","coach5.jpg",210,"Couch"));
       productDBS.add(new Product("6","Harper&Bright Designs","webcarousel_chairs.png",210,"Couch"));
    }



}
