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
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 2L;

    private UserDAO userDAO;
    Gson mapper = new Gson();

    @Override
    public void init() throws ServletException {
        //userDAO = new UserDAO();
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("login.jsp");
        //resp.sendRedirect("http://www.google.com");
    }

    public List<UserModel> getAllFileUsers(HttpServletRequest req) {
        List<UserModel> musers = new ArrayList<>();
        BufferedReader reader;
        ServletContext context = req.getServletContext();
        String path = context.getRealPath("/");
        try {
            reader = new BufferedReader(new FileReader(
                    path + "users.dat"));
            String line = reader.readLine();
            while (line != null) {

                UserModel user = new UserModel();

                Map mUser = new Gson().fromJson(line, Map.class);

                user.setUsername(mUser.get("username").toString());
                user.setPassword(mUser.get("password").toString());
                musers.add(user);
                // read next line
                line = reader.readLine();
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return musers;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("BBBBBBB");
        userDAO = new UserDAO();


        for (UserModel us : userDAO.getAllUsers()) {
            System.out.println("User==> " + us);
        }

        UserModel user = mapper.fromJson(req.getParameter("mlogin"), UserModel.class);


        HttpSession oldSession = req.getSession(false);

        if (oldSession != null) {
            oldSession.invalidate();
        }

        HttpSession newSession = req.getSession(true);
        String checkbox = req.getParameter("remember");

        int isSaved = (int) userDAO.getAllUsers().stream().filter(e -> e.getUsername().equals(user.getUsername()) && e.getPassword().equals(user.getPassword())).count();
        int isSaved1 = (int) getAllFileUsers(req).stream().filter(e -> e.getUsername().equals(user.getUsername()) && e.getPassword().equals(user.getPassword())).count();

        System.out.println("INSIDE " + user + " " + isSaved + " deuxieme " + isSaved1);
        PrintWriter out = null;
        if (isSaved == 1 || isSaved1 == 1) {
            newSession.setAttribute("usersession", user.getUsername());
            out = resp.getWriter();

            JsonObject cResponse = new JsonObject();
            cResponse.addProperty("status", "ok");
            out.print(cResponse);

        } else {
            JsonObject cResponse = new JsonObject();
            cResponse.addProperty("status", "no");
            out.print(cResponse);
        }


    }
}
