let current_page = 1;
let records_per_page = 6;
objJson = [];
let cont=1;

//funcion que muestra todos los datos en la base de datos.
function mostrartodo(){

    
let result=document.getElementById("result");
fetch('http://localhost:8080/filterplace')
.then(response => response.json())
.then(json => {

 
cantdatos.innerHTML="<span> Lugares encontrados : " + json.length; +"</span>"
  
 for(data of json){
    let tarjeta="<div class='card'><div class='cardheader'><b>$"+data.price+"</b></div><img src='"+data.img+"'class='cardimg'alt='...'><div class='card-body'><h5 class='card-title'style='height:50px'>"+data.place_name+"</h5><p class='cardtext'> "+data.description+"</p><a href='"+data.ubication+"' target='_blank' style='background-color:#0C8218; width:100%' class='btn btn-success'><b>VER MAPA</b></a></div></div>"
    
//llena el objeto "objJson" con los parametros obtenido de la base de datos guardados en la variable tarjeta.
    objJson.push({ adName: tarjeta})
    //al inicio muestra los datos de la primera pagina
    if (cont<=records_per_page){
      let htmlContent=result.innerHTML        
      result.innerHTML=htmlContent+tarjeta
      btn_prev.style.visibility = "hidden";
      
    }
    cont++
  }

})}
function prevPage()
{
if (current_page > 1) {
  current_page--;
  changePage(current_page);
}
}

function nextPage()
{
if (current_page < numPages()) {
  current_page++;
  changePage(current_page);
}
}

function changePage(page)
{
var btn_next = document.getElementById("btn_next");
var btn_prev = document.getElementById("btn_prev");
var listing_table = document.getElementById("listingTable");
var page_span = document.getElementById("page");

//evita que la pagina actual tenga valor 0 o negativo
if (page < 1) page = 1;
if (page > numPages()) page = numPages();

result.innerHTML = "";

//recorre el objeto que contiene todos los lugares y los pagina.
for (var i = (page-1) * records_per_page; i < (page * records_per_page) && i < objJson.length; i++) {
  result.innerHTML += objJson[i].adName + "<br>";
}
//calcula la pagina actual y muestra la actual/el total de paginas
page_span.innerHTML = page + "/" + numPages();


//si esta en la primera pagina esconde el boton prev
if (page == 1) {

  btn_prev.style.visibility = "hidden";
} else {
  btn_prev.style.visibility = "visible";
}

//si esta en la ultima pagina esconde el boton next
if (page == numPages()) {
  btn_next.style.visibility = "hidden";
} else {
  btn_next.style.visibility = "visible";
}
}

function numPages(){
return Math.ceil(objJson.length / records_per_page);
}

window.onload = function() {
changePage(1);
};

function filterByPrice(){
    
  objJson = [];

let resultf=document.getElementById("filter").value;
//valida si se ingresa al filtro mas de 20 caracteres
if(resultf.length >= 20){
    swal("Ha ocurrido un error.", "Has ingresado demasiados datos.", "error");
}
//valida si no se ingresa al filtro ningun dato.
else if(resultf.length == 0){
  swal("Ha ocurrido un error.", "No has ingresado ningún dato.", "warning");
}
//valida que no haya ningun caracter que no sea un numero.
else if(!resultf.match(/^\d+/)){
    swal("Ha ocurrido un error.", "Solo se permiten numeros", "error");
    }

else{
    

cont=1;
//se conecta a la api. esta consulta devuelve todos los datos que tengan un precio menor al que se
//ingresa (resultf).
fetch('http://localhost:8080/filterplace/'+resultf )
.then(response => response.json())
.then(json => {

  cantdatos.innerHTML=""
  //muestra la cantidad de datos que tiene el json.
  cantdatos.innerHTML="Lugares encontrados : " + json.length;
  result.innerHTML=""
  for(data of json){
    
    //se crea la tarjeta pasandole los parametros que se obtienen del json.
    let tarjeta="<div class='card'><div class='cardheader'><b>$"+data.price+"</b></div><img src='"+data.img+"'class='cardimg'alt='...'><div class='card-body'><h5 class='card-title' style='height:50px'>"+data.place_name+"</h5><p class='cardtext'> "+data.description+"</p><a href='"+data.ubication+"' target='_blank' style='background-color:#0C8218; width:100%' class='btn btn-success'><b>VER MAPA</b></a></div></div>"

    objJson.push({ adName: tarjeta})
    //al inicio muestra los datos de la primera pagina
    if (cont<=records_per_page){
      let htmlContent=result.innerHTML        
      result.innerHTML=htmlContent+tarjeta
      current_page=1; 
      page.style.visibility= "hidden";
 
    }
    cont++

  }
  
})}
}
//guarda en localstorage el nombre de usuario
function welcomeName(){
  let dataUser = localStorage.getItem('user_name_local');
  let name = document.getElementById('welcomeUser'); 
  name.innerText = dataUser
  
}
