<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>星之卡比-遊戲小百科</title>
        <link rel="icon" href="imgs/89063650271f27e.png">
        <link rel=stylesheet type="text/css" href="style/css_main.css">
        <link href="https://fonts.googleapis.com/css2?family=Zen+Maru+Gothic:wght@700&display=swap" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script type='text/javascript'>
            $(document).ready(function() {
                $(".account").click(function() {
                    $(".dropdown_item").slideToggle();
                });
            });
            $(document).ready(function() {
                var count=0;
                $(".button").click(function() {
                    count=(count==0)?count=1:count=0;
                    $(".introduct").slideToggle();
                    if(count==1) {
                        document.querySelector(".introduct").scrollIntoView();
                    }
                });
            });
        </script>
    </head>

    <body marginheight="0px" marginwidth="0px">
        <div class="background">
            <header class="header">
                <a href="main.php"><img class="home_logo" src="imgs/FsxgFWaaUAE8Z5t.png" alt="Home"></a>
                <nav>
                    <ul class="menu" style="margin-left:400px;">
                        <li><a href="character.php">角色</a></li>
                        <li><a href="game_series.php">系列遊戲</a></li>
                        <li><a href="copy_ability.php">複製能力</a></li>
                    </ul>
                </nav>
            </header>
            
            <br><br>
            <div class="cover">
                <image class="cover_img" src="imgs/kirby.png"></image>
                <div>
                    <h1>歡迎來到星之卡比  遊戲小百科</h1>
                    <button class="button">卡比是誰?</button>
                </div>
            </div>
            <br><br><br><br>
            <div class="introduct" style="display:none;">
                <div class="intro_txt">
                    <h2>誰是卡比?</h2><h3>Who is Kirby?</h3>
                    遊戲「星之卡比」系列的主人翁，是到噗噗噗王國旅行的旅行者，喜歡吃東西跟睡午覺。
                    <br>
                    非常有正義，看到有人需要幫忙時總是挺身而出、打倒敵人。
                    <br>
                    可以透過吸入敵人來「變身」，獲得敵人的能力。
                </div>
                <image calss="intro_img" src="imgs/2-beam-1.png"></image>  
            </div>
            <div class="ability_quiz">
                <h4>來看看你是屬於哪種複製能力吧!</h4>
                <a href="https://www.kirby.jp/special/personalityquiz/">
                    <image class="quiz_img" src="imgs/top-bnr-pq.jpg"></image>
                </a>
            </div>
            <div class="tail">
                <div class="twitter">
                    <image class="twitter_img" src="imgs/twitter.png"></image>
                    <a class="twitter_url" href="https://twitter.com/Kirby_JP">星のカービィ 公式Twitter</a>
                </div>
                <div class="official_web">
                    <image class="official_web_img" src="imgs/charaBtn-kirby.png"></image>
                    <a class="official_web_url" href="https://www.kirby.jp">星のカービィ ポータル</a>
                </div>
            </div>
        </div>
    </body>

</html>