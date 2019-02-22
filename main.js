function showComments() {
    var xhr = new XMLHttpRequest();
    var url = 'add_comment.php';
    var data = 'comment=' + document.getElementById('comment').value;

    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var resultat = this.responseText;
            alert(resultat);

            // if (resultat == 'OK') {
                var posts = document.getElementById("show-posts");
                var commentaire = document.createElement('article');
                var texte = document.createElement('p');
                var dateTime = document.createElement('small');
                var todayTime = new Date();
                
                commentaire.appendChild(texte);
                commentaire.appendChild(dateTime);

                texte.innerHTML = document.getElementById('comment').value;
                dateTime.innerHTML = todayTime.toUTCString();

                posts.insertBefore(commentaire, posts.firstChild);
                posts.firstChild.setAttribute("class","newComments");

                document.getElementById('comment').value = '';
            // }
        }
    };

    xhr.open("POST", url);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send(data);
}

function countLikes() {
    var like = document.getElementById("likesNumber");
    var idLike = document.getElementById("likesNumber").id;

    var cnt = like.innerText;
    cnt = parseInt(cnt) + parseInt(1);
    
    var divData = like;
    divData.innerHTML = cnt;

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var resultat = this.responseText;
            // alert(resultat);
        }
    };

    var url = 'add_opinion.php?' + idLike + '=' + cnt;

    xhr.open("GET", url);
    xhr.send();
}

function countDislikes() {
    var dislike = document.getElementById("dislikesNumber");
    var idDislike = document.getElementById("dislikesNumber").id;

    var cnt = dislike.innerText;
    cnt = parseInt(cnt) + parseInt(1);
    
    var divData = dislike;
    divData.innerHTML = cnt;

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var resultat = this.responseText;
            // alert(resultat);
        }
    };

    var url = 'add_opinion.php?' + idDislike + '=' + cnt;

    xhr.open("GET", url);
    xhr.send();
}