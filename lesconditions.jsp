<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p>Saisir la valeur 3 : <input type="text" id="inputValeur" name="valeur3">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String A = request.getParameter("valeur1"); %>
    <% String B = request.getParameter("valeur2"); %>
    <% String C = request.getParameter("valeur3"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (A != null && B != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intA = Integer.parseInt(A); %>
        <% int intB = Integer.parseInt(B); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intA > intB) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intA < intB) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>

<p System.out.println("Vous avez choisi : " + A +", "+ B +" et "+ C + "\n") p>

<% if(A<C) {
		    	if(B>C) {
		    }System.out.println("Le nombre " + C + " se situe bien entre " + A + " et " + B); 
		    }else {
				System.out.println("Le nombre " + C + " ne se situe pas entre " + A + " et " + B);
			} %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<p System.out.println("Vous avez choisi : " + A + "\n"); p>
	    
	   <% if(A<0) {
	    	System.out.println("Le nombre " + A + " est négatif "); 
	    }if(A>0) {
			System.out.println("Le nombre " + A + " est positif ");
		} %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
