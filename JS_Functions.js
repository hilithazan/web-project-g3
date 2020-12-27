/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function dropDownList() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

function showUserNameFunc(id) {
  var name=localStorage.getItem('user');
  if (name.length>0) {
    if (name.length<10){
    document.getElementById(id).innerHTML='Hi '+ name +'!';
    }
    else {
      document.getElementById(id).innerHTML='Hi friend!';
    }
    localStorage.setItem('user',"");
    document.getElementById('logoutBtn').classList.remove('dispNone');
    document.getElementById('logoutBtn').classList.add('dispBlock');
  }
}

function CheckForm(userName,password,showUserName) {
  var b1=document.getElementById(userName).value;
  var b2=document.getElementById(password).value;
  if (b1.length<1 || b2.length<1){
    alert("!אנא הזן ערכים בכל השדות");
    document.getElementById(userName).value="";
    document.getElementById(password).value="";
  }
  else {
    if (b1.length<2 || b2.length<8) {
      alert("שם המשתמש הוא באורך 2 תווים לכל הפחות והסיסמא באורך 8 תווים לכל הפחות.");
      document.getElementById(userName).value="";
      document.getElementById(password).value="";
    }
    else { //all good
      if (b1.length<10){
        document.getElementById(showUserName).innerHTML='Hi '+ b1 +'!';
        }
        else {
          document.getElementById(showUserName).innerHTML='Hi friend!';
        }
      modal.style.display = "none";
      document.getElementById(userName).value="";
      document.getElementById(password).value="";
      document.getElementById('logoutBtn').classList.remove('dispNone');
      document.getElementById('logoutBtn').classList.add('dispBlock');
    }
  }
}

function closeWindow(){
  modal.style.display = "none";
}

function logoutFunc(btn,pID){
  document.getElementById(btn).classList.remove('dispBlock');
  document.getElementById(btn).classList.add('dispNone');
  document.getElementById(pID).innerHTML='';
}

function forgotPass(){
  var b1=document.getElementById('userName').value;
  if (b1.length<2){
    alert("יש להזין שם משתמש על מנת לשחזר סיסמה")
  }
  else{
  alert("סיסמתך נשלחה לכתובת המייל השמורה במערכת.");
  }
}

function OpenRegisterForm(id) {
  document.getElementById(id).href='registerPage.html';

}



//---------------------------------------------------//
// Get the modal
var modal = document.getElementById("myModal");
  
// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
function onclickFunc() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
function onclickSpan() {
  modal.style.display = "none";
}

