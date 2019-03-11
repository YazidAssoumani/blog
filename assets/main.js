function addUser() {

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            
            var users = document.getElementById("show-users");
            var userDescription = document.createElement('div');
            var userAccount = JSON.parse(xhr.responseText);

            userDescription.innerHTML = "<span>---"+userAccount.id+"---</span>";
            userDescription.innerHTML += "<span> "+userAccount.lastName+"</span>";
            userDescription.innerHTML +="<span> "+userAccount.firstName+" </span>";
            userDescription.innerHTML +="<span>--- "+userAccount.email+" ---</span>";
            userDescription.innerHTML +="<input type='button' value='Voir' onClick='showUser("+userAccount.id+")'>";
            userDescription.innerHTML +="<input type='button' value='Modifier' onClick='showUser("+userAccount.id+")'>";
            userDescription.innerHTML +="<input type='button' value='Supprimer' onClick='deleteUser("+userAccount.id+")'>";

            userDescription.setAttribute("id", "user_"+userAccount.id);            
            users.insertBefore(userDescription, users.firstChild);

            document.getElementById('firstName').value = '';
            document.getElementById('lastName').value = '';
            document.getElementById('email').value = '';
        }
    };
    var url = 'controllers/add_user.php';
    xhr.open("POST", url);

    var data = new FormData();
    data.append('firstName', document.getElementById('firstName').value);
    data.append('lastName', document.getElementById('lastName').value);
    data.append('email', document.getElementById('email').value);
    xhr.send(data);
}

function showUser(user_id){

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {

            var userAccount = JSON.parse(xhr.responseText);

            document.getElementById("firstName").value = userAccount.firstName; 
            document.getElementById("lastName").value = userAccount.lastName; 
            document.getElementById("email").value = userAccount.email; 

            document.getElementById("user_id").value = userAccount.id;

            document.getElementById("btn_update").className = "visible";
            document.getElementById("btn_create").className = "hidden";   
            
        }
    };
    var url = 'controllers/show_user.php';
    xhr.open('POST',url);

    var data = new FormData();
    data.append('id', user_id);
    xhr.send(data); 
}

function updateUser(){

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            
            var users = document.getElementById("show-users");
            var userAccount = document.getElementById("user_"+document.getElementById("user_id").value);

            users.removeChild(userAccount);

            var userDescription = document.createElement("div");
            var userAccount = JSON.parse(xhr.responseText);

            userDescription.innerHTML = "<span>---"+userAccount.id+"---</span>";
            userDescription.innerHTML += "<span> "+userAccount.lastName+"</span>";
            userDescription.innerHTML +="<span> "+userAccount.firstName+" </span>";
            userDescription.innerHTML +="<span>--- "+userAccount.email+" ---</span>";
            userDescription.innerHTML +="<input type='button' value='Voir' onClick='showUser("+userAccount.id+")'>";
            userDescription.innerHTML +="<input type='button' value='Modifier' onClick='showUser("+userAccount.id+")'>";
            userDescription.innerHTML +="<input type='button' value='Supprimer' onClick='deleteUser("+userAccount.id+")'>";

            userDescription.setAttribute("id", "user_"+userAccount.id);            
            users.insertBefore(userDescription, users.firstChild);

            document.getElementById('firstName').value = '';
            document.getElementById('lastName').value = '';
            document.getElementById('email').value = '';
        }
    };
    var url = 'controllers/update_user.php';
    xhr.open("POST", url);

    var data = new FormData();
    data.append('firstName', document.getElementById('firstName').value);
    data.append('lastName', document.getElementById('lastName').value);
    data.append('email', document.getElementById('email').value);
    data.append('id', document.getElementById("user_id").value);
    xhr.send(data);
}

function deleteUser(user_id){

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {

            var users = document.getElementById("show-users");
            var userAccount = document.getElementById("user_"+user_id);

            users.removeChild(userAccount);
        }
    };
    var url = 'controllers/delete_user.php';
    xhr.open('POST',url);

    var data = new FormData();
    data.append('id', user_id);
    xhr.send(data); 
}