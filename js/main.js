<script>
document.getElementById("a").onclick = function() {
    var navlinkactive=document.querySelector('.active');
    if(navlinkactive) navlinkactive.setAttribute('class','nav-link');
    var element=document.getElementById('a'); 
    document.getElementById("a").classList.toggle("active");
}
document.getElementById("b").onclick = function() {
    var navlinkactive=document.querySelector('.active');
    if(navlinkactive) navlinkactive.setAttribute('class','nav-link');
    var element=document.getElementById('b'); 
    document.getElementById("b").classList.toggle("active");
}
document.getElementById("c").onclick = function() {
    var navlinkactive=document.querySelector('.active');
    if(navlinkactive) navlinkactive.setAttribute('class','nav-link');
    var element=document.getElementById('c'); 
    document.getElementById("c").classList.toggle("active");
};


/*-function act(t){
  var navlinkactive=document.querySelector('.active');
  navlinkactive.setAttribute('class','nav-link');
  t.setAttribute('class', 'nav-link active');
}

   document.getElementById("myBtn").addEventListener("click", displayDate); 
document.getElementsByClassName("nav-link").addEventListener("click", myFunction);

function myFunction() {
  document.getElementsByClassName("nav-link").innerHTML+=" active";
}
function act1(this) {
  document.getElementById("myBtn").onclick = displayDate; 
}

function act(this) {
  Document.querySelectorAll("nav-link").classList.replace('active', ' ');
  this.className='nav-link active';
  //this.class= 'nav-link active';
}

a[].addEventListener('click',
  ()=>this.setAttribute('class', 'nav-link active');
  );*/