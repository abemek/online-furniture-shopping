//import com.google.gson.Gson;
//import com.google.gson.Gson;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import model.Item;
import model.Product;
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
//import com.fasterxml.jackson.databind.ObjectMapper;


@WebServlet("/cart")
public class CartServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    ObjectMapper objectMapper= new ObjectMapper();

    public CartServlet() {
        super();
    }
    Gson gson = new Gson();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            doGet_DisplayCart(request, response);
        } else {
            if (action.equalsIgnoreCase("buy")) {
                doGet_BuyCart(request, response);
            } else if (action.equalsIgnoreCase("remove")) {
                doGet_Remove(request, response);
            }
            else if (action.equalsIgnoreCase("view")) {
                request.getRequestDispatcher("cart/mycart.jsp").forward(request, response);
            }
            else if (action.equalsIgnoreCase("changeQty")) {
                doGet_ChangeQty(request, response);
            }
        }
    }

    protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("cart/index.jsp").forward(request, response);
        request.getRequestDispatcher("product/index.jsp").forward(request, response);
    }

    protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = isExisting(request.getParameter("id"), cart);
        cart.remove(index);
        session.setAttribute("cart", cart);
        out.print(gson.toJson(cart));
        out.flush();
        out.close();
    }

    protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("cart");
    }

    protected void doGet_ChangeQty(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        int qtyint = Integer.parseInt(request.getParameter("qty"));
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = isExisting(request.getParameter("id"), cart);

        for(Item i : cart){
            System.out.println(i.getProduct().getId() + " " + i.getQuantity());
        }

        for(Item i : cart){
            if(i.getProduct().getId().equals(request.getParameter("id"))){
                i.setQuantity(qtyint);
            }
        }

        for(Item i : cart){
            System.out.println(i.getProduct().getId() + " " + i.getQuantity());
        }

        session.setAttribute("cart", cart);
        out.print(gson.toJson(cart));
        out.flush();
        out.close();
    }

    protected void doGet_BuyCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDB productModel = new ProductDB();
        HttpSession session = request.getSession();
        HttpSession countCart = request.getSession();
        if (session.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<Item>();

            for(Product id:productModel.getProductDBS())
            {
                if(id.getId().equals(request.getParameter("id")))
                {
                    cart.add(new Item(id, 1));
                }
            }
            session.setAttribute("cart", cart);
        }
        else
            {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = isExisting(request.getParameter("id"), cart);
            if (index == -1) {
                for(Product id:productModel.getProductDBS())
                {
                    if(id.getId().equals(request.getParameter("id")))
                    {
                        cart.add(new Item(id, 1));

                    }
                }
            }
            else {
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
            }
            session.setAttribute("cart", cart);
        }
        PrintWriter out = response.getWriter();
        String jsonString = objectMapper.writeValueAsString(session.getAttribute("cart"));
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(jsonString);
        out.flush();
    }

    private int isExisting(String id, List<Item> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProduct().getId().equalsIgnoreCase(id)) {
                return i;
            }
        }
        return -1;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}