function hidePassword() {
  var x = document.getElementById("pass");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

//---------------------------------------------//
function mouseOverImg(id) {
  document.getElementById(id).src = "LeorreSea3Circle.png";
}

function mouseOutImg(id) {
  document.getElementById(id).src = "LeorreSeaCircle.png";
}

function changeElementSize(id,size){
  document.getElementById(id).style.width=size;
  document.getElementById(id).style.height=size;
}

function focusingContact(x,color){
  x.style.background=color;
}

function submitPop(){
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}

function VXpicName(inputID,imgID,pID) {
  var b1=document.getElementById(inputID).value;
  if (b1.length<2) {
    document.getElementById(imgID).src='XSign.png';
    document.getElementById(pID).innerHTML='שם חייב לכלול 2 תווים לפחות';
    return false;
  } 
  else {
    document.getElementById(imgID).src='VSign.png';
    document.getElementById(pID).innerHTML='';
    return true;
  }
}

function VXpicUserName(inputID,imgID,pID) {
  var b1=document.getElementById(inputID).value;
  if (b1.length<2) {
    document.getElementById(imgID).src='XSign.png';
    document.getElementById(pID).innerHTML='שם משתמש חייב לכלול 2 תווים לפחות';
    return [false,''];
  } 
  else {
    document.getElementById(imgID).src='VSign.png';
    document.getElementById(pID).innerHTML='';
    return [true,b1];
  }
}

function VXpicEmail(inputID,imgID,pID) {
  var len=false;
  var a=false;
  var point=false;
  var b1=document.getElementById(inputID).value;
  if (b1.length>4) {
    len=true;
  }
  if (b1.includes('@')) {
    a=true;
  }
  if(a && b1.includes('.') && b1.indexOf('@')<b1.indexOf('.')) {
    point=true;
  }
  if(len &&a && point){
      document.getElementById(imgID).src='VSign.png';
      document.getElementById(pID).innerHTML='';
      return true;
  } 
  else {
    document.getElementById(imgID).src='XSign.png';
    document.getElementById(pID).innerHTML='האימייל הוזן בצורה לא תקינה';
    return false;
  }
}

function VXpicPass(inputID,imgID,pID) {
  var b1=document.getElementById(inputID).value;
  if (b1.includes('0')|| b1.includes('1') || b1.includes('2') || b1.includes('3') || b1.includes('4') || b1.includes('5') || b1.includes('6') || b1.includes('7') || b1.includes('8') || b1.includes('9')) {
    if (b1.length<8) {
      document.getElementById(imgID).src='XSign.png';
      document.getElementById(pID).innerHTML='סיסמא חייבת להיות באורך 8 תווים לפחות';
      return false;
    }
    else {
      document.getElementById(imgID).src='VSign.png';
      document.getElementById(pID).innerHTML='';
      return true;
    }
  } 
  else {
    document.getElementById(imgID).src='XSign.png';
    document.getElementById(pID).innerHTML='סיסמא חייבת לכלול מספר';
    return false;
  }
}

function VXpicPass2(inputID,imgID,pID,pass1ID) {
  var b1=document.getElementById(inputID).value;
  var b2=document.getElementById(pass1ID).value;
  if(b1==b2) {
    document.getElementById(imgID).src='VSign.png';
    document.getElementById(pID).innerHTML='';
    return true;
  }
  else {
    document.getElementById(imgID).src='XSign.png';
    document.getElementById(pID).innerHTML='הסיסמא החוזרת לא זהה לסיסמא הקודמת';
    return false;
  }
}

function checkLoginForm(id) {
  b1= VXpicName('firstname','firstnameVX','firstNameP');
  b2= VXpicName('lastName','lastnameVX','lastNameP');
  [b3,userName]= VXpicUserName('userName','userNameVX','userNameP');
  b4= VXpicEmail('email','emailVX','emailP');
  b5= VXpicPass('password','passwordVX','passwordP');
  b6= VXpicPass2('password2','password2VX','password2P','password');
  if (b1 && b2 && b3 && b4 && b5 && b6) {
    alert("הרשמתך לאתר בוצעה בהצלחה");
    document.getElementById(id).href='mainPage.html';
    localStorage.setItem('user',userName);
  }
  else {
    alert("לפחות אחד מהשדות לא מולא כראוי. אנא נסה שנית");
    document.getElementById(id).href='registerPage.html';
    localStorage.setItem('user',"");
  }
}

function goToPage(id,h){
  document.getElementById(id).href=h;
}

function changePointer(id,cur){
  document.getElementById(id).style.cursor=cur;
}
//----------------------------------עוגיה מתגלגלת------------------------------------
var picPaths = ['cookie_roll2.png','cookie_roll3.png','cookie_roll4.png','cookie_roll1.png'];
            var curPic = -1;
            //preload the images for smooth animation
            var imgO = new Array();
            for(i=0; i < picPaths.length; i++) {
                imgO[i] = new Image();
                imgO[i].src = picPaths[i];
            }

            function swapImage() {
                curPic = (++curPic > picPaths.length-1)? 0 : curPic;
                imgCont.src = imgO[curPic].src;
                setTimeout(swapImage,200);
            }

            window.onload=function() {
                imgCont = document.getElementById('coockie_roll');
                move();
                swapImage();
            }

            var i = 0;
            function move() {
                if (i == 0) {
                    i = 1;
                    var elem = document.getElementById("myBar");
                    var width = 1;
                    var id = setInterval(frame, 12);
                    function frame() {
                        if (width >= 100) {
                        clearInterval(id);
                        document.getElementById('myBar').classList.remove('dispBlock');
                        document.getElementById('myBar').classList.add('dispNone');
                        document.getElementById('coockie_roll').classList.add('dispNone');
                        document.body.style.overflow = "visible";
                        i = 0;
                    } else {

                        width++;
                        elem.style.width = width + "%";
                        }
                    }
                }
            }

//----------------------------------אירועים------------------------------------

        /* event image size changes when onmouse */
      function eventOver (id){
              document.getElementById(id).width="350";
              document.getElementById(id).height="250";
          }
      function eventOut (id){
              document.getElementById(id).width="300";
              document.getElementById(id).height="200";
          }
//----------------------------------מי אני------------------------------------
var imageSources = ["adi_about_me_image2.jpg", "adi_about_me_image3.jpg", "adi_about_me_image4.jpg", "adi_about_me_image5.jpg","adi_about_me_image1.jpg"]

var index = 0;
setInterval (function(){
  if (index === imageSources.length) {
    index = 0;
  }
  document.getElementById("imageAboutMe").src = imageSources[index];
  index++;
} , 2000);

//---------------------------Collapsible-----------------------------------  
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}


