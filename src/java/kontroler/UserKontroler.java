package kontroler;

import java.io.IOException;

import java.text.ParseException;

import java.text.SimpleDateFormat;

import java.util.Date;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import dao.UserDao;

import model.User;

public class UserKontroler extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private static String INSERT_OR_EDIT = "/user.jsp";

    private static String LIST_USER = "/listUser.jsp";
    
    private static String INDEX = "/index.html";

    private UserDao dao;

    public UserKontroler() {

        super();

        dao = new UserDao();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String forward = "";

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")) {

            int userId = Integer.parseInt(request.getParameter("userId"));

            dao.deleteUser(userId);

            forward = LIST_USER;

            request.setAttribute("users", dao.getAllUsers());

        } else if (action.equalsIgnoreCase("edit")) {

            forward = INSERT_OR_EDIT;

            int userId = Integer.parseInt(request.getParameter("userId"));

            User user = dao.getUserById(userId);

            request.setAttribute("user", user);

        } else if (action.equalsIgnoreCase("listUser")) {

            forward = LIST_USER;

            request.setAttribute("users", dao.getAllUsers());

        } else {

            forward = INSERT_OR_EDIT;

        }

        RequestDispatcher view = request.getRequestDispatcher(forward);

        view.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = new User();

        user.setLogin(request.getParameter("login"));
        user.setHaslo(request.getParameter("haslo"));
        user.setAdres(request.getParameter("adres"));
        user.setKodPocztowy(request.getParameter("kodPocztowy"));
        user.setTelefon(request.getParameter("telefon"));
        user.setImie(request.getParameter("imie"));
        user.setNazwisko(request.getParameter("nazwisko"));
        user.setPesel(request.getParameter("pesel"));

        try {

            Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));

            user.setDob(dob);

        } catch (ParseException e) {
            e.printStackTrace();
        }

        user.setEmail(request.getParameter("email"));
        String userid = request.getParameter("userid");

        if (userid == null || userid.isEmpty()) {
            dao.addUser(user);
        } else {
            user.setUserid(Integer.parseInt(userid));
            dao.updateUser(user);
        }

        RequestDispatcher view = request.getRequestDispatcher(INDEX);
       // request.setAttribute("users", dao.getAllUsers());
        view.forward(request, response);

    }

}