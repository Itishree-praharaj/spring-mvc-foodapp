<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
    @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap");

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Open Sans", sans-serif;
    }

    body {
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        width: 100%;
        padding: 0 10px;
        background: url("https://images4.alphacoders.com/173/173994.jpg"), #000;
        background-position: center;
        background-size: cover;
    }

    .wrapper {
        width: 400px;
        border-radius: 8px;
        padding: 30px;
        text-align: center;
        border: 1px solid rgba(255, 255, 255, 0.5);
        backdrop-filter: blur(9px);
        -webkit-backdrop-filter: blur(9px);
    }

    form {
        display: flex;
        flex-direction: column;
    }

    h2 {
        font-size: 2rem;
        margin-bottom: 20px;
        color: #fff;
    }

    .input-field {
        position: relative;
        border-bottom: 2px solid #ccc;
        margin: 15px 0;
    }

    .input-field label {
        position: absolute;
        top: 50%;
        left: 0;
        transform: translateY(-50%);
        color: #fff;
        font-size: 16px;
        pointer-events: none;
        transition: 0.15s ease;
    }

    .input-field input {
        width: 100%;
        height: 40px;
        background: transparent;
        border: none;
        outline: none;
        font-size: 16px;
        font-weight: 600; /* Increased font weight */
        color: #fff;
    }

    .input-field input[name="quantity"]:focus~label,
    .input-field input[name="quantity"]:valid~label {
        font-size: 0.8rem;
        top: 10px;
        transform: translateY(-120%);
    }

    button {
        background: #fff;
        color: #000;
        font-weight: 600;
        border: none;
        padding: 12px 20px;
        cursor: pointer;
        border-radius: 3px;
        font-size: 16px;
        border: 2px solid transparent;
        transition: 0.3s ease;
    }

    button:hover {
        color: #fff;
        border-color: #fff;
        background: rgba(255, 255, 255, 0.15);
    }
</style>
</head>
<body>

    <div class="wrapper">
       
        <form:form action="saveitem" modelAttribute="item" >
            <h2>Save Item</h2>
            <div class="input-field">
                <form:input  path="name" readonly="true" />
                
            </div>

            <div class="input-field">
                <form:input  path="cost" readonly="true" />
               
            </div>

            <div class="input-field">
                <form:input  path="quantity" required="true" />
                <form:label path="quantity">Enter quantity</form:label>
            </div>

            <button type="submit">Save Item</button>
        </form:form>
    </div>

</body>
</html>
