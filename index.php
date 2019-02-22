<?php include_once('article.php'); ?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Blog</title>
</head>
<body>
    <h1>Article</h1>
    <section id="article">
        <article>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dictum nisi quis justo fringilla, sed aliquam eros condimentum. Praesent pharetra vehicula ornare. Vivamus in tellus vel quam tristique convallis quis vel urna. Suspendisse libero elit, finibus ut neque id, auctor consectetur turpis. Suspendisse ut lacus commodo, sollicitudin nisi scelerisque, congue erat. Curabitur venenatis interdum eros vitae accumsan.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dictum nisi quis justo fringilla, sed aliquam eros condimentum. Praesent pharetra vehicula ornare. Vivamus in tellus vel quam tristique convallis quis vel urna. Suspendisse libero elit, finibus ut neque id, auctor consectetur turpis. Suspendisse ut lacus commodo, sollicitudin nisi scelerisque, congue erat. Curabitur venenatis interdum eros vitae accumsan.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dictum nisi quis justo fringilla, sed aliquam eros condimentum. Praesent pharetra vehicula ornare. Vivamus in tellus vel quam tristique convallis quis vel urna. Suspendisse libero elit, finibus ut neque id, auctor consectetur turpis. Suspendisse ut lacus commodo, sollicitudin nisi scelerisque, congue erat. Curabitur venenatis interdum eros vitae accumsan.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dictum nisi quis justo fringilla, sed aliquam eros condimentum. Praesent pharetra vehicula ornare. Vivamus in tellus vel quam tristique convallis quis vel urna. Suspendisse libero elit, finibus ut neque id, auctor consectetur turpis. Suspendisse ut lacus commodo, sollicitudin nisi scelerisque, congue erat. Curabitur venenatis interdum eros vitae accumsan.</p>
        </article>
        <div id="opinion">
            <div id="like">
                <button onclick="countLikes()"><i class="fas fa-thumbs-up"></i></button>
                <?php foreach ($likes as $key => $likesNumber): ?>
                    <span class="countOpinions" id="likesNumber"><?php echo $likesNumber['numbers']?></span>
                <?php endforeach; ?>
            </div>
            <div id="dislike">
                <button onclick="countDislikes()"><i class="fas fa-thumbs-down"></i></button>
                <?php foreach ($dislikes as $key => $dislikesNumber): ?>
                    <span class="countOpinions" id="dislikesNumber"><?php echo $dislikesNumber['numbers']?></span>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <section id="add-post">
        <textarea name="comment" id="comment" placeholder="Votre commentaire ..."></textarea>
        <button onclick="showComments()">OK</button>
    </section>

    <section id="show-posts">
        <?php foreach ($posts as $key => $post): ?>
            <article class="comments">
                <p><?php echo $post['content']?></p> 
                <small><?php echo $post['date_create']?></small>
            </article>
        <?php endforeach; ?>
    </section>
    
    <script src="main.js"></script>
</body>
</html>