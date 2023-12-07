function calcul_moyenne()
{
    var note1 = prompt("Donnez une premiere note : ")
    var note2 = prompt("Donnez une seconde note : ")
    var note3 = prompt("Donnez une troisieme note : ")
    var note4 = prompt("Donnez une quatrieme note : ")

    var somme = Number(note1 * 2) + Number(note2 *2) + Number(note3 *3);
    
    var moyenne = somme / Number(9);

    document.write("Voici la Somme : " + somme +"   Voici la Moyenne : " + moyenne );

    if (moyenne < 10)
        document.write("  Malheuresement vous etes redoublant");
        else  document.write(" Felicitations vous etes admis");



}

function age_test()
{
var age = prompt("Entrez votre age : ");

if  (age < 18 ) 
    document.write(":  Vous etes mineur");

 else document.write (" vous etes majeur");   


    
}

function simple_affichage()
{
var Nom=prompt("Quelle est votre Nom")
var Prenom=prompt("Quelle est votre Prenom")

document.write("<div style='background-color:red; border 2px solid blue; height:50px;width:150px;border-radius:30px;text-align : center;margin-bottom:5px;'>");
document.write("<p1 style ='color:white';>Bonjour "  + Prenom +""+Nom+"</p1>")
}

function test_color()
{
    var couleur = prompt("Donner une couleur");
    if(couleur == "rouge"  || couleur == "ROUGE")
    document.body.style.background="red";
    else if (couleur == "bleu" )
    document.body.style.background="blue";
    else if (couleur == "gris")
    document.body.style.background="grey";
    else
    alert("Couleur inconnue !")
}

function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a)+Number(b);
    t3.value = s;
}

function soustraction()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a)-Number(b);
    t3.value = s;
}

function produit()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a)*Number(b);
    t3.value = s;
}
function division()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a)/Number(b);
    t3.value = s;
}
function parite()
{
    var x = Number(document.getElementById("t1").value)
    if (x%2==0)
    t3.value =" Le nombre est pair"
    else
    t3.value =" Le nombre est impair"
}