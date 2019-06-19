import com.google.gson.Gson;
import com.google.gson.JsonObject;
//import model.Info;
//import model.InfoDB;
import model.Item;
import model.ProductDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       //resp.sendRedirect("checkout/index.jsp");

        String action = req.getParameter("action");

        if (action.equals("checkout")) {
            req.getRequestDispatcher("checkout/index.jsp").forward(req, resp);
        }else{
            doGet_check(req,resp);
        }
        }



    protected void doGet_check(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        PrintWriter out=response.getWriter();
        Gson gson=new Gson();
        ProductDB productModel = new ProductDB();
        String action=request.getParameter("action");
        System.out.println("================"+action);

        System.out.println("USERNAME================"+ request.getParameter("username"));

        List<Item> cart = (List<Item>) session.getAttribute("cart");

        //response.getWriter().write("COOL");

        if(action.equalsIgnoreCase("viewProduct")){
            System.out.println("SENDING BACK");
            out.print(gson.toJson(cart));
            out.flush();
            out.close();
        }

        response.sendRedirect("product/index.jsp");
    }

//    private InfoDB dao;
    Gson mapper = new Gson();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String jsonSting = request.getParameter("info");

       System.out.println("Hello"+jsonSting);
        //Info info = mapper.fromJson(jsonSting, Info.class);
        //info.setId(dao.genId());
        //dao.addInfo(info);
       // System.out.println("dao"+info.getId());
        PrintWriter out=response.getWriter();
        Gson gson=new Gson();
        HttpSession session = request.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
       // out.print(gson.toJson(cart));
       // out.flush();
        //out.close();

double sum=0;
for(int i=0;i<cart.size();i++){
    sum=sum+cart.get(i).getQuantity()*cart.get(i).getProduct().getPrice();

}

        JsonObject jsonObject=new JsonObject();
        jsonObject.addProperty("status","ok"+sum);

        out.print(jsonObject);

        session.setAttribute("cart",null);


    }

}
