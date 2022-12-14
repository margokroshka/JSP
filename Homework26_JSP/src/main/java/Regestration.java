

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;

@WebServlet("/reg")
public class Regestration extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/my-registration.jsp").forward(req, resp);

    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        if(login==null){
            login="hello";
        }
        String pass = req.getParameter("password");

        if (!login.equals("") && !pass.equals("")) {

            getServletContext().getRequestDispatcher("/Succesfully.jsp").forward(req, resp);
        } else {
            getServletContext().getRequestDispatcher("/Eror.jsp").forward(req, resp);
        }
        req.setAttribute("login", login);
    }
}
