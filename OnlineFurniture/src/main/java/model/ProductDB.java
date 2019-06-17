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

        productDBS.add(new Product("13","Riles Loveseat","Loveseat.jpg",210,"Loveseat"));
        productDBS.add(new Product("14","Redmond Loveseat","Loveseat1.jpg",210,"Loveseat"));
        productDBS.add(new Product("15","Andorra Loveseat","Loveseat2.jpg",210,"Loveseat"));
        productDBS.add(new Product("16","Kent Reclining Loveseat","Loveseat3.jpg",210,"Loveseat"));
        productDBS.add(new Product("17","Heritage Loveseat","Loveseat4.jpg",210,"Loveseat"));
        productDBS.add(new Product("18","Crownley Reclining Loveseat","Loveseat5.jpg",210,"Loveseat"));

        productDBS.add(new Product("19","Dana Point Bed","bed.jpg",210,"Bed"));
        productDBS.add(new Product("20","Gambrel Panel Bed","bed1.jpg",210,"Bed"));
        productDBS.add(new Product("21","Jacob Panel Bed","bed2.jpg",210,"Bed"));
        productDBS.add(new Product("22"," Bostwick Shoals Bed","bed3.jpg",210,"Bed"));
        productDBS.add(new Product("23","Jacob Bookcase Bed","bed4.jpg",210,"Bed"));
        productDBS.add(new Product("24","Tempus Sofa","bed5.jpg",210,"Bed"));


        productDBS.add(new Product("25","Dana Point Bed","mattress.jpg",210,"mattress"));
        productDBS.add(new Product("26","Gambrel Panel Bed","mattress1.jpg",210,"mattress"));
        productDBS.add(new Product("27","Jacob Panel Bed","mattress2.jpg",210,"mattress"));
        productDBS.add(new Product("28"," Bostwick Shoals Bed","mattress3.jpg",210,"mattress"));
        productDBS.add(new Product("29","Jacob Bookcase Bed","mattress4.jpg",210,"mattress"));
        productDBS.add(new Product("30","Tempus Sofa","mattress5.jpg",210,"mattress"));

        productDBS.add(new Product("31","Dana Point Bed","amattress.jpg",210,"amattress"));
        productDBS.add(new Product("32","Gambrel Panel Bed","amattress1.jpg",210,"amattress"));
        productDBS.add(new Product("33","Jacob Panel Bed","amattress2.jpg",210,"amattress"));
        productDBS.add(new Product("34"," Bostwick Shoals Bed","amattress3.jpg",210,"amattress"));
        productDBS.add(new Product("35","Jacob Bookcase Bed","amattress4.jpg",210,"amattress"));
        productDBS.add(new Product("36","Tempus Sofa","amattress5.jpg",210,"amattress"));

        productDBS.add(new Product("37","Dana Point Bed","dresser.jpg",210,"dresser"));
        productDBS.add(new Product("38","Gambrel Panel Bed","dresser1.jpg",210,"dresser"));
        productDBS.add(new Product("39","Jacob Panel Bed","dresser2.jpg",210,"dresser"));
        productDBS.add(new Product("40"," Bostwick Shoals Bed","dresser3.jpg",210,"dresser"));
        productDBS.add(new Product("41","Jacob Bookcase Bed","dresser4.jpg",210,"dresser"));
        productDBS.add(new Product("42","Tempus Sofa","dresser5.jpg",210,"dresser"));

        productDBS.add(new Product("43","Dana Point Bed","linen.jpg",210,"linen"));
        productDBS.add(new Product("44","Gambrel Panel Bed","linen1.jpg",210,"linen"));
        productDBS.add(new Product("45","Jacob Panel Bed","linen2.jpg",210,"linen"));
        productDBS.add(new Product("46"," Bostwick Shoals Bed","linen3.jpg",210,"linen"));
        productDBS.add(new Product("47","Jacob Bookcase Bed","linen4.jpg",210,"linen"));
        productDBS.add(new Product("48","Tempus Sofa","linen5.jpg",210,"linen"));

        productDBS.add(new Product("49","Dana Point Bed","kbed.jpg",210,"kidsbed"));
        productDBS.add(new Product("50","Gambrel Panel Bed","kbed1.jpg",210,"kidsbed"));
        productDBS.add(new Product("51","Jacob Panel Bed","kbed2.jpg",210,"kidsbed"));
        productDBS.add(new Product("52"," Bostwick Shoals Bed","kbed3.jpg",210,"kidsbed"));
        productDBS.add(new Product("53","Jacob Bookcase Bed","kbed4.jpg",210,"kidsbed"));
        productDBS.add(new Product("54","Tempus Sofa","kbed5.jpg",210,"kidsbed"));

        productDBS.add(new Product("55","Dana Point Bed","diningset.jpg",210,"dining"));
        productDBS.add(new Product("56","Gambrel Panel Bed","diningset1.jpg",210,"dining"));
        productDBS.add(new Product("57","Jacob Panel Bed","diningset2.jpg",210,"dining"));
        productDBS.add(new Product("58"," Bostwick Shoals Bed","diningset3.jpg",210,"dining"));
        productDBS.add(new Product("59","Jacob Bookcase Bed","diningset4.jpg",210,"dining"));
        productDBS.add(new Product("60","Tempus Sofa","diningset5.jpg",210,"dining"));

        productDBS.add(new Product("61","Dana Point Bed","table.jpg",210,"table"));
        productDBS.add(new Product("62","Gambrel Panel Bed","table1.jpg",210,"table"));
        productDBS.add(new Product("63","Jacob Panel Bed","table2.jpg",210,"table"));
        productDBS.add(new Product("64"," Bostwick Shoals Bed","table3.jpg",210,"table"));
        productDBS.add(new Product("65","Jacob Bookcase Bed","table4.jpg",210,"table"));
        productDBS.add(new Product("66","Tempus Sofa","table5.jpg",210,"table"));

        productDBS.add(new Product("67","Dana Point Bed","sideboard.jpg",210,"sideboard"));
        productDBS.add(new Product("68","Gambrel Panel Bed","sideboard1.jpg",210,"sideboard"));
        productDBS.add(new Product("69","Jacob Panel Bed","sideboard2.jpg",210,"sideboard"));
        productDBS.add(new Product("70"," Bostwick Shoals Bed","sideboard3.jpg",210,"sideboard"));
        productDBS.add(new Product("71","Jacob Bookcase Bed","sideboard4.jpg",210,"sideboard"));
        productDBS.add(new Product("72","Tempus Sofa","sideboard5.jpg",210,"sideboard"));





    }
}
