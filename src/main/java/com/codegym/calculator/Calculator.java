package com.codegym.calculator;

public class Calculator {

    public static double calculate(double firstOperand,
                                   double secondOperand,
                                   char operator) {

        switch (operator) {
            case '+':
                return firstOperand + secondOperand;

            case '-':
                return firstOperand - secondOperand;

            case '*':
                return firstOperand * secondOperand;

            case '/':
                if (secondOperand == 0) {
                    throw new ArithmeticException("Cannot divide by zero");
                }
                return firstOperand / secondOperand;

            default:
                throw new IllegalArgumentException("Invalid operator");
        }
    }
}