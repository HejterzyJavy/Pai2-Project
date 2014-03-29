<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html>
<html>  

    <head>  

        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">  

        <link type="text/css" href="css/ui-lightness/jquery-ui-1.10.4.custom.css" rel="stylesheet" />  
        <link type="text/css" href="css/main/style.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.10.2.js"></script>  

        <script type="text/javascript" src="js/jquery-ui-1.10.4.custom.min.js"></script>  

        <title>Zarejestruj</title>  

    </head>  

    <body>  

        <script>
            $(function() {
                $('input[name=dob]').datepicker();
            });

            $(function() {
                $("input[type=submit], a, button")
                        .button()
                        .click(function(event) {
                        });
            });
        </script>  

        <form class="formularzRejestracji" method="POST" action="UserKontroler" name="frmAddUser"> 
            <ul>
                <li>
                    <h2>Rejestracja</h2>
                </li>
                <li>
                    <label for="login">Login :</label>
                    <input  
                        type="text" name="login" placeholder="Pole wymagane" 
                        value="<c:out value="${user.login}" />" />  
                     <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="haslo">Haslo :</label>
                    <input  
                        type="text" name="haslo"  placeholder="Pole wymagane" 
                        value="<c:out value="${user.haslo}" />" /> 
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="adres">Adres :</label>
                    <input  
                        type="text" name="adres"  placeholder="Pole wymagane" 
                        value="<c:out value="${user.adres}" />" />
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="kodPocztowy">Kod Pocztowy :</label>
                    <input  
                        type="text" name="kodPocztowy"  placeholder="Pole wymagane" 
                        value="<c:out value="${user.kodPocztowy}" />" />
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="telefon">Telefon :</label>
                    <input  
                        type="text" name="telefon"  placeholder="Pole wymagane" 
                        value="<c:out value="${user.telefon}" />" />   
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="imie">Imie :</label>
                    <input  
                        type="text" name="imie"  placeholder="Pole wymagane" 
                        value="<c:out value="${user.imie}" />" />  
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="nazwisko">Nazwisko :</label>
                    <input  
                        type="text" name="nazwisko"  placeholder="Pole wymagane" 
                        value="<c:out value="${user.nazwisko}" />" /> 
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="pesel">Pesel :</label>
                    <input  
                        type="text" name="pesel"   placeholder="Pole wymagane" 
                        value="<c:out value="${user.pesel}" />" /> 
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="dob">Data urodzenia :</label>
                    <input  
                        type="text" name="dob"  placeholder="Pole wymagane" 
                        value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" />
                    <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <label for="email"> Email :</label>
                   <input type="text" name="email"  placeholder="Pole wymagane" 
                                   value="<c:out value="${user.email}" />" />  
                   <span class="form_hint">Zla dana</span>
                </li>
                <li>
                    <input type="submit" value="Submit" />  
                </li>
            </ul>
        </form>  

    </body>  

</html>  
