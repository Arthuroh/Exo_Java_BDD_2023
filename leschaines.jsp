<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de charactères</p>

     <% int i ;
		int cpt = 0;
		char[] TABL = S.toCharArray();
		char[] TABL2 = S2.toCharArray(); %>

		<p System.out.println(" Nous faisons le test avec le mot : " + S); 
		System.out.println(Arrays.toString(TABL));p>
				
		<% for (i=0; (i < TABL.length); i = i+1){
			if(TABL[i] = "e") {
		    	cpt = cpt + 1; 
		    }else {
		    	cpt = cpt;
		    }			
		}%>
		
		<p System.out.println(" Il y a " + cpt + " lettre 'e' dans le mot " + S);p>

<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>

<% for (i=0; (i < TABL.length); i = i+1){
			<p System.out.println(TABL[i] + "\n"); p>
		    }	%>	

<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>

<% for (i=0; (i < TABL2.length); i = i+1){
		if(TABL2[i] = " ") {
			<p System.out.println("\n");  p>
	    }else {
	    	<p System.out.println(TABL2[i]); p>	    		
	}
		}%>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>

<% for (i=0; (i < TABL2.length); i = i+1){
			cpt = cpt + 1;
			if(cpt % 2 == 0) {  
		    }else {
		    	<p System.out.println(TABL2[i]); p>	    		
		}
			}%>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>

<p System.out.println("Tableau avant l'inversion: " + Arrays.toString(TABL2)); p>
		 
	   <% for(i=0; i< TABL2.length/2; i++){
	        int tmp = TABL2[i];
	        TABL2[i] = TABL2[TABL2.length-i-1];
	        TABL2[TABL2.length-i-1] = tmp;
	    }%>
	   <p  System.out.println("Tableau après l'inversion: " + Arrays.toString(TABL2)); p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>
int voyel = 0;
int cons = 0;

<% for(int i = 0; i < TABL2.length(); i++) {
           char c = TABL2.charAt(i); 
           if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') { 
                voyel++;
           } else if((c >= 'a' && c <= 'z')) {
                cons++;
           }
        } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
