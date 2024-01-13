-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-13 16:52:09
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `kirby`
--

-- --------------------------------------------------------

--
-- 資料表結構 `chara`
--

CREATE TABLE `chara` (
  `name` varchar(10) NOT NULL,
  `en_name` varchar(20) NOT NULL,
  `jp_name` varchar(10) NOT NULL,
  `chara_id` int(3) NOT NULL,
  `first_appear` int(3) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `chara`
--

INSERT INTO `chara` (`name`, `en_name`, `jp_name`, `chara_id`, `first_appear`, `intro`, `image`) VALUES
('卡比', 'Kirby', 'カービィ', 301, 105, '', '\'imgs/chara-kirby.png\''),
('瓦豆魯迪', 'Waddle Dee', 'ワドルディ', 302, 101, '', '\'imgs/chara-waddledee.png\''),
('帝帝帝大王', 'King Dedede', 'デデデ大王', 303, 101, '', '\'imgs/chara-dedede.png\''),
('魅塔騎士', 'Meta Knight', 'メタナイト', 304, 102, '', '\'imgs/chara-metaknight.png\''),
('陸庫', 'Rick', 'リック', 305, 103, '', '\'imgs/id305.webp\''),
('海恩', 'Kine', 'カイン', 306, 103, '', '\'imgs/id306.webp\''),
('空', 'Coo', 'クー', 307, 103, '', '\'imgs/id307.webp\''),
('蠱依', 'Gooey', 'グーイ', 308, 103, '', '\'imgs/id308.webp\''),
('阿朵萊尼', 'Adeleine', 'アドレーヌ', 309, 106, '', '\'imgs/id309.webp\''),
('莉寶 ', 'Ribbon', 'リボン', 310, 106, '', '\'imgs/id310.webp\''),
('魔法洛亞', 'Magolor', 'マホロア', 311, 111, '', '\'imgs/id311.webp\''),
('塔狼蛛', 'Taranza', 'タランザ', 312, 112, '', '\'imgs/id312.webp\''),
('秘書蘇姿', 'Susie', '秘書スージー', 313, 113, '', '\'imgs/id313.webp\''),
('艾菲靈', 'Elfilin', 'エフィリン', 314, 115, '', '\'imgs/id314.webp\''),
('夢魘', 'Nightmare', 'ナイトメア', 315, 102, '', '\'imgs/id315.webp\''),
('暗物質', 'Dark Matter', 'ダークマター', 316, 103, '', '\'imgs/id316.webp\''),
('魔嚕酷', 'Marx', 'マルク', 317, 104, '', '\'imgs/id317.webp\''),
('零', 'Zero', 'ゼロ', 318, 105, '', '\'imgs/id318.webp\''),
('零2', '0²', 'ゼロツー', 319, 106, '', '\'imgs/id319.webp\''),
('暗意向', 'Dark Mind', 'ダークマインド', 320, 108, '', '\'imgs/id320.webp\''),
('暗零', 'Dark Nebula', 'ダークゼロ', 321, 109, '', '\'imgs/id321.webp\''),
('女王塞昆托霓雅', 'Queen Sectonia', 'クィン・セクトニア', 322, 112, '', '\'imgs/id322.webp\''),
('星之夢', 'Star Dream', '星の夢', 323, 113, '', '\'imgs/id323.webp\''),
('終焉·虛無', 'Void Termina', 'エンデ・ニル', 324, 114, '', '\'imgs/id324.webp\''),
('菲克特·艾菲里斯', 'Fecto Elfilis', 'フェクト・エフィリス', 325, 115, '', '\'imgs/id325.webp\'');

-- --------------------------------------------------------

--
-- 資料表結構 `copy_ability`
--

CREATE TABLE `copy_ability` (
  `name` varchar(5) NOT NULL,
  `en_name` varchar(15) NOT NULL,
  `jp_name` varchar(10) NOT NULL,
  `ability_id` int(3) NOT NULL,
  `first_appear` int(3) NOT NULL,
  `image` varchar(100) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `intro_video` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `copy_ability`
--

INSERT INTO `copy_ability` (`name`, `en_name`, `jp_name`, `ability_id`, `first_appear`, `image`, `intro`, `intro_video`) VALUES
('普通', 'normal', 'ノーマル', 201, 101, '\'imgs/id201.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/6Cg8ZnA4aFg\" title=\"星のカービィ コピー能力「ノーマル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('光束', 'beam', 'ビーム', 202, 102, '\'imgs/id202.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/JU6Gt5pb_wo\" title=\"星のカービィ コピー能力「ビーム」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('彎刀', 'cutter', 'カッター', 203, 102, '\'imgs/id203.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/3UWESgkluuc\" title=\"星のカービィ コピー能力「カッター」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('烈火', 'fire', 'ファイア', 204, 102, '\'imgs/id204.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/EdgTb5CrS7E\" title=\"星のカービィ コピー能力「ファイア」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('利劍', 'sword', 'ソード', 205, 102, '\'imgs/id205.png\'', '456', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/3OgHgTS5XDA\" title=\"星のカービィ コピー能力「ソード」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('背摔', 'backdrop', 'バックドロップ', 206, 102, '\'imgs/id206.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/niz-5NP5ao0\" title=\"星のカービィ コピー能力「バックドロップ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('冰凍', 'ice', 'アイス', 207, 102, '\'imgs/id207.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/uLHmqCyVAk4\" title=\"星のカービィ コピー能力「アイス」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('跳高', 'hi-jump', 'ハイジャンプ', 208, 102, '\'imgs/id208.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/6gDFN5k2yXU\" title=\"星のカービィ コピー能力「ハイジャンプ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('車輪', 'wheel', 'ホイール', 209, 102, '\'imgs/id209.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/WnLnjoL9rds\" title=\"星のカービィ コピー能力「ホイール」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('錘子', 'hammer', 'ハンマー', 210, 102, '\'imgs/id210.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/rWD57rZLXlw\" title=\"星のカービィ コピー能力「ハンマー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('雷射', 'laser', 'レーザー', 211, 102, '\'imgs/id211.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/Xhxw1YoyDhE\" title=\"星のカービィ コピー能力「レーザー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('冰凍', 'freeze', 'フリーズ', 212, 102, '\'imgs/id212.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/wfTgZ8O0UE0\" title=\"星のカービィ コピー能力「フリーズ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('烈焰', 'burning', 'バーニング', 213, 102, '\'imgs/id213.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/SaTQHjPNfX0\" title=\"星のカービィ コピー能力「バーニング」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('閃電', 'spark', 'スパーク', 214, 102, '\'imgs/id214.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/Nx8JnVFkhMg\" title=\"星のカービィ コピー能力「スパーク」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('石頭', 'stone', 'ストーン', 215, 102, '\'imgs/id215.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/TcdYlFRca7Q\" title=\"星のカービィ コピー能力「ストーン」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('投擲', 'throw', 'スロウ', 216, 102, '\'imgs/id216.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/wOviUuQwbbs\" title=\"星のカービィ コピー能力「スロウ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('UFO', 'UFO', 'U.F.O', 217, 102, '\'imgs/id217.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/Ju7WEfKtOFc\" title=\"星のカービィ コピー能力「U.F.O.」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('龍捲風', 'tornado', 'トルネイド', 218, 102, '\'imgs/id218.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/ozHmYRrI9rM\" title=\"星のカービィ コピー能力「トルネイド」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('陽傘', 'parasol', 'パラソル', 219, 102, '\'imgs/id219.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/j-2RSLqQRgw\" title=\"星のカービィ コピー能力「パラソル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('針', 'needle', 'ニードル', 220, 102, '\'imgs/id220.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/LJHZij1LwMs\" title=\"星のカービィ コピー能力「ニードル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('球', 'ball', 'ボール', 221, 102, '\'imgs/id221.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/I1IopsY5Zl0\" title=\"星のカービィ コピー能力「ボール」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('鏡子', 'mirror', 'ミラー', 222, 104, '\'imgs/id222.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/XFY_i4IHB84\" title=\"星のカービィ コピー能力「ミラー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('忍者', 'ninja', 'ニンジャ', 223, 104, '\'imgs/id223.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/DJrqDFi86rQ\" title=\"星のカービィ コピー能力「ニンジャ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('摔角手', 'suplex', 'スープレックス', 224, 104, '\'imgs/id224.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/vmcoe3cHlcE\" title=\"星のカービィ コピー能力「スープレックス」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('溜溜球', 'yo-yo', 'ヨーヨー', 225, 104, '\'imgs/id225.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/sH5ziSSZcCY\" title=\"星のカービィ コピー能力「ヨーヨー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('風羽', 'wing', 'ウィング', 226, 104, '\'imgs/id226.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/TUHprXdmiI4\" title=\"星のカービィ コピー能力「ウィング」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('電離子', 'plasma', 'プラズマ', 227, 104, '\'imgs/id227.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/iYpzlWAC1zk\" title=\"星のカービィ コピー能力「プラズマ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('複製', 'copy', 'コピー', 228, 104, '\'imgs/id228.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/jZyzp3LpRPQ\" title=\"星のカービィ コピー能力「コピー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('格鬥家', 'fighter', 'ファイター', 229, 104, '\'imgs/id229.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/xPCSOmf9g-A\" title=\"星のカービィ コピー能力「ファイター」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('炸彈', 'bomb', 'ボム', 230, 104, '\'imgs/id230.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/Rzqp6VNGyLc\" title=\"星のカービィ コピー能力「ボム」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('噴射機', 'jet', 'ジェット', 231, 104, '\'imgs/id231.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/AH2F4C8vuuQ\" title=\"星のカービィ コピー能力「ジェット」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('特技輪騎士', 'wheelie rider', 'ウィリーライダー', 232, 104, '\'imgs/id232.webp\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/I8bjIsxE6vM\" title=\"星のカービィ スーパーデラックス メタナイトの逆襲 後部甲板【プレイ動画】\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('清潔', 'clean', 'クリーン', 233, 105, '\'imgs/id233.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/-xPZByeT5eU\" title=\"星のカービィ コピー能力「クリーン」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('飛彈', 'missile', 'ミサイル', 234, 108, '\'imgs/id234.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/9QFZzrrMUB4\" title=\"星のカービィ コピー能力「ミサイル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('天使', 'cupid', 'エンジェル', 235, 108, '\'imgs/id235.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/sUokRo1-lRI\" title=\"星のカービィ コピー能力「エンジェル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('大亂鬥', 'smash bros', 'スマブラ', 236, 108, '\'imgs/id236.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/F5zzsHKDvD4\" title=\"星のカービィ コピー能力「スマブラ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('迷你', 'mini', 'ミニマム', 237, 108, '\'imgs/id237.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/XE7uMLBeZoE\" title=\"星のカービィ コピー能力「ミニマム」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('金屬', 'metal', 'メタル', 238, 109, '\'imgs/id238.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/DyF8tEaV75A\" title=\"星のカービィ コピー能力「メタル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('泡泡', 'bubble', 'バブル', 239, 109, '\'imgs/id239.png\'', '', '<iframe width=\"335\" height=188.5\" src=\"https://www.youtube.com/embed/guf70C3W7ds\" title=\"星のカービィ コピー能力「バブル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('動物', 'animal', 'アニマル', 240, 109, '\'imgs/id240.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/xNUrPvBlfp0\" title=\"星のカービィ コピー能力「アニマル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('幽靈', 'ghost', 'ゴースト', 241, 109, '\'imgs/id241.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/M5DTtQqlhXw\" title=\"星のカービィ コピー能力「ゴースト」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('鞭子', 'whip', 'ウィップ', 242, 111, '\'imgs/id242.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/vGGI77ld7Jg\" title=\"星のカービィ コピー能力「ウィップ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('清水', 'water', 'ウォーター', 243, 111, '\'imgs/id243.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/KakDhH-oy9M\" title=\"星のカービィ コピー能力「ウォーター」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('葉子', 'leaf', 'リーフ', 244, 111, '\'imgs/id244.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/_8xS6G_rHNk\" title=\"星のカービィ コピー能力「リーフ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('長矛', 'spear', 'スピア', 245, 111, '\'imgs/id245.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/r-7bbqt5i_8\" title=\"星のカービィ コピー能力「スピア」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('銅鈴', 'bell', 'ベル', 246, 112, '\'imgs/id246.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/wmyaVtXoGkg\" title=\"星のカービィ コピー能力「ベル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('馬戲團', 'circus', 'サーカス', 247, 112, '\'imgs/id247.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/-6SdNCHCxjc\" title=\"星のカービィ コピー能力「サーカス」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('弓箭手', 'archer', 'スナイパー', 248, 112, '\'imgs/id248.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/4znwIh2_KLM\" title=\"星のカービィ コピー能力「スナイパー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('獨角仙', 'beetle', 'ビートル', 249, 112, '\'imgs/id249.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/L5FnKPEYces\" title=\"星のカービィ コピー能力「ビートル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('超能力', 'ESP', 'エスパー', 250, 113, '\'imgs/id250.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/TlBzey1LB-s\" title=\"星のカービィ コピー能力「エスパー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('醫生', 'doctor', 'ドクター', 251, 113, '\'imgs/id251.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/c4o0mS_OWJA\" title=\"星のカービィ コピー能力「ドクター」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('毒液', 'poison', 'ポイズン', 252, 113, '\'imgs/id252.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/g9IP4Yv3-DQ\" title=\"星のカービィ コピー能力「ポイズン」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('藝術家', 'artist', 'アーティスト', 253, 114, '\'imgs/id253.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/pVBuhF7ev44\" title=\"星のカービィ コピー能力「アーティスト」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('蜘蛛', 'spider', 'スパイダー', 254, 114, '\'imgs/id254.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/sef9mBWsrzU\" title=\"星のカービィ コピー能力「スパイダー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('如意棒', 'staff', 'スティック', 255, 114, '\'imgs/id255.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/WCsBAkvR77c\" title=\"星のカービィ コピー能力「スティック」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('鑽擊', 'drill', 'ドリル', 256, 115, '\'imgs/id256.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/FEhXP3h2ybM\" title=\"星のカービィ コピー能力「ドリル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('探巡隊', 'ranger', 'レンジャー', 257, 115, '\'imgs/id257.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/wKvyb4_1kYc\" title=\"星のカービィ コピー能力「レンジャー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('沙子', 'sand', 'サンド', 258, 116, '\'imgs/id258.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/AZSnMvI-oFw\" title=\"星のカービィ コピー能力「サンド」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('裝甲', 'mecha', 'アーマー', 259, 116, '\'imgs/id259.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/YigsohUEILU\" title=\"星のカービィ コピー能力「アーマー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('料理', 'cook', 'コック', 260, 104, '\'imgs/id260.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/hrgrjshpIF8\" title=\"星のカービィ コピー能力「コック」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('麥克風', 'mike', 'マイク', 261, 102, '\'imgs/id261.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/ToQnxQc-yLs\" title=\"星のカービィ コピー能力「マイク」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('光明', 'light', 'ライト', 262, 102, '\'imgs/id262.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/EA9D6OQ6IKE\" title=\"星のカービィ コピー能力「ライト」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('爆裂', 'crash', 'クラッシュ', 263, 102, '\'imgs/id263.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/cS1p14hGF6c\" title=\"星のカービィ コピー能力「クラッシュ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('魔術師', 'magic', 'マジック', 264, 108, '\'imgs/id264.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/7W06dsOuVGM\" title=\"星のカービィ コピー能力「マジック」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('睡覺', 'sleep', 'スリープ', 265, 102, '\'imgs/id265.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/_WIQsD6ybRQ\" title=\"星のカービィ コピー能力「スリープ」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('顏料', 'paint', 'ペイント', 266, 104, '\'imgs/id266.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/4syOeuxtj8E\" title=\"星のカービィ コピー能力「ペイント」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('慶典', 'festival', 'フェスティバル', 267, 114, '\'imgs/id267.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/-tqKtxvFtNM\" title=\"星のカービィ コピー能力「フェスティバル」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('氣球', 'balloon', 'バルーン', 268, 125, '\'imgs/id268.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/9hqTZeTB9S8\" title=\"星のカービィ コピー能力「バルーン」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('果凍', 'jelly', 'ゼリー', 269, 136, '\'imgs/id269.png\'', '', '<iframe width=\"335\" height=\"188.5\" src=\"https://www.youtube.com/embed/wym-NMXveo0\" title=\"星のカービィ コピー能力「ゼリー」紹介映像\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- 資料表結構 `game`
--

CREATE TABLE `game` (
  `name` varchar(20) NOT NULL,
  `en_name` varchar(35) NOT NULL,
  `jp_name` varchar(20) NOT NULL,
  `game_id` int(3) NOT NULL,
  `year_of_release` date NOT NULL,
  `console` varchar(20) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `story` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  `music` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `game`
--

INSERT INTO `game` (`name`, `en_name`, `jp_name`, `game_id`, `year_of_release`, `console`, `intro`, `story`, `image`, `music`) VALUES
('星之卡比', 'Kirby\'s Dream Land', '星のカービィ', 101, '1992-09-15', 'Game Boy', '', '', '\'imgs/id101.webp\'', ''),
('星之卡比 夢之泉物語', 'Kirby\'s Adventure', '星のカービィ 夢の泉の物語', 102, '1993-03-23', 'Famicom', '', '', '\'imgs/id102.webp\'', ''),
('星之卡比2', 'Kirby\'s Dream Land 2', '星のカービィ2', 103, '1995-03-21', 'Game Boy', '', '', '\'imgs/id103.webp\'', ''),
('星之卡比 超級豪華版', 'Kirby Super Star', '星のカービィ スーパーデラックス', 104, '1996-03-21', 'Super Famicom', '', '', '\'imgs/id104.webp\'', ''),
('星之卡比3', 'Kirby\'s Dream Land 3', '星のカービィ3', 105, '1998-03-27', 'Super Famicom', '', '', '\'imgs/id105.webp\'', ''),
('星之卡比64', 'Kirby 64: The Crystal Shards', '星のカービィ64', 106, '2000-03-24', 'N64', '', '', '\'imgs/id106.webp\'', ''),
('星之卡比 夢之泉物語DX', 'Kirby: Nightmare in Dream Land', '星のカービィ 夢の泉デラックス', 107, '2002-10-23', 'Game Boy Advance', '', '', '\'imgs/id107.webp\'', ''),
('星之卡比 鏡之大迷宮', 'Kirby & the Amazing Mirror', '星のカービィ 鏡の大迷宮', 108, '2004-04-15', 'Game Boy Advance', '', '', '\'imgs/id108.webp\'', ''),
('星之卡比 多洛奇團登場!', 'Kirby Squeak Squad', '星のカービィ 参上! ドロッチェ団', 109, '2006-11-02', 'NDS', '', '', '\'imgs/id109.webp\'', ''),
('星之卡比 超究極豪華版', 'Kirby Super Star Ultra', '星のカービィ ウルトラスーパーデラックス', 110, '2008-11-04', 'NDS', '', '', '\'imgs/id110.webp\'', ''),
('星之卡比Wii', 'Kirby\'s Return to Dream Land', '星のカービィ Wii', 111, '2011-10-27', 'Wii', '', '', '\'imgs/id111.webp\'', ''),
('星之卡比 三重豪華版', 'Kirby: Triple Deluxe', '星のカービィ トリプルデラックス', 112, '2014-01-11', '3DS', '', '', '\'imgs/id112.webp\'', ''),
('星之卡比 機械行星', 'Kirby: Planet Robobo', '星のカービィ ロボボプラネット', 113, '2016-04-28', '3DS', '', '', '\'imgs/id113.webp\'', ''),
('星之卡比 新星同盟', 'Kirby Star Allies', '星のカービィ スターアライズ', 114, '2018-03-16', 'Switch', '', '', '\'imgs/id114.webp\'', ''),
('星之卡比 探索發現', 'Kirby and the Forgotten Land', '星のカービィ ディスカバリー', 115, '2022-03-25', 'Switch', '', '', '\'imgs/id115.webp\'', ''),
('星之卡比Wii豪華版', 'Kirby\'s Return to Dream Land', '星のカービィ Wii デラックス', 116, '2023-02-24', 'Switch', '', '', '\'imgs/id116.webp\'', ''),
('卡比彈珠台', 'Kirby\'s Pinball Land', 'カービィのピンボール', 117, '1993-03-23', 'Game Boy', '', '', '\'imgs/id117.webp\'', ''),
('卡比體育場', 'Kirby\'s Dream Course', 'カービィボウル', 118, '1994-09-21', 'Super Famicom', '', '', '\'imgs/id118.webp\'', ''),
('星之卡比 雪崩', 'Kirby\'s Avalanche', '', 119, '1995-02-01', 'SNES', '', '', '\'imgs/id119.webp\'', ''),
('卡比磚塊球', 'Kirby\'s Block Ball', 'カービィのブロックボール', 120, '1995-12-14', 'Game Boy', '', '', '\'imgs/id120.webp\'', ''),
('卡比寶石星', 'Kirby\'s Star Stacker', 'カービィのきらきらきっず', 121, '1997-06-04', 'Game Boy', '', '', '\'imgs/id121.webp\'', ''),
('卡比寶石星(SFC)', 'Kirby\'s Star Stacker', 'カービィのきらきらきっず ', 122, '1999-06-25', 'Super Famicom', '', '', '\'imgs/id122.png\'', ''),
('滾滾卡比', 'Kirby Tilt \'n\' Tumble', 'コロコロカービィ', 123, '2000-08-23', 'Game Boy Color', '', '', '\'imgs/id123.webp\'', ''),
('卡比空中滑行', 'Kirby Air Ride', 'カービィのエアライド', 124, '2003-07-11', 'Game Cube', '', '', '\'imgs/id124.webp\'', ''),
('觸摸!卡比', 'Kirby Canvas Curse', 'タッチ!カービィ', 125, '2005-03-24', 'NDS', '', '', '\'imgs/id125.webp\'', ''),
('毛線卡比', 'Kirby\'s Epic Yarn', '毛糸のカービィ', 126, '2010-10-14', 'Wii', '', '', '\'imgs/id126.webp\'', ''),
('集合！卡比', 'Kirby Mass Attack', 'あつめて!カービィ', 127, '2011-08-04', 'NDS', '', '', '\'imgs/id127.webp\'', ''),
('卡比群星戰Z', 'Kirby Fighters Delux', 'カービィファイターズZ', 128, '2014-07-23', '3DS', '', '', '\'imgs/id128.webp\'', ''),
('帝帝帝大王的帝帝帝彈跳Z', 'Dedede\'s Drum Dash D', 'デデデ大王のデデデでデンZ', 129, '2014-07-23', '3DS', '', '', '\'imgs/id129.webp\'', ''),
('觸摸！卡比 超級彩虹', 'Kirby and the Rainbo', 'タッチ！カービィ スーパーレインボー', 130, '2015-01-22', 'Wii U', '', '', '\'imgs/id130.webp\'', ''),
('大家一起上！ 卡比獵人隊Z', 'Team Kirby Clash Del', 'みんなで!カービィハンターズZ', 131, '2017-04-13', '3DS', '', '', '\'imgs/id131.webp\'', ''),
('卡比的吸入大作戰', 'Kirby\'s Blowout Blas', 'カービィのすいこみ大作戦', 132, '2017-07-04', '3DS', '', '', '\'imgs/id132.webp\'', ''),
('卡比 對戰豪華版！', 'Kirby Battle Royale', 'カービィ バトルデラックス!', 133, '2017-11-03', '3DS', '', '', '\'imgs/id133.webp\'', ''),
('毛線卡比Plus', 'Kirby\'s Extra Epic Yarn', '毛糸のカービィ プラス', 134, '2019-03-07', '3DS', '', '', '\'imgs/id134.webp\'', ''),
('超級卡比獵人隊', 'Super Kirby Clash', 'スーパーカービィハンターズ', 135, '2019-09-05', 'Switch', '', '', '\'imgs/id135.webp\'', ''),
('卡比群星戰2', 'Kirby Fighters 2', 'カービィファイターズ2', 136, '2020-09-24', 'Switch', '', '', '\'imgs/id136.webp\'', ''),
('卡比的美食節', 'Kirby\'s Dream Buffet', 'カービィのグルメフェス', 137, '2022-08-17', 'Switch', '', '', '\'imgs/id137.webp\'', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `chara`
--
ALTER TABLE `chara`
  ADD PRIMARY KEY (`chara_id`),
  ADD KEY `first_appear` (`first_appear`);

--
-- 資料表索引 `copy_ability`
--
ALTER TABLE `copy_ability`
  ADD PRIMARY KEY (`ability_id`),
  ADD KEY `first_appear` (`first_appear`);

--
-- 資料表索引 `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `chara`
--
ALTER TABLE `chara`
  MODIFY `chara_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `copy_ability`
--
ALTER TABLE `copy_ability`
  MODIFY `ability_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `chara`
--
ALTER TABLE `chara`
  ADD CONSTRAINT `chara_ibfk_1` FOREIGN KEY (`first_appear`) REFERENCES `game` (`game_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `copy_ability`
--
ALTER TABLE `copy_ability`
  ADD CONSTRAINT `copy_ability_ibfk_1` FOREIGN KEY (`first_appear`) REFERENCES `game` (`game_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
