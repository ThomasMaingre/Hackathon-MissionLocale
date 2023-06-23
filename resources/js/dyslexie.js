var statut_dyslexie = false;
var bouton_dyslexie = document.querySelector("")
bouton_dyslexie.onclick = function () {
    if (statut_dyslexie){
        document.body.style.fontFamily = "";
        statut_dyslexie = false;
    }else{
        document.body.style.fontFamily = "";
        statut_dyslexie = true;
    }
}