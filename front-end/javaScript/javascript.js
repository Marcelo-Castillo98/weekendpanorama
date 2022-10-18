let current_page = 1;
let records_per_page = 3;
objJson = [];
let cont=1;

function mostrartodo(){

    
let result=document.getElementById("result");
fetch('http://localhost:8080/filtrarlugar')
.then(response => response.json())
.then(json => {
//console.log(json);
 
cantdatos.innerHTML="<span> Lugares encontrados : " + json.length; +"</span>"
  
 for(data of json){
    //console.log(data)
    let nombrelugar=data.nombre_l; 
    let locationplace=data.ubicacion;
    let descripcionlugar=data.descripcion;
    let preciolugar=data.precio;
    let imglugar=data.img;

    let tarjeta="<div class='card'><div class='cardheader'><b>$"+data.precio+"</b></div><img src='"+data.img+"'class='cardimg'alt='...'><div class='card-body'><h5 class='card-title'style='height:50px'>"+data.nombre_l+"</h5><p class='cardtext'> "+data.descripcion+"</p><a href='"+data.ubicacion+"' target='_blank' style='background-color:#0C8218; width:100%' class='btn btn-success'><b>VER MAPA</b></a></div></div>"

    
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
//page.style.visibility= "visible";

{
var btn_next = document.getElementById("btn_next");
var btn_prev = document.getElementById("btn_prev");
var listing_table = document.getElementById("listingTable");
var page_span = document.getElementById("page");
//let current_page = 1;

// Validate page
if (page < 1) page = 1;
if (page > numPages()) page = numPages();

result.innerHTML = "";

for (var i = (page-1) * records_per_page; i < (page * records_per_page) && i < objJson.length; i++) {
  result.innerHTML += objJson[i].adName + "<br>";
}
page_span.innerHTML = page + "/" + numPages();


if (page == 1) {
  btn_prev.style.visibility = "hidden";
} else {
  btn_prev.style.visibility = "visible";
}

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
  //changePage(1);
  //current_page=1;
  //changePage(current_page)
let resultf=document.getElementById("filter").value;
if(resultf.length >= 20){
    swal("Ha ocurrido un error.", "Has ingresado demasiados datos.", "error");
}else{
//location.reload();
//console.log("aca"+ resultf) 
cont=1;
let url="'http://localhost:8080/filtrarlugar/ "
let resulturl=url+resultf+"'"
//console.log(resulturl)
fetch('http://localhost:8080/filtrarlugar/'+resultf )
.then(response => response.json())
.then(json => {

  //console.log("acá va el dato"+json);
  cantdatos.innerHTML=""
  cantdatos.innerHTML="Lugares encontrados : " + json.length;
  result.innerHTML=""
  for(data of json){
   //console.log(data)

    let nombrelugar=data.nombre_l; 
    let locationplace=data.ubicacion;
    let descripcionlugar=data.descripcion;
    let preciolugar=data.precio;
    let imglugar=data.img;

    let tarjeta="<div class='card'><div class='cardheader'><b>$"+data.precio+"</b></div><img src='"+data.img+"'class='cardimg'alt='...'><div class='card-body'><h5 class='card-title' style='height:50px'>"+data.nombre_l+"</h5><p class='cardtext'> "+data.descripcion+"</p><a href='"+data.ubicacion+"' target='_blank' style='background-color:#0C8218; width:100%' class='btn btn-success'><b>VER MAPA</b></a></div></div>"

    
    
    //console.log(preciolugar);  
    objJson.push({ adName: tarjeta})
    //al inicio muestra los datos de la primera pagina
    if (cont<=records_per_page){
      let htmlContent=result.innerHTML        
      result.innerHTML=htmlContent+tarjeta
      current_page=1;
      //page_span.innerHTML = "1/" + numPages();
      
      //
      //changePage(current_page)
      btn_prev.style.visibility = "hidden";
      page.style.visibility= "hidden";

      
     
    }
    cont++
    
   // insertAdjacentHTML().result=htmlContent+tarjeta

    
    /*let htmlcontent=result.innerHTML;
    result.innerHTML=htmlcontent+html*/
  }
  
}
)
}

}
