<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator</title>
</head>
<body>

<h1>Simple Calculator</h1>

<form action="calculate" method="post">

    <label>First operand:</label>
    <input type="number"
           name="firstOperand"
           step="any"
           required>

    <br><br>

    <label>Operator:</label>

    <select name="operator">
        <option value="+">Addition (+)</option>
        <option value="-">Subtraction (-)</option>
        <option value="*">Multiplication (*)</option>
        <option value="/">Division (/)</option>
    </select>

    <br><br>

    <label>Second operand:</label>
    <input type="number"
           name="secondOperand"
           step="any"
           required>

    <br><br>

    <input type="submit" value="Calculate">

</form>

</body>
</html>