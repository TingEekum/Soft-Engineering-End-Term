<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>系列遊戲|星之卡比-遊戲小百科</title>
        <link rel="icon" href="imgs/89063650271f27e.png">
        <link rel=stylesheet type="text/css" href="style/css_game_series.css">
        <link href="https://fonts.googleapis.com/css2?family=Zen+Maru+Gothic:wght@700&display=swap" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    </head>
    
    <body marginheight="0px" marginwidth="0px">
        <div class="background">
            <header class="header">
                <a href="main.php"><img class="home_logo" src="imgs/FsxgFWaaUAE8Z5t.png" alt="Home"></a>
                <nav>
                    <ul class="menu"  style="margin-left:400px;">
                        <li><a href="character.php">角色</a></li>
                        <li><a href="game_series.php">系列遊戲</a></li>
                        <li><a href="copy_ability.php">複製能力</a></li>
                    </ul>
                </nav>
            </header>
            
            <?php
                $conn=mysqli_connect("localhost","","","kirby") or die("Fail to connect<br>");
                $ql="SELECT * FROM game";
                $enc=mysqli_query($conn,"SET NAMES 'utf8'");
                $res=mysqli_query($conn,$ql);
                echo "<table>";
                while($meta=mysqli_fetch_assoc($res)) {
                    echo "<tr class="."'info_table'".">";
                    echo "<td><image src=".$meta["image"]."></image></td>";
                    echo "<td><div>".$meta["name"]."<br>日文名&nbsp;&nbsp;&nbsp;&nbsp;".$meta["jp_name"].
                        "<br>英文名&nbsp;&nbsp;&nbsp;&nbsp;".$meta["en_name"]."<br>發售年分&nbsp;&nbsp;&nbsp;&nbsp;"
                        .$meta["year_of_release"]."<br>發售平台&nbsp;&nbsp;&nbsp;&nbsp;".$meta["console"];
                    echo "<br></tr>";
                }
                echo "</table>";
            ?>
            
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