//----------------------------------עגלה------------------------------------
var total=0;

function calculateTotalProduct() {
  var sum=0;
  var i=1; 
  
  for (i=1; i<50; i++) {
    var x = document.getElementById('price'+i).textContent;
    var y = document.getElementById('quantity'+i).value;
    var z = x*y;
    sum=sum+z;
    total=sum;

    document.getElementById('total'+i).innerHTML= z + "₪";
    document.getElementById("totalAmount").innerHTML= "₪ " + sum + "  :סך הכול הזמנה";
    localStorage.setItem('totalPrice',sum);
  }
}

function deleteItem(id,quantity) {
  document.getElementById(id).classList.add('dispNone');
  document.getElementById(quantity).value='0';
  calculateTotalProduct();
}

function checkPrice(id,btn) {
  price= localStorage.getItem('totalPrice');
  if (price==0) {
    document.getElementById(btn).disabled=true;
  }
  else {
    document.getElementById(btn).disabled=false;
    document.getElementById(id).href='payingPage.html';
  }
}

//----------------------------------תשלום------------------------------------


function showTotalAmount() {
  totalPrice=localStorage.getItem('totalPrice');
  document.getElementById("showingAmount").innerHTML= "₪ " + totalPrice + "  :לתשלום";
  showDateTime();
}

function showDateTime(){
  var dateTime= new Date();
  var months=[1,2,3,4,5,6,7,8,9,10,11,12];
  var m=months[dateTime.getMonth()];
  var currentDate= dateTime.getDate()+"/"+m+"/"+dateTime.getFullYear();
  var currentTime= dateTime.getHours()+":"+dateTime.getMinutes()+":"+dateTime.getSeconds();
  document.getElementById("dateTime").innerHTML=currentDate+"   "+currentTime;
  setInterval(showDateTime, 1000);
}

function checkName(id){
  var b1=document.getElementById(id).value;
  if (b1.length<=1){
    alert("שם חייב להיות 2 תווים ומעלה");
    document.getElementById(id).value="";
  }
}

function checkIDBuyer (id){
  var b1=document.getElementById(id).value;
  var b2=onlyNumbers(b1);
  if (b2.length!=9) {
    alert("תעודת זהות מכילה 9 ספרות בדיוק");
    document.getElementById(id).value="";
  }
  else{
    document.getElementById(id).value=b2;
  }
}

function checkCreditNum(id){
  var b1=document.getElementById(id).value;
  var b2=onlyNumbers(b1);
  if (b2.length<9 || b2.length>16){
    alert("מספר הספרות כרטיס האשראי נע בין 9-16 ספרות");
    document.getElementById(id).value="";
  }
  else{
    document.getElementById(id).value=b2;
  }
}

function checkCVV (id){
  var b1=document.getElementById(id).value;
  var b2=onlyNumbers(b1);
  if (b2.length!=3){
    alert("חייב להיות 3 ספרות");
    document.getElementById(id).value="";
  }
  else{
    document.getElementById(id).value=b2;
  }
}

function checkEmail (id){
  var b1=document.getElementById(id).value;
  if (b1.length<5 || !(b1.includes('@') && b1.includes('.') && b1.indexOf('@')<b1.indexOf('.'))){
    alert("כתובת דואר אלקטרוני לא תקין. חייב להכיל כרוכית ונקודה ולהכיל 5 תוים לפחות");
    document.getElementById(id).value="";
  }
}

function checkPhone (id){
  var b1=document.getElementById(id).value;
  var b2=onlyNumbers(b1);
  if (b2.length!=10 && b2.length!=9){
    alert("מספר הטלפון הוא 9 ספרות עבור קו ביתי או 10 ספרות עבור קו נייד");
    document.getElementById(id).value="";
  }
  else{
    document.getElementById(id).value=b2;
  }
}

function onlyNumbers(num){
  var ans="";
  var i;
  for (i = 0; i < num.length; i++) {
    var digit = num[i];
    if (digit=='0' || digit=='1' || digit=='2' || digit=='3' || digit=='4' || digit=='5' || digit=='6' || digit=='7' || digit=='8' || digit=='9'){
      ans += num[i];
    }
  }
  return ans;
}

function submitPayment() {
  if (checkallInput()){
    alert("התשלום בוצע בהצלחה. אישור תשלום נשלח למייל");
    window.location="mainPage.html";
    for (i=1; i<50; i++) {
    deleteItem('price'+i,'quantity'+i);
    }
  }
  else{
    alert("לא ניתן לבצע תשלום מאחר ולא כל השדות מולאו וסומנו");
  }
}

///////////////////////////////////////////////////////
function checkallInput(){
  if(document.getElementById('visa').checked || document.getElementById('mastercard').checked){
    if (document.getElementById('creditInput').value.length==0 || document.getElementById('creditCardCVVInput').value.length==0){
      return false;
    }
  }
  else if (!document.getElementById('cash').checked){
    return false;
  }
  if (document.getElementById('privateName').value.length==0 ||
      document.getElementById('surename').value.length==0 ||
      document.getElementById('buyerID').value.length==0 ||
      document.getElementById('userEmail').value.length==0 ||
      document.getElementById('Phone').value.length==0){
        return false;
      }
  if(!document.getElementById('termsButton').checked){
    return false;
  }
  return true;
}



function overCartBigger(id){
  document.getElementById(id).style.fontSize="3.5vh"
}

function outCartSmaller(id){
  document.getElementById(id).style.fontSize="2.5vh";
}

/*function obligatory() {
  document.getElementById('payingForm'), { 
    fields: {
      email: {
        selector: '.obligatoryFields'
      }
  }
}

function dateOfToday() {
  console.log("aaaaaaa");
  document.getElementById("currentDate").innerHTML="Thank you! I will get back to you as soon as possible";
}*/

function chooseCash(ClassAdd, classRemove){
  document.getElementById("creditCardInputs").classList.remove(classRemove);
  document.getElementById("creditCardInputs").classList.add(ClassAdd);
}
//-------------------------------contactPage----------------------
function submitContact() {
  if (checkallInputContact()){
    alert("הודעתך נשלחה");
    window.location="mainPage.html";
  
  }
  else{
    alert("לפחות אחד מהשדות לא מולא כראוי. אנא נסה שנית");
  }
}

///////////////////////////////////////////////////////
function checkallInputContact(){

  if (document.getElementById('privateName').value.length==0 ||
      document.getElementById('surename').value.length==0 ||
      document.getElementById('freeComment').value.length==0 ||
      document.getElementById('userEmail').value.length==0){
        return false;
      }
 
  return true;
}

function checkComment(id){
  var b1=document.getElementById(id).value;
  if (b1.length<=1){
    alert("חייב לכלול מלל");
    document.getElementById(id).value="";
  }
}

//----------------------------------דרכי הגעה------------------------------------

function initMap() {
  // The location of Uluru
  const uluru = { lat: -25.344, lng: 131.036 };
  // The map, centered at Uluru
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 4,
    center: uluru,
  });
  // The marker, positioned at Uluru
  const marker = new google.maps.Marker({
    position: uluru,
    map: map,
  });
}

//----------------------------------חיפוש------------------------------------

