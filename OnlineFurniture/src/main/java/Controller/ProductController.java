package Controller;

import model.Product;
import model.ProductDB;
import model.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.*;


@WebServlet("/products")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductDB productModel = new ProductDB();
        String type=req.getParameter("type");

        List<Product> products=productModel.getProductDBS().stream().filter(x->x.getCategory().equals(type)).collect(Collectors.toList());

        req.setAttribute("products",products);
        req.getRequestDispatcher("product/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
