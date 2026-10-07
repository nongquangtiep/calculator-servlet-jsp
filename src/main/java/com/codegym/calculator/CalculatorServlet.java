package com.codegym.calculator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        try {
            double firstOperand =
                    Double.parseDouble(request.getParameter("firstOperand"));

            double secondOperand =
                    Double.parseDouble(request.getParameter("secondOperand"));

            char operator =
                    request.getParameter("operator").charAt(0);

            double result = Calculator.calculate(
                    firstOperand,
                    secondOperand,
                    operator
            );

            request.setAttribute("result", result);

        } catch (ArithmeticException e) {

            request.setAttribute(
                    "error",
                    "Cannot divide by zero"
            );

        } catch (Exception e) {

            request.setAttribute(
                    "error",
                    "Invalid input"
            );
        }

        RequestDispatcher dispatcher =
                request.getRequestDispatcher("/WEB-INF/views/result.jsp");

        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("index.jsp");
    }
}