<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>複製能力|星之卡比-遊戲小百科</title>
        <link rel="icon" href="imgs/89063650271f27e.png">
        <link rel=stylesheet type="text/css" href="style/css_copy_ability.css">
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
                $ql="SELECT * FROM copy_ability";
                $enc=mysqli_query($conn,"SET NAMES 'utf8'");
                $res=mysqli_query($conn,$ql);
                $n=mysqli_num_rows($res);
                $default_pg=5;
                if(isset($_GET["p"])) {
                    $pg=$_GET["p"];
                }
                else
                    $pg=1;
                $total_page=ceil($n/$default_pg);
                $posi=($pg-1)*$default_pg;
                mysqli_data_seek($res,$posi);
                $idx=0;
                echo "<table>";
                while($meta=mysqli_fetch_assoc($res)) {
                    echo "<tr class="."'info_table'".">";
                    echo "<td><image src=".$meta["image"]."></image></td>";
                    echo "<td><div>".$meta["name"]."<br>日文名&nbsp;&nbsp;&nbsp;&nbsp;".$meta["jp_name"].
                        "&nbsp;&nbsp;&nbsp;&nbsp;<br>英文名&nbsp;&nbsp;&nbsp;&nbsp;".$meta["en_name"]."<br></div></td>";
                    echo "<td>".$meta["intro_video"]."</td>";
                    echo "</tr>";
                    $idx+=1;
                    if($idx==5) {
                        $idx=0;
                        break;
                    }
                }
                echo "</table>";
                echo "<br><br><div class="."'page'".">";
                if($pg>1) {
                    echo "<a href='copy_ability.php?p=".($pg-1)."'>上一頁&nbsp;&nbsp;&nbsp;</a>";
                }
                for($i=1;$i<=$total_page;$i++) {
                    if($i!=$pg) {
                        echo "<a href='copy_ability.php?p=".$i."'>".$i." "."</a>";
                    }
                    else
                        echo $i." ";
                }
                if($pg<$total_page) {
                    echo "<a href='copy_ability.php?p=".($pg+1)."'>&nbsp;&nbsp;&nbsp;下一頁</a>";
                }
                echo "</div><br><br>";
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