function searchCoockie(){
  var search=document.getElementById('searchID').value;
  var c1=document.getElementById('cookie1P').textContent;
  var c2=document.getElementById('cookie2P').textContent;
  var c3=document.getElementById('cookie3P').textContent;
  var c4=document.getElementById('cookie4P').textContent;
  var c5=document.getElementById('cookie5P').textContent;
  var c6=document.getElementById('cookie6P').textContent;

  if(search.length<1){
    document.getElementById('cookie1').classList.remove('dispNone');
    document.getElementById('cookie1').classList.add('dispBlock');
    document.getElementById('cookie2').classList.remove('dispNone');
    document.getElementById('cookie2').classList.add('dispBlock');
    document.getElementById('cookie3').classList.remove('dispNone');
    document.getElementById('cookie3').classList.add('dispBlock');
    document.getElementById('cookie4').classList.remove('dispNone');
    document.getElementById('cookie4').classList.add('dispBlock');
    document.getElementById('cookie5').classList.remove('dispNone');
    document.getElementById('cookie5').classList.add('dispBlock');
    document.getElementById('cookie6').classList.remove('dispNone');
    document.getElementById('cookie6').classList.add('dispBlock');
  }

  if(!c1.includes(search)){
    document.getElementById('cookie1').classList.remove('dispBlock');
    document.getElementById('cookie1').classList.add('dispNone');
  }
  else {
    document.getElementById('cookie1').classList.remove('dispNone');
    document.getElementById('cookie1').classList.add('dispBlock');
  }
  if(!c2.includes(search)){
    document.getElementById('cookie2').classList.remove('dispBlock');
    document.getElementById('cookie2').classList.add('dispNone');
  }
  else {
    document.getElementById('cookie2').classList.remove('dispNone');
    document.getElementById('cookie2').classList.add('dispBlock');
  }
  if(!c3.includes(search)){
    document.getElementById('cookie3').classList.remove('dispBlock');
    document.getElementById('cookie3').classList.add('dispNone');
  }
  else {
    document.getElementById('cookie3').classList.remove('dispNone');
    document.getElementById('cookie3').classList.add('dispBlock');
  }
  if(!c4.includes(search)){
    document.getElementById('cookie4').classList.remove('dispBlock');
    document.getElementById('cookie4').classList.add('dispNone');
  }
  else {
    document.getElementById('cookie4').classList.remove('dispNone');
    document.getElementById('cookie4').classList.add('dispBlock');
  }
  if(!c5.includes(search)){
    document.getElementById('cookie5').classList.remove('dispBlock');
    document.getElementById('cookie5').classList.add('dispNone');
  }
  else {
    document.getElementById('cookie5').classList.remove('dispNone');
    document.getElementById('cookie5').classList.add('dispBlock');
  }
  if(!c6.includes(search)){
    document.getElementById('cookie6').classList.remove('dispBlock');
    document.getElementById('cookie6').classList.add('dispNone');
  }
  else {
    document.getElementById('cookie6').classList.remove('dispNone');
    document.getElementById('cookie6').classList.add('dispBlock');
  }
}




//----------------------------------Cookie Shop------------------------------------
/* heart (wishlist) gets bigger when onmouse */
function heartOver (id){
  document.getElementById(id).style.cursor = "pointer";
  document.getElementById(id).style="font-size: 4vh";
}
function heartOut (id){
    document.getElementById(id).style.cursor='pointer';
    document.getElementById(id).style="font-size: 3vh";
}
function heartClick (id){
    document.getElementById(id).style.cursor='pointer';
    if (document.getElementById(id).innerHTML=="❤️"){
        document.getElementById(id).innerHTML='💔';
    }
    else{
        document.getElementById(id).innerHTML='❤️';
    }
}

//-----------------------------rainbow------------------------------------
/* header is rainbow color when user onmouse */
function headerOver (id){
    document.getElementById(id).classList.add('rainbow');
    document.getElementById(id).style="cursor: default";
}
function headerOut (id){
    document.getElementById(id).classList.remove('rainbow');
}

/* cookie background color changes when onmouse */
function cookieOver (id){
    document.getElementById(id).style="background-color: rgba(200, 69, 135, 0.1)";
}
function cookieOut (id){
    document.getElementById(id).style="background-color: rgba(200, 69, 135, 0.3)";
}




//----------------------------------Product Page------------------------------------
function cartClick (id){
  document.getElementById(id).style.cursor='pointer';
  if (document.getElementById(id).getAttribute('src',2)=="cart.png"){
    document.getElementById(id).src="cart2.png";
  }
  else{
    document.getElementById(id).src="cart.png";
  }
}
//-------------------------------EventPage------------------------
function submitEvent() {
  if (checkallInputEvent()){
    alert("הודעתך התקבלה");
    window.location="mainPage.html";
    
  }
  else{
    alert("אחד השדות לא מולא כראוי. אנא בדוק ונסה שנית");  }
}

///////////////////////////////////////////////////////
function checkallInputEvent(){
  var Op = document.getElementById("IDEvent");
    if (Op.options[Op.selectedIndex].value == '0') {
          return false;
    }
  if(!document.getElementById('Male').checked && !document.getElementById('Female').checked){
    return false;
  }

  if (document.getElementById('privateName').value.length==0 ||
      document.getElementById('userEmail').value.length==0 ||
      document.getElementById('Phone').value.length==0){
        return false;
      }

  return true;
}

