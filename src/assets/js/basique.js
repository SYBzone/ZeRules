
let officiel = document.querySelector('#officiel');
let derive = document.querySelector('#derive');

derive.addEventListener('click', ajout);
officiel.addEventListener('click',ajout2)
function ajout (){
    derive.classList.add('border');
    officiel.classList.remove('border');
    console.log("ajout");
}
function ajout2(){
    derive.classList.remove('border');
    officiel.classList.add('border');
}
