package Controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dao.UserDAO;
import model.UserModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 2L;

    private UserDAO userDAO;
    Gson mapper = new Gson();

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();


    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.sendRedirect("register.jsp");
        //resp.sendRedirect("http://www.google.com");
    }
    public void createFile(HttpServletRequest req){
        ServletContext context = req.getServletContext();
        String path = context.getRealPath("/");

        File f = new File(path+"users.dat");
        if (!f.exists()) {
            try {
                System.out.println("creating a file");
                f.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("File already exists");
        }
    }
    public void addUser(String data,HttpServletRequest req){
        FileWriter fileWriter = null; //Set true for append mode
        ServletContext context = req.getServletContext();
        String path = context.getRealPath("/");
        try {
            fileWriter = new FileWriter(path+"users.dat", true);
            PrintWriter printWriter = new PrintWriter(fileWriter);
            printWriter.println(data);  //New line
            printWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        createFile(req);
        ServletContext context = req.getServletContext();
        String path = context.getRealPath("/");
        UserModel user = mapper.fromJson(req.getParameter("mregister"), UserModel.class);
        addUser(req.getParameter("mregister"),req);
        PrintWriter out = null;
        userDAO.addUser(user);
        out = resp.getWriter();
        JsonObject cResponse = new JsonObject();
        cResponse.addProperty("status", "ok");
        out.print(cResponse);


}
}
