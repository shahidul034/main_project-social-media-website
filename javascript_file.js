
		function confirmation()
		{
			var ans=confirm("Are sure to sign in");
		

		if(ans){
			//window.location="http://www.google.com/";
		}
		else {
			alert("Thanks for staying with us!");
		}
	}
	window.onload = setInterval(clock,1000);

    function clock()
    {
	  var d = new Date();
	  
	  var date = d.getDate();
	  
	  var month = d.getMonth();
	  var montharr =["Jan","Feb","Mar","April","May","June","July","Aug","Sep","Oct","Nov","Dec"];
	  month=montharr[month];
	  
	  var year = d.getFullYear();
	  
	  var day = d.getDay();
	  var dayarr =["Sun","Mon","Tues","Wed","Thurs","Fri","Sat"];
	  day=dayarr[day];
	  
	  var hour =d.getHours();
      var min = d.getMinutes();
	  var sec = d.getSeconds();
	
	  document.getElementById("date").innerHTML=day+" "+date+" "+month+" "+year;
	  document.getElementById("time").innerHTML=hour+":"+min+":"+sec;
    }
	function confirmation(elem1,elem2)
		{
			if(elem1.value.length==0){
				alert("User name is empty");
				elem1.focus();
				return false;
			}
			if(elem2.value.length==0){
			alert("password field is empty");
			elem2.focus();
			return false;
			}
			else{
			return true;
			}
		
		}
function confirmation2(elem1,elem2,elem3,elem4)
		{
			if(elem1.value.length==0){
				alert("First name is empty()");
				elem1.focus();
				return false;
			}
			if(elem2.value.length==0){
				alert("Surname name is empty()");
				elem2.focus();
				return false;
			}
			if(elem3.value.length==0){
				alert("Phone Number or Email Address is empty()");
				elem3.focus();
				return false;
			}
			if(elem4.value.length==0){
			alert("password field is empty");
			elem4.focus();
			return false;
			}
			else{
			return true;
			}
		
}
//onkeyup="check_username(this.value)"

function check_username(str) {
    if (str.length == 0) {

        document.getElementById("show").innerHTML = "";


    }
    else {
        var httpr = new XMLHttpRequest();
        httpr.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("show").innerHTML = this.responseText;

            }
        };
        httpr.open("GET", "SignUp.aspx?key=" + str, true);
        httpr.send();
    }

}

		
		
		
		
		
		
