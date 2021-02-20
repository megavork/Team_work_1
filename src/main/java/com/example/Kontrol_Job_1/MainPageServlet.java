package com.example.Kontrol_Job_1;

import person.Person;
import personsBase.BaseOfPersons;
import util.Calc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/main")
public class MainPageServlet extends HttpServlet {
    HttpSession session;
    BaseOfPersons base = new BaseOfPersons();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/jsp/index.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        session = req.getSession();

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String sex = req.getParameter("sex");
        String region = req.getParameter("region");
        String price = req.getParameter("price");

        base.addPerson(new Person(firstName, lastName, sex, region, Calc.getTax(sex,region,price)));
        req.setAttribute("personBase",base.getFullSortedList());

        session.setAttribute("firstName",firstName);
        session.setAttribute("lastName",lastName);
        session.setAttribute("sex",sex);
        session.setAttribute("region",region);
        session.setAttribute("price",price);
        session.setAttribute("personBase",base.getFullSortedList());

        getServletContext().getRequestDispatcher("/jsp/second.jsp").forward(req, resp);
    }



}
