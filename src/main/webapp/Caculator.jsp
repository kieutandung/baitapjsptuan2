<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post">
    <h2>First operand:</h2>
    <input type="number" name="num1" required> <br>
    <h2>Operator:</h2>
    <select name="operator" required>
        <option value="add">Add</option>
        <option value="subtract">Subtract</option>
        <option value="multiply">Multiply</option>
        <option value="divide">Divide</option>
    </select> <br>
    <h2>Second operand:</h2>
    <input type="number" name="num2" required> <br>
    <input type="submit" value="Calculate">
</form>

<%
    String num1Str = request.getParameter("num1");
    String num2Str = request.getParameter("num2");
    String operator = request.getParameter("operator");

    if (num1Str != null && num2Str != null && operator != null) {
        try {
            int num1 = Integer.parseInt(num1Str);
            int num2 = Integer.parseInt(num2Str);
            int result = 0;

            switch (operator) {
                case "add":
                    result = num1 + num2;
                    break;
                case "subtract":
                    result = num1 - num2;
                    break;
                case "multiply":
                    result = num1 * num2;
                    break;
                case "divide":
                    if (num2 == 0) {
                        throw new ArithmeticException("Cannot divide by zero");
                    }
                    result = num1 / num2;
                    break;
                default:
                    response.getWriter().println("Error: Invalid operator");
                    return;
            }
            response.getWriter().println("Result: " + result);
        } catch (NumberFormatException e) {
            response.getWriter().println("Error: Invalid number format");
        } catch (ArithmeticException e) {
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
%>
</body>
</html>
