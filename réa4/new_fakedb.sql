drop database fil_rouge;
CREATE DATABASE fil_rouge;
use fil_rouge;
CREATE TABLE groups (
    id int not null auto_increment primary key,
    name varchar(150) not null
);
CREATE TABLE accomplish (
    group_id int not null,
    permission_id int not null,
    primary key (group_id, permission_id),
    foreign key (group_id) references groups (id),
    foreign key (permission_id) references permission (id)
);
CREATE TABLE permission (
    id int not null auto_increment primary key,
    name varchar(255) not null,
    codename varchar(100) not null
);
CREATE TABLE users (
    id int not null auto_increment primary key,
    password varchar(128) not null,
    last_login timestamp,
    is_superuser boolean not null,
    username varchar(150) not null,
    first_name varchar(150) not null,
    last_name varchar(150) not null,
    email varchar(254) not null,
    is_staff boolean not null,
    is_active boolean not null,
    date_joined timestamp not null
);
CREATE TABLE belong (
    user_id int not null,
    group_id int not null,
    primary key(group_id, user_id),
    foreign key (group_id) references groups (id),
    foreign key (user_id) references users (id)
);
CREATE TABLE do (
    user_id int not null,
    permission_id int not null,
    primary key(permission_id, user_id),
    foreign key (user_id) references users (id),
    foreign key (permission_id) references permission (id)
);
CREATE TABLE comment (
    id int not null auto_increment primary key,
    title varchar(200),
    text_content text,
    created_at timestamp not null,
    add_on_id int,
    author_id int,
    game_id int,
    multi_add_on_id int,
    news_id int
);
CREATE TABLE news (
    id int not null auto_increment primary key,
    internal_img_url varchar(200),
    external_img_url varchar(200),
    internal_video_url varchar(200),
    external_video_url text,
    content text,
    internal_video_codec varchar(10),
    created_at timestamp not null,
    title varchar(200),
    audio_codec varchar(200),
    audio_url varchar(200)
);
CREATE TABLE add_illustrate (
    addon_id int not null,
    artist_id int not null,
    primary key(artist_id, addon_id),
    foreign key (addon_id) references addon (id),
    foreign key (artist_id) references artist (id)
);
CREATE TABLE add_design (
    addon_id int not null,
    designer_id int not null,
    primary key(addon_id, designer_id),
    foreign key (addon_id) references addon (id),
    foreign key (designer_id) references designer (id)
);
CREATE TABLE addon (
    id int not null auto_increment primary key,
    name varchar(200) not null,
    player_min int,
    player_max int,
    playing_time varchar(50),
    difficulty_id int,
    created_at timestamp not null,
    picture text,
    bgg_link text not null,
    game_id int,
    age int,
    english_name varchar(200),
    buying_price int,
    stock int not null,
    external_image text,
    thumb_image text,
    max_time int
);
CREATE TABLE add_categorize (
    addon_id int not null,
    playingmode_id int not null,
    primary key(addon_id, playingmode_id),
    foreign key (addon_id) references addon (id),
    foreign key (playingmode_id) references playingmode (id)
);
CREATE TABLE add_publish (
    addon_id int not null,
    publisher_id int not null,
    primary key(addon_id, publisher_id),
    foreign key (addon_id) references addon (id),
    foreign key (publisher_id) references publisher (id)
);
CREATE TABLE add_characterize (
    addon_id int not null,
    language_id int not null,
    primary key(addon_id, language_id),
    foreign key (addon_id) references addon (id),
    foreign key (language_id) references languages (id)
);
CREATE TABLE artist (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
CREATE TABLE background (
    id int not null auto_increment primary key,
    name varchar(200) not null,
    theme_id int
);
CREATE TABLE designer (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
CREATE TABLE difficulty (
    id int not null auto_increment primary key,
    name varchar(200) not null
);


CREATE TABLE game (
    id int not null auto_increment primary key,
    name varchar(200) not null,
    player_min int,
    player_max int,
    playing_time varchar(50),
    difficulty_id int,
    created_at timestamp not null,
    picture text,
    bgg_link text not null,
    by_player boolean not null,
    max_time int,
    age int,
    english_name varchar(200),
    buying_price int,
    stock int not null,
    external_image text,
    thumb_image text
);
CREATE TABLE complete_illustrate (
    game_id int not null,
    artist_id int not null,
    primary key(game_id, artist_id),
    foreign key (game_id) references game (id),
    foreign key (artist_id) references artist (id)
);
CREATE TABLE complete_design (
    game_id int not null,
    designer_id int not null,
    primary key(game_id, designer_id),
    foreign key (game_id) references game (id),
    foreign key (designer_id) references designer (id)
);
CREATE TABLE complete_characterize (
    game_id int not null,
    language_id int not null,
    primary key(game_id, language_id),
    foreign key (game_id) references game (id),
    foreign key (language_id) references languages (id)
);
CREATE TABLE work (
    game_id int not null,
    mechanism_id int not null,
    primary key(game_id, mechanism_id),
    foreign key (game_id) references game (id),
    foreign key (mechanism_id) references mechanism (id)
);
CREATE TABLE complete_categorize (
    game_id int not null,
    playingmode_id int not null,
    primary key(game_id, playingmode_id),
    foreign key (game_id) references game (id),
    foreign key (playingmode_id) references playingmode (id)
);
CREATE TABLE complete_publish (
    game_id int not null,
    publisher_id int not null,
    primary key(game_id, publisher_id),
    foreign key (game_id) references game (id),
    foreign key (publisher_id) references publisher (id)
);
CREATE TABLE define (
    game_id int not null,
    tag_id int not null,
    primary key(game_id, tag_id),
    foreign key (game_id) references game (id),
    foreign key (tag_id) references tag (id)
);
CREATE TABLE typify (
    game_id int not null,
    topic_id int not null,
    primary key(game_id, topic_id),
    foreign key (game_id) references game (id),
    foreign key (topic_id) references topic (id)
);
CREATE TABLE languages (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
CREATE TABLE mechanism (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
CREATE TABLE be_illustrate (
    multiaddon_id int not null,
    artist_id int not null,
    primary key(multiaddon_id, artist_id),
    foreign key (multiaddon_id) references multiaddon (id),
    foreign key (artist_id) references artist (id)
);
CREATE TABLE be_design (
    multiaddon_id int not null,
    designer_id int not null,
    primary key(multiaddon_id, designer_id),
    foreign key (multiaddon_id) references multiaddon (id),
    foreign key (designer_id) references designer (id)
);
CREATE TABLE link  (
    multiaddon_id int not null,
    game_id int not null,
    primary key(multiaddon_id, game_id),
    foreign key (multiaddon_id) references multiaddon (id),
    foreign key (game_id) references game (id)
);
CREATE TABLE multiaddon (
    id int not null auto_increment primary key,
    name varchar(200) not null,
    player_min int,
    player_max int,
    playing_time varchar(50),
    created_at timestamp not null,
    picture text,
    bgg_link text not null,
    difficulty_id int,
    age int,
    english_name varchar(200),
    buying_price int,
    stock int not null,
    external_image text,
    thumb_image text,
    max_time int
);
CREATE TABLE be_categorize (
    multiaddon_id int not null,
    playingmode_id int not null,
    primary key(multiaddon_id, playingmode_id),
    foreign key (multiaddon_id) references multiaddon (id),
    foreign key (playingmode_id) references playingmode (id)
);
CREATE TABLE be_publish (
    multiaddon_id int not null,
    publisher_id int not null,
    primary key(multiaddon_id, publisher_id),
    foreign key (multiaddon_id) references multiaddon (id),
    foreign key (publisher_id) references publisher (id)
);
CREATE TABLE be_characterize (
    multiaddon_id int not null,
    language_id int not null,
    primary key(multiaddon_id, language_id),
    foreign key (multiaddon_id) references multiaddon (id),
    foreign key (language_id) references languages (id)
);
CREATE TABLE playingmode (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
CREATE TABLE publisher (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
CREATE TABLE tag (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
CREATE TABLE theme (
    id int not null auto_increment primary key,
    background_image varchar(200) not null,
    name varchar(200) not null,
    advanced_search_button_text varchar(200) not null,
    advanced_search_title varchar(200) not null,
    color_2nd varchar(18) not null,
    color_3rd varchar(18) not null,
    color_4th varchar(18) not null,
    color_main varchar(18) not null,
    image_404 varchar(200) not null,
    image_500 varchar(200) not null,
    index_text text not null,
    index_title varchar(200) not null,
    list_all_title varchar(200) not null,
    text_404 text not null,
    text_500 text not null,
    title_404 varchar(200) not null,
    title_500 varchar(200) not null,
    font_link text not null,
    font_name varchar(200) not null,
    empty_query_text text not null,
    query_name varchar(200) not null,
    empty_query_image varchar(200) not null,
    color_back varchar(18) not null
);
CREATE TABLE topic (
    id int not null auto_increment primary key,
    name varchar(200) not null
);
INSERT INTO groups (id, name) VALUES (2, 'usagers');
INSERT INTO groups (id, name) VALUES (1, 'ludothecaire');
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 41);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 42);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 43);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 44);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 45);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 46);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 47);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 48);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 1);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 2);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 3);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 4);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 5);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 6);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 7);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 8);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 9);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 10);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 11);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 12);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 13);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 14);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 15);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 16);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 17);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 18);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 19);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 20);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 21);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 22);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 23);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 24);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 25);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 26);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 27);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 28);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 33);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 34);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 35);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 36);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 37);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 38);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 39);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 40);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 49);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 50);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 51);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 52);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 57);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 58);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 59);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 60);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 61);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 62);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 63);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 64);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 65);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 66);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 67);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 68);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 69);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 70);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 71);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 72);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 73);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 74);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 75);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 76);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 77);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 78);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 79);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 80);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 82);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 84);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 85);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 86);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 87);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 88);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 89);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 90);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 91);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 92);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 93);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 94);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 95);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 96);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 32);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 29);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 30);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 31);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 98);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 99);
INSERT INTO accomplish (group_id, permission_id) VALUES  (1, 100);
INSERT INTO permission (id,  name,  codename) VALUES (1,  'Can add auteur',  'add_designer');
INSERT INTO permission (id,  name,  codename) VALUES (2,  'Can change auteur',  'change_designer');
INSERT INTO permission (id,  name,  codename) VALUES (3,  'Can delete auteur',  'delete_designer');
INSERT INTO permission (id,  name,  codename) VALUES (4,  'Can view auteur',  'view_designer');
INSERT INTO permission (id,  name,  codename) VALUES (5,  'Can add illustrateur',  'add_artist');
INSERT INTO permission (id,  name,  codename) VALUES (6,  'Can change illustrateur',  'change_artist');
INSERT INTO permission (id,  name,  codename) VALUES (7,  'Can delete illustrateur',  'delete_artist');
INSERT INTO permission (id,  name,  codename) VALUES (8,  'Can view illustrateur',  'view_artist');
INSERT INTO permission (id,  name,  codename) VALUES (9,  'Can add éditeur',  'add_publisher');
INSERT INTO permission (id,  name,  codename) VALUES (10,  'Can change éditeur',  'change_publisher');
INSERT INTO permission (id,  name,  codename) VALUES (11,  'Can delete éditeur',  'delete_publisher');
INSERT INTO permission (id,  name,  codename) VALUES (12,  'Can view éditeur',  'view_publisher');
INSERT INTO permission (id,  name,  codename) VALUES (13,  'Can add langue',  'add_language');
INSERT INTO permission (id,  name,  codename) VALUES (14,  'Can change langue',  'change_language');
INSERT INTO permission (id,  name,  codename) VALUES (15,  'Can delete langue',  'delete_language');
INSERT INTO permission (id,  name,  codename) VALUES (16,  'Can view langue',  'view_language');
INSERT INTO permission (id,  name,  codename) VALUES (17,  'Can add type',  'add_playingmode');
INSERT INTO permission (id,  name,  codename) VALUES (18,  'Can change type',  'change_playingmode');
INSERT INTO permission (id,  name,  codename) VALUES (19,  'Can delete type',  'delete_playingmode');
INSERT INTO permission (id,  name,  codename) VALUES (20,  'Can view type',  'view_playingmode');
INSERT INTO permission (id,  name,  codename) VALUES (21,  'Can add jeu',  'add_game');
INSERT INTO permission (id,  name,  codename) VALUES (22,  'Can change jeu',  'change_game');
INSERT INTO permission (id,  name,  codename) VALUES (23,  'Can delete jeu',  'delete_game');
INSERT INTO permission (id,  name,  codename) VALUES (24,  'Can view jeu',  'view_game');
INSERT INTO permission (id,  name,  codename) VALUES (25,  'Can add extension',  'add_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (26,  'Can change extension',  'change_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (27,  'Can delete extension',  'delete_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (28,  'Can view extension',  'view_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (29,  'Can add log entry',  'add_logentry');
INSERT INTO permission (id,  name,  codename) VALUES (30,  'Can change log entry',  'change_logentry');
INSERT INTO permission (id,  name,  codename) VALUES (31,  'Can delete log entry',  'delete_logentry');
INSERT INTO permission (id,  name,  codename) VALUES (32,  'Can view log entry',  'view_logentry');
INSERT INTO permission (id,  name,  codename) VALUES (33,  'Can add permission',  'add_permission');
INSERT INTO permission (id,  name,  codename) VALUES (34,  'Can change permission',  'change_permission');
INSERT INTO permission (id,  name,  codename) VALUES (35,  'Can delete permission',  'delete_permission');
INSERT INTO permission (id,  name,  codename) VALUES (36,  'Can view permission',  'view_permission');
INSERT INTO permission (id,  name,  codename) VALUES (37,  'Can add group',  'add_group');
INSERT INTO permission (id,  name,  codename) VALUES (38,  'Can change group',  'change_group');
INSERT INTO permission (id,  name,  codename) VALUES (39,  'Can delete group',  'delete_group');
INSERT INTO permission (id,  name,  codename) VALUES (40,  'Can view group',  'view_group');
INSERT INTO permission (id,  name,  codename) VALUES (41,  'Can add user',  'add_user');
INSERT INTO permission (id,  name,  codename) VALUES (42,  'Can change user',  'change_user');
INSERT INTO permission (id,  name,  codename) VALUES (43,  'Can delete user',  'delete_user');
INSERT INTO permission (id,  name,  codename) VALUES (44,  'Can view user',  'view_user');
INSERT INTO permission (id,  name,  codename) VALUES (45,  'Can add content type',  'add_contenttype');
INSERT INTO permission (id,  name,  codename) VALUES (46,  'Can change content type',  'change_contenttype');
INSERT INTO permission (id,  name,  codename) VALUES (47,  'Can delete content type',  'delete_contenttype');
INSERT INTO permission (id,  name,  codename) VALUES (48,  'Can view content type',  'view_contenttype');
INSERT INTO permission (id,  name,  codename) VALUES (49,  'Can add session',  'add_session');
INSERT INTO permission (id,  name,  codename) VALUES (50,  'Can change session',  'change_session');
INSERT INTO permission (id,  name,  codename) VALUES (51,  'Can delete session',  'delete_session');
INSERT INTO permission (id,  name,  codename) VALUES (52,  'Can view session',  'view_session');
INSERT INTO permission (id,  name,  codename) VALUES (57,  'Can add difficulté',  'add_difficulty');
INSERT INTO permission (id,  name,  codename) VALUES (58,  'Can change difficulté',  'change_difficulty');
INSERT INTO permission (id,  name,  codename) VALUES (59,  'Can delete difficulté',  'delete_difficulty');
INSERT INTO permission (id,  name,  codename) VALUES (60,  'Can view difficulté',  'view_difficulty');
INSERT INTO permission (id,  name,  codename) VALUES (61,  'Can add étiquettes',  'add_tag');
INSERT INTO permission (id,  name,  codename) VALUES (62,  'Can change étiquettes',  'change_tag');
INSERT INTO permission (id,  name,  codename) VALUES (63,  'Can delete étiquettes',  'delete_tag');
INSERT INTO permission (id,  name,  codename) VALUES (64,  'Can view étiquettes',  'view_tag');
INSERT INTO permission (id,  name,  codename) VALUES (65,  'Can add extension',  'add_multi_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (66,  'Can change extension',  'change_multi_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (67,  'Can delete extension',  'delete_multi_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (68,  'Can view extension',  'view_multi_add_on');
INSERT INTO permission (id,  name,  codename) VALUES (69,  'Can add extension',  'add_addon');
INSERT INTO permission (id,  name,  codename) VALUES (70,  'Can change extension',  'change_addon');
INSERT INTO permission (id,  name,  codename) VALUES (71,  'Can delete extension',  'delete_addon');
INSERT INTO permission (id,  name,  codename) VALUES (72,  'Can view extension',  'view_addon');
INSERT INTO permission (id,  name,  codename) VALUES (73,  'Can add extension partagée',  'add_multiaddon');
INSERT INTO permission (id,  name,  codename) VALUES (74,  'Can change extension partagée',  'change_multiaddon');
INSERT INTO permission (id,  name,  codename) VALUES (75,  'Can delete extension partagée',  'delete_multiaddon');
INSERT INTO permission (id,  name,  codename) VALUES (76,  'Can view extension partagée',  'view_multiaddon');
INSERT INTO permission (id,  name,  codename) VALUES (77,  'Can add theme',  'add_theme');
INSERT INTO permission (id,  name,  codename) VALUES (78,  'Can change theme',  'change_theme');
INSERT INTO permission (id,  name,  codename) VALUES (79,  'Can delete theme',  'delete_theme');
INSERT INTO permission (id,  name,  codename) VALUES (80,  'Can view theme',  'view_theme');
INSERT INTO permission (id,  name,  codename) VALUES (81,  'Can add background',  'add_background');
INSERT INTO permission (id,  name,  codename) VALUES (82,  'Can change background',  'change_background');
INSERT INTO permission (id,  name,  codename) VALUES (83,  'Can delete background',  'delete_background');
INSERT INTO permission (id,  name,  codename) VALUES (84,  'Can view background',  'view_background');
INSERT INTO permission (id,  name,  codename) VALUES (85,  'Can add Thème associé',  'add_topic');
INSERT INTO permission (id,  name,  codename) VALUES (86,  'Can change Thème associé',  'change_topic');
INSERT INTO permission (id,  name,  codename) VALUES (87,  'Can delete Thème associé',  'delete_topic');
INSERT INTO permission (id,  name,  codename) VALUES (88,  'Can view Thème associé',  'view_topic');
INSERT INTO permission (id,  name,  codename) VALUES (89,  'Can add mécanique associé',  'add_mechanism');
INSERT INTO permission (id,  name,  codename) VALUES (90,  'Can change mécanique associé',  'change_mechanism');
INSERT INTO permission (id,  name,  codename) VALUES (91,  'Can delete mécanique associé',  'delete_mechanism');
INSERT INTO permission (id,  name,  codename) VALUES (92,  'Can view mécanique associé',  'view_mechanism');
INSERT INTO permission (id,  name,  codename) VALUES (93,  'Can add news',  'add_news');
INSERT INTO permission (id,  name,  codename) VALUES (94,  'Can change news',  'change_news');
INSERT INTO permission (id,  name,  codename) VALUES (95,  'Can delete news',  'delete_news');
INSERT INTO permission (id,  name,  codename) VALUES (96,  'Can view news',  'view_news');
INSERT INTO permission (id,  name,  codename) VALUES (97,  'Can add commentaire',  'add_comment');
INSERT INTO permission (id,  name,  codename) VALUES (98,  'Can change commentaire',  'change_comment');
INSERT INTO permission (id,  name,  codename) VALUES (99,  'Can delete commentaire',  'delete_comment');
INSERT INTO permission (id,  name,  codename) VALUES (100,  'Can view commentaire',  'view_comment');
INSERT INTO users (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$216000$QUh5mbzT9xNb$F/yYNRLnqdTSWmsuPXNmn8zFeKyNTB/R52xzfg2KqVU=', '2021-06-14 12:02:11.292344', false, 'Guillaume', '', '', '', true, true, '2021-06-14 09:37:52');
INSERT INTO users (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$216000$vSlUikZ37BWk$WfIBMKhhQ4UyfrN0rXTUg+k6MA3uTnE73B8GK0pgR0o=', '2021-06-14 12:05:10.534463', false, 'blanchette', 'blanche', 'Castille', '', false, true, '2021-06-14 09:45:20');
INSERT INTO users (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$216000$agGTW3d8yuVR$ZPd+KkhCuIE1oYBlY7hVHDleO09BbZPzAtNHI5Wk+Ik=', '2021-06-14 16:04:06.208416', true, 'wolgan', '', '', 'wolgan_4@hotmail.com', true, true, '2021-04-05 11:31:15.543428');
INSERT INTO belong (user_id, group_id) VALUES  (2, 1);
INSERT INTO belong (user_id, group_id) VALUES  (3, 2);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (1, 'prout', 'prout', '2021-06-14 10:23:07.679864', NULL, 3, 91, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (4, 'Test', 'test', '2021-06-14 12:05:23.147387', NULL, 3, 91, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (5, 'Test', 'test', '2021-06-14 14:12:33.083061', NULL, 3, 91, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (6, 'Le pendu', 'test', '2021-06-14 14:17:32.94137', NULL, 3, 91, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (7, 'Test', 'test', '2021-06-14 14:34:39.811458', NULL, 3, 91, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (10, 'Test', 'test', '2021-06-14 16:11:44.851404', NULL, 1, 13, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (11, 'Test', 'test', '2021-06-14 16:12:55.286423', NULL, 1, 91, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (13, 'aa', 'aaa', '2021-06-14 16:15:47.488392', 5, 1, NULL, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (14, 'Test', 'test', '2021-06-14 16:15:55.871182', 5, 1, NULL, NULL, NULL);
INSERT INTO comment (id, title, text_content, created_at, add_on_id, author_id, game_id, multi_add_on_id, news_id) VALUES (15, 'Test', 'test', '2021-06-14 16:18:43.897608', NULL, 1, NULL, 2, NULL);
INSERT INTO news (id, internal_img_url, external_img_url, internal_video_url, external_video_url, content, internal_video_codec, created_at, title, audio_codec, audio_url) VALUES (1, NULL, NULL, NULL, 'https://www.youtube.com/embed/b5KK0pB8vy0', 'TORTUGA 2199, DES PIRATES OUI, MAIS DANS L’ESPACE
Les deck-buildings, c’est un peu mon péché mignon. Clairement, c’est l’une de mes mécaniques préférées. Il faut dire qu’en plus de leur intérêt ludique propre, ils proposent souvent des thèmes forts et ça, ça me plaît bien. Mais parmi eux, ceux qui me plaisent le plus sont ceux où l’on va avoir un plateau avec lequel interagir, comme Trains ou Tyrants of the Underdark (qui arrive en septembre en VF !) par exemple. Ils se font néanmoins assez rares. Autant dire que si j’en vois passer un, paf je ne rate pas l’occasion ! Et pas de chances pour vous, quand je joue, j’écris.

On va donc parler aujourd’hui de Tortuga 2199 (de Michael Loyko et Denis Plastinin, illustré par Andrew Mironov). Il s’agit d’un jeu dans lequel vous incarnez des pirates, mais de l’espace, où il faudra devenir le roi des pirates. Bon, en termes de thème, on a peut-être vu plus original, mais si celui-ci est bien exploité, pourquoi pas. Je vous avais fait un retour à chaud sur ce jeu lors du Cannes Canapé, et j’ai depuis fait une partie de plus. Développons un peu tout ça.', NULL, '2021-05-11 22:37:25.991751', 'Test', NULL, NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (11, 'Sentinels Of The Multiverse: Rook City', 2, 5, '30 min', 2, '2021-04-10 18:07:45.994893', 'somrc.jpg', 'https://boardgamegeek.com/boardgame/110242/sentinels-multiverse-rook-city', 18, 13, 'Sentinels Of The Multiverse: Rook City', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (12, 'Sentinels Of The Multiverse: Wrath of the Cosmos', 2, 5, '60 min', 2, '2021-04-10 18:09:41.921004', 'somwotc.jpg', 'https://boardgamegeek.com/boardgame/154828/sentinels-multiverse-wrath-cosmos', 18, 13, 'Sentinels Of The Multiverse: Wrath of the Cosmos', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (13, 'Sentinels Of The Multiverse:infernal relics', 2, 5, '30 min', 2, '2021-04-10 18:11:52.602503', 'somir.jpg', 'https://boardgamegeek.com/boardgame/123726/sentinels-multiverse-infernal-relics', 18, 13, 'Sentinels Of The Multiverse:infernal relics', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (10, 'Sentinels Of The Multiverse: Shattered Timelines', 2, 5, '60 min', 2, '2021-04-10 18:05:28.008977', 'somst.jpg', 'https://boardgamegeek.com/boardgame/132959/sentinels-multiverse-shattered-timelines', 18, 13, 'Sentinels Of The Multiverse: Shattered Timelines', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (15, 'Sentinel Tactics: Uprising', 2, 8, '30 à 60 min', 2, '2021-04-11 11:26:54.790118', 'stu.png', 'https://boardgamegeek.com/boardgame/158326/sentinel-tactics-uprising', 31, 13, 'Sentinel Tactics: Uprising', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (16, 'Descent: l''autel du désespoir', 2, 5, '120 à 240 min', 2, '2021-04-11 11:40:51.623757', 'pic198780.jpg', 'https://boardgamegeek.com/boardgame/24976/descent-altar-despair', 33, 12, 'Descent: l''autel du désespoir', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (17, 'Descent: héros de légende', 2, 5, '120 à 240 min', 2, '2021-04-11 11:43:35.256855', 'pic316503.jpg', 'https://boardgamegeek.com/boardgame/29298/descent-road-legend', 33, 12, 'Descent: héros de légende', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (18, 'Loony Quest: The Lost City', 2, 5, '20 min', 1, '2021-04-13 15:58:45.13385', 'pic3564166.jpg', 'https://boardgamegeek.com/boardgame/191302/loony-quest-lost-city', 73, 8, 'Loony Quest: The Lost City', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (14, 'Sentinels Of The Multiverse:Villain of the Multiverse', 2, 5, '60 min', 2, '2021-04-10 18:13:55.626422', 'somvom.jpg', 'https://boardgamegeek.com/boardgame/171965/sentinels-multiverse-villains-multiverse', 18, 13, 'Sentinels Of The Multiverse:Villain of the Multiverse', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (2, 'Minivilles: 5-6 Extension', 2, 6, '30 min', 1, '2021-04-07 15:47:14.960336', 'minivillesext56.jpg', 'https://boardgamegeek.com/boardgame/185279/minivilles-5-6-extension', 7, NULL, 'Minivilles: 5-6 Extension', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (3, 'Pathfinder le jeu de cartes: skull and shackles boite d''extensions', 1, 6, '90 min', 2, '2021-04-08 13:58:14.69509', 'pf_ljc_sands_be.jpg', 'https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-skull-shackles-boite-d-extensions', 10, NULL, 'Pathfinder le jeu de cartes: skull and shackles boite d''extensions', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (4, 'Pathfinder le jeu de cartes: l''éveil des seigneurs des runes boite d''extension', 1, 6, '90 min', 2, '2021-04-08 14:15:19.227054', 'pf_ljdc_edsdr_be.jpg', 'https://www.trictrac.net/jeu-de-societe/pathfinder-jeu-de-cartes-l-eveil-des-seigneurs-des-runes-jeu-de-base-1', 11, NULL, 'Pathfinder le jeu de cartes: l''éveil des seigneurs des runes boite d''extension', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (5, 'Pathfinder adventure card game: mummy''s mask extension set', 1, 6, '90 min', 2, '2021-04-09 17:47:26.415016', 'pfacgmm.jpg', 'https://boardgamegeek.com/boardgame/187687/pathfinder-adventure-card-game-mummys-mask-base-se', 13, 14, 'Pathfinder adventure card game: mummy''s mask extension set', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (6, 'Pathfinder adventure card game: curse of the crimson throne', 1, 6, '90 min', 2, '2021-04-09 17:56:32.693793', 'pfacgcotct.jpg', 'https://boardgamegeek.com/boardgame/271061/pathfinder-adventure-card-game-curse-crimson-thron', 14, 13, 'Pathfinder adventure card game: curse of the crimson throne', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (7, 'Legendary: a Marvel Deck Building Game - Civil War', 1, 5, '30 à 60 min', 2, '2021-04-10 15:51:39.098477', 'legendary_civil_war.jpg', 'https://boardgamegeek.com/boardgame/193513/legendary-marvel-deck-building-game-civil-war', 17, 14, 'Legendary: a Marvel Deck Building Game - Civil War', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (8, 'Sentinels Of The Multiverse: OblivAeon', 2, 5, '30 à 60 min', 2, '2021-04-10 15:59:54.563609', 'somobli.jpg', 'https://boardgamegeek.com/boardgameexpansion/192926/sentinels-multiverse-oblivaeon', 18, 13, 'Sentinels Of The Multiverse: OblivAeon', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (9, 'Sentinels Of The Multiverse: Vengeance', 2, 5, '45 min', 2, '2021-04-10 18:02:34.828359', 'somv.jpg', 'https://boardgamegeek.com/boardgame/134398/sentinels-multiverse-vengeance', 18, 13, 'Sentinels Of The Multiverse: Vengeance', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (19, 'Harry Potter: Hogwarts Battle – The Monster Box of Monsters Expansion', 2, 4, '30 à 60 min', 1, '2021-05-10 14:43:21.275235', 'pic3626222.jpg', 'https://boardgamegeek.com/boardgame/223494/harry-potter-hogwarts-battle-monster-box-monsters', 82, 11, 'Harry Potter: Hogwarts Battle – The Monster Box of Monsters Expansion', NULL, 1, '', '', NULL);
INSERT INTO addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (20, 'Harry Potter: Hogwarts Battle – The Charms and Potions Expansion', 2, 5, '30 à 60 min', 1, '2021-05-10 14:46:26.994573', 'pic5674009.jpg', 'https://boardgamegeek.com/boardgame/304297/harry-potter-hogwarts-battle-charms-and-potions-ex', 82, 11, 'Harry Potter: Hogwarts Battle – The Charms and Potions Expansion', NULL, 1, '', '', NULL);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (2, 13);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (3, 15);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (4, 16);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (4, 17);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (5, 18);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (6, 19);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (7, 24);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (7, 23);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (8, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (9, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (10, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (11, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (12, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (13, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (14, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (15, 25);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (16, 42);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (16, 44);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (16, 45);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (16, 46);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (17, 44);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (17, 45);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (17, 42);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (18, 58);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (18, 87);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (19, 94);
INSERT INTO add_illustrate (addon_id, artist_id) VALUES  (20, 94);
INSERT INTO add_design (addon_id, designer_id) VALUES  (2, 6);
INSERT INTO add_design (addon_id, designer_id) VALUES  (3, 7);
INSERT INTO add_design (addon_id, designer_id) VALUES  (4, 7);
INSERT INTO add_design (addon_id, designer_id) VALUES  (5, 7);
INSERT INTO add_design (addon_id, designer_id) VALUES  (6, 7);
INSERT INTO add_design (addon_id, designer_id) VALUES  (6, 8);
INSERT INTO add_design (addon_id, designer_id) VALUES  (6, 9);
INSERT INTO add_design (addon_id, designer_id) VALUES  (6, 10);
INSERT INTO add_design (addon_id, designer_id) VALUES  (6, 11);
INSERT INTO add_design (addon_id, designer_id) VALUES  (7, 18);
INSERT INTO add_design (addon_id, designer_id) VALUES  (8, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (8, 20);
INSERT INTO add_design (addon_id, designer_id) VALUES  (8, 21);
INSERT INTO add_design (addon_id, designer_id) VALUES  (9, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (9, 20);
INSERT INTO add_design (addon_id, designer_id) VALUES  (9, 21);
INSERT INTO add_design (addon_id, designer_id) VALUES  (10, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (10, 20);
INSERT INTO add_design (addon_id, designer_id) VALUES  (10, 21);
INSERT INTO add_design (addon_id, designer_id) VALUES  (10, 22);
INSERT INTO add_design (addon_id, designer_id) VALUES  (10, 23);
INSERT INTO add_design (addon_id, designer_id) VALUES  (11, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (11, 20);
INSERT INTO add_design (addon_id, designer_id) VALUES  (11, 21);
INSERT INTO add_design (addon_id, designer_id) VALUES  (12, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (12, 20);
INSERT INTO add_design (addon_id, designer_id) VALUES  (12, 21);
INSERT INTO add_design (addon_id, designer_id) VALUES  (13, 24);
INSERT INTO add_design (addon_id, designer_id) VALUES  (13, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (13, 20);
INSERT INTO add_design (addon_id, designer_id) VALUES  (13, 21);
INSERT INTO add_design (addon_id, designer_id) VALUES  (14, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (14, 20);
INSERT INTO add_design (addon_id, designer_id) VALUES  (14, 21);
INSERT INTO add_design (addon_id, designer_id) VALUES  (15, 43);
INSERT INTO add_design (addon_id, designer_id) VALUES  (15, 19);
INSERT INTO add_design (addon_id, designer_id) VALUES  (15, 44);
INSERT INTO add_design (addon_id, designer_id) VALUES  (16, 46);
INSERT INTO add_design (addon_id, designer_id) VALUES  (17, 46);
INSERT INTO add_design (addon_id, designer_id) VALUES  (17, 47);
INSERT INTO add_design (addon_id, designer_id) VALUES  (18, 88);
INSERT INTO add_design (addon_id, designer_id) VALUES  (18, 87);
INSERT INTO add_design (addon_id, designer_id) VALUES  (19, 98);
INSERT INTO add_design (addon_id, designer_id) VALUES  (19, 100);
INSERT INTO add_design (addon_id, designer_id) VALUES  (20, 98);
INSERT INTO add_design (addon_id, designer_id) VALUES  (20, 100);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (2, 4);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (3, 1);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (3, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (4, 1);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (4, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (5, 1);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (5, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (6, 1);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (6, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (7, 1);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (7, 2);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (8, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (9, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (10, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (11, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (12, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (13, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (14, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (15, 2);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (15, 4);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (16, 5);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (17, 5);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (18, 4);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (19, 3);
INSERT INTO add_categorize (addon_id, playingmode_id) VALUES  (20, 3);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (2, 1);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (2, 5);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (3, 6);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (3, 7);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (4, 6);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (4, 7);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (5, 6);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (6, 6);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (7, 14);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (8, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (9, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (10, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (11, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (12, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (13, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (14, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (15, 15);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (16, 11);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (16, 12);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (17, 11);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (17, 12);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (18, 27);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (19, 51);
INSERT INTO add_publish (addon_id, publisher_id) VALUES  (20, 51);
INSERT INTO artist (id, name) VALUES (1, 'Bernard Skopnik');
INSERT INTO artist (id, name) VALUES (2, 'Randy Delven');
INSERT INTO artist (id, name) VALUES (3, 'Vito Guesualdi');
INSERT INTO artist (id, name) VALUES (4, 'Antonis Papantoniou');
INSERT INTO artist (id, name) VALUES (5, 'Francois Bruel');
INSERT INTO artist (id, name) VALUES (6, 'Guillaume Ducos');
INSERT INTO artist (id, name) VALUES (7, 'Giuseppe Severino');
INSERT INTO artist (id, name) VALUES (8, 'Arthur Bozonnet');
INSERT INTO artist (id, name) VALUES (9, 'Bertrand Daine');
INSERT INTO artist (id, name) VALUES (10, 'Arthur Loyen');
INSERT INTO artist (id, name) VALUES (11, 'Vianney Carvalho');
INSERT INTO artist (id, name) VALUES (12, 'Amandine Bastin');
INSERT INTO artist (id, name) VALUES (13, 'Noboru Hotta');
INSERT INTO artist (id, name) VALUES (14, 'Daryl Mandryk');
INSERT INTO artist (id, name) VALUES (15, 'Wayne Reynolds');
INSERT INTO artist (id, name) VALUES (16, 'Noah Bradley');
INSERT INTO artist (id, name) VALUES (17, 'Vincent Dutrait');
INSERT INTO artist (id, name) VALUES (18, 'Tyler Jacobson');
INSERT INTO artist (id, name) VALUES (19, 'Setiawan Lie');
INSERT INTO artist (id, name) VALUES (20, 'Jean-François Gauthier');
INSERT INTO artist (id, name) VALUES (21, 'Chris Beck');
INSERT INTO artist (id, name) VALUES (22, 'Evan Simonet');
INSERT INTO artist (id, name) VALUES (23, 'Krista Timberlake');
INSERT INTO artist (id, name) VALUES (24, 'Brian Bateman');
INSERT INTO artist (id, name) VALUES (25, 'Adam Rebottaro');
INSERT INTO artist (id, name) VALUES (26, 'Daarken');
INSERT INTO artist (id, name) VALUES (27, 'Tim AmeyO''Neil');
INSERT INTO artist (id, name) VALUES (28, 'Jakub Rozalski');
INSERT INTO artist (id, name) VALUES (29, 'Mick Uhl');
INSERT INTO artist (id, name) VALUES (30, 'Jean Baher');
INSERT INTO artist (id, name) VALUES (31, 'Dominique Ehrhard');
INSERT INTO artist (id, name) VALUES (32, 'Martin Abel');
INSERT INTO artist (id, name) VALUES (34, 'Mio Del Rosario');
INSERT INTO artist (id, name) VALUES (36, 'Steve Swenston');
INSERT INTO artist (id, name) VALUES (37, 'Alexandr Elichev');
INSERT INTO artist (id, name) VALUES (38, 'Alvaro Nebot');
INSERT INTO artist (id, name) VALUES (39, 'Josh T. McDowell');
INSERT INTO artist (id, name) VALUES (40, 'Michael Menzel');
INSERT INTO artist (id, name) VALUES (41, 'Diego Gisbert Llorens');
INSERT INTO artist (id, name) VALUES (43, 'Hub');
INSERT INTO artist (id, name) VALUES (44, 'John Goodenough');
INSERT INTO artist (id, name) VALUES (45, 'Frank Walls');
INSERT INTO artist (id, name) VALUES (42, 'Jesper Ejsing');
INSERT INTO artist (id, name) VALUES (35, 'Moy Shin Hung');
INSERT INTO artist (id, name) VALUES (47, 'Piotr Foksowicz');
INSERT INTO artist (id, name) VALUES (48, 'Mateusz Bielski');
INSERT INTO artist (id, name) VALUES (50, 'Andy Brase');
INSERT INTO artist (id, name) VALUES (51, 'Massimiliano Bertolini');
INSERT INTO artist (id, name) VALUES (52, 'Marjorie Davis');
INSERT INTO artist (id, name) VALUES (53, 'Ralph Horsley');
INSERT INTO artist (id, name) VALUES (54, 'Miguel Coimbra');
INSERT INTO artist (id, name) VALUES (55, 'Richard Wright');
INSERT INTO artist (id, name) VALUES (56, 'Nicolas Fructus');
INSERT INTO artist (id, name) VALUES (57, 'Karl Kopinski');
INSERT INTO artist (id, name) VALUES (58, 'Paul Mafayon');
INSERT INTO artist (id, name) VALUES (59, 'Chih-Fan Chen');
INSERT INTO artist (id, name) VALUES (60, 'Gérard Mathieu');
INSERT INTO artist (id, name) VALUES (61, 'Delphine Ribeyre');
INSERT INTO artist (id, name) VALUES (62, 'Sergo');
INSERT INTO artist (id, name) VALUES (63, 'Pierre Santamaria');
INSERT INTO artist (id, name) VALUES (64, 'Florian de Gesincourt');
INSERT INTO artist (id, name) VALUES (65, 'Mahulda Jelly');
INSERT INTO artist (id, name) VALUES (66, 'Arnaud Demaegd');
INSERT INTO artist (id, name) VALUES (67, 'Legruth');
INSERT INTO artist (id, name) VALUES (68, 'Martin Mottet');
INSERT INTO artist (id, name) VALUES (69, 'Amélie Guinet');
INSERT INTO artist (id, name) VALUES (70, 'Tomas Kucerovsky');
INSERT INTO artist (id, name) VALUES (71, 'Stéphane Gantiez');
INSERT INTO artist (id, name) VALUES (72, 'Stéphane Escapa');
INSERT INTO artist (id, name) VALUES (73, 'Charlène Le Scanff');
INSERT INTO artist (id, name) VALUES (74, 'Tyler Edlin');
INSERT INTO artist (id, name) VALUES (75, 'C. B. Canga');
INSERT INTO artist (id, name) VALUES (76, 'Natalia Kordowska');
INSERT INTO artist (id, name) VALUES (78, 'Cyril Bouquet');
INSERT INTO artist (id, name) VALUES (79, 'Harald Lieske');
INSERT INTO artist (id, name) VALUES (80, 'Mia Steingräber');
INSERT INTO artist (id, name) VALUES (81, 'Markus Schmuck');
INSERT INTO artist (id, name) VALUES (82, 'Peter Wocken');
INSERT INTO artist (id, name) VALUES (83, 'Emmanuel Roudier');
INSERT INTO artist (id, name) VALUES (84, 'Gabriel Butik');
INSERT INTO artist (id, name) VALUES (85, 'Romain Gaschet');
INSERT INTO artist (id, name) VALUES (86, 'Jonathan Silvestre');
INSERT INTO artist (id, name) VALUES (87, 'Mathieu Leyssenne');
INSERT INTO artist (id, name) VALUES (88, 'Ronan Le Maître');
INSERT INTO artist (id, name) VALUES (89, 'Irina Pechenkina');
INSERT INTO artist (id, name) VALUES (90, 'Jean-Baptiste Reynaud');
INSERT INTO artist (id, name) VALUES (91, 'Xavier Gueniffey Durin');
INSERT INTO artist (id, name) VALUES (92, 'Delaney Mamer');
INSERT INTO artist (id, name) VALUES (93, 'Joe Van Wetering');
INSERT INTO artist (id, name) VALUES (94, 'Kami Mandell');
INSERT INTO artist (id, name) VALUES (95, 'Zak Eidsvoog');
INSERT INTO artist (id, name) VALUES (96, 'Diana Franco Campos');
INSERT INTO artist (id, name) VALUES (97, 'Chris Quilliams');
INSERT INTO artist (id, name) VALUES (98, 'Paul Kluka');
INSERT INTO artist (id, name) VALUES (99, 'Atha Kanaani');
INSERT INTO artist (id, name) VALUES (100, 'Fred Jordan');
INSERT INTO artist (id, name) VALUES (101, 'Philippe Guérin');
INSERT INTO artist (id, name) VALUES (102, 'Igor Burlakov');
INSERT INTO artist (id, name) VALUES (103, 'Xavier Collette');
INSERT INTO artist (id, name) VALUES (104, 'Oleksandr Nevskiy');
INSERT INTO artist (id, name) VALUES (105, 'Oleg Sidorenko');
INSERT INTO artist (id, name) VALUES (106, 'Pascal Quidault');
INSERT INTO artist (id, name) VALUES (107, 'David Lecossu');
INSERT INTO artist (id, name) VALUES (108, 'Ben Carre');
INSERT INTO artist (id, name) VALUES (110, 'Ewa Kostorz');
INSERT INTO artist (id, name) VALUES (111, 'Aga Jakimiec');
INSERT INTO artist (id, name) VALUES (112, 'Gary Grady');
INSERT INTO artist (id, name) VALUES (113, 'Bernard Bittler');
INSERT INTO artist (id, name) VALUES (114, 'Neriac');
INSERT INTO artist (id, name) VALUES (129, 'Marion Pott');
INSERT INTO artist (id, name) VALUES (130, 'Matt Schwabel');
INSERT INTO artist (id, name) VALUES (131, 'Franz Vohwinkel');
INSERT INTO artist (id, name) VALUES (132, 'Stephen Graham Walsh');
INSERT INTO artist (id, name) VALUES (124, 'Volkan Baga');
INSERT INTO artist (id, name) VALUES (125, 'Tanja Donner');
INSERT INTO artist (id, name) VALUES (126, 'Pete Fenlon');
INSERT INTO artist (id, name) VALUES (127, 'Jason Hawkins');
INSERT INTO artist (id, name) VALUES (128, 'Michaela Kienle');
INSERT INTO artist (id, name) VALUES (133, 'Timur Baskakov');
INSERT INTO artist (id, name) VALUES (134, 'Design Edge');
INSERT INTO artist (id, name) VALUES (135, 'Bill Herrin');
INSERT INTO artist (id, name) VALUES (136, 'Gatis Sluka');
INSERT INTO artist (id, name) VALUES (137, 'Studio Tapiro');
INSERT INTO artist (id, name) VALUES (138, 'Klaus Teuber');
INSERT INTO artist (id, name) VALUES (77, 'Bartlomiej Kordowski');
INSERT INTO artist (id, name) VALUES (46, 'Rafal Hrynkiewicz');
INSERT INTO artist (id, name) VALUES (109, 'Rafal Szyma');
INSERT INTO artist (id, name) VALUES (49, 'Piotr Cieslinski');
INSERT INTO artist (id, name) VALUES (139, 'Ana Maria Martinez Jaramillo');
INSERT INTO artist (id, name) VALUES (140, 'Natalia Rojas');
INSERT INTO artist (id, name) VALUES (141, 'Beth Sobel');
INSERT INTO background (id, name, theme_id) VALUES (1, 'Interface', 1);
INSERT INTO designer (id, name) VALUES (1, 'Reiner Knizia');
INSERT INTO designer (id, name) VALUES (2, 'Darwin Kastle');
INSERT INTO designer (id, name) VALUES (3, 'Robert Dougherty');
INSERT INTO designer (id, name) VALUES (4, 'Holger Bösch');
INSERT INTO designer (id, name) VALUES (5, 'Nicolas Smeers');
INSERT INTO designer (id, name) VALUES (6, 'Masao Suganuma');
INSERT INTO designer (id, name) VALUES (7, 'Mike Selinker');
INSERT INTO designer (id, name) VALUES (8, 'Chad Brown');
INSERT INTO designer (id, name) VALUES (9, 'Keith Richmond');
INSERT INTO designer (id, name) VALUES (10, 'Aviva Schecterson');
INSERT INTO designer (id, name) VALUES (11, 'Liz Spain');
INSERT INTO designer (id, name) VALUES (12, 'Paul Peterson');
INSERT INTO designer (id, name) VALUES (13, 'Tanis O''Conor');
INSERT INTO designer (id, name) VALUES (14, 'Jean-François Gauthier');
INSERT INTO designer (id, name) VALUES (15, 'Michael Boggs');
INSERT INTO designer (id, name) VALUES (16, 'Nate French');
INSERT INTO designer (id, name) VALUES (17, 'Caleb Grace');
INSERT INTO designer (id, name) VALUES (18, 'Devin Low');
INSERT INTO designer (id, name) VALUES (19, 'Christopher Badell');
INSERT INTO designer (id, name) VALUES (20, 'Paul Bender');
INSERT INTO designer (id, name) VALUES (21, 'Adam Rebottaro');
INSERT INTO designer (id, name) VALUES (22, 'Alex Franklin');
INSERT INTO designer (id, name) VALUES (23, 'Bryan Graham');
INSERT INTO designer (id, name) VALUES (24, 'Richard Launius');
INSERT INTO designer (id, name) VALUES (25, 'John Goodenough');
INSERT INTO designer (id, name) VALUES (26, 'Jeff Tidball');
INSERT INTO designer (id, name) VALUES (27, 'Jamey Stegmaier');
INSERT INTO designer (id, name) VALUES (28, 'Future Pastimes');
INSERT INTO designer (id, name) VALUES (29, 'Dominique Ehrhard');
INSERT INTO designer (id, name) VALUES (30, 'Colby Dauch');
INSERT INTO designer (id, name) VALUES (31, 'J.Arthur Ellis');
INSERT INTO designer (id, name) VALUES (32, 'Andrea Mezzotero');
INSERT INTO designer (id, name) VALUES (33, 'Corey Konieczka');
INSERT INTO designer (id, name) VALUES (34, 'Greg Stafford');
INSERT INTO designer (id, name) VALUES (35, 'Isaac Childres');
INSERT INTO designer (id, name) VALUES (36, 'Gerhard Hecht');
INSERT INTO designer (id, name) VALUES (37, 'Justin Kemppainen');
INSERT INTO designer (id, name) VALUES (38, 'Adam Sadler');
INSERT INTO designer (id, name) VALUES (39, 'Brady Sadler');
INSERT INTO designer (id, name) VALUES (40, 'Bill Slavicsek');
INSERT INTO designer (id, name) VALUES (41, 'Mike Mearls');
INSERT INTO designer (id, name) VALUES (42, 'Peter Lee');
INSERT INTO designer (id, name) VALUES (43, 'Kevin G. Nunn');
INSERT INTO designer (id, name) VALUES (44, 'Luther Bell Hendricks V');
INSERT INTO designer (id, name) VALUES (45, 'Frédérick Condette');
INSERT INTO designer (id, name) VALUES (46, 'Kevin Wilson');
INSERT INTO designer (id, name) VALUES (47, 'Robert A. Kouba');
INSERT INTO designer (id, name) VALUES (49, 'Martin Wallace');
INSERT INTO designer (id, name) VALUES (50, 'Darrell Hardy');
INSERT INTO designer (id, name) VALUES (51, 'Robert Harris');
INSERT INTO designer (id, name) VALUES (52, 'Bruno Cathala');
INSERT INTO designer (id, name) VALUES (53, 'Antoine Bauza');
INSERT INTO designer (id, name) VALUES (54, 'Eric M. Lang');
INSERT INTO designer (id, name) VALUES (55, 'Prospero Hall');
INSERT INTO designer (id, name) VALUES (56, 'Claude Lucchini');
INSERT INTO designer (id, name) VALUES (57, 'Jesse Li');
INSERT INTO designer (id, name) VALUES (58, 'Mark Latham');
INSERT INTO designer (id, name) VALUES (59, 'Gustavo Adolfo Cuadrado');
INSERT INTO designer (id, name) VALUES (60, 'Paul J. Gruen');
INSERT INTO designer (id, name) VALUES (61, 'Bruno Faidutti');
INSERT INTO designer (id, name) VALUES (62, 'Albert Lamorisse');
INSERT INTO designer (id, name) VALUES (63, 'Michael I. Levin');
INSERT INTO designer (id, name) VALUES (64, 'Bill Markham');
INSERT INTO designer (id, name) VALUES (65, 'Reuben Klamer');
INSERT INTO designer (id, name) VALUES (66, 'Nicolas Bonnefoy');
INSERT INTO designer (id, name) VALUES (67, 'Arnaud Ladagnous');
INSERT INTO designer (id, name) VALUES (68, 'Fabrice Mazza');
INSERT INTO designer (id, name) VALUES (69, 'Sébastien Pauchon');
INSERT INTO designer (id, name) VALUES (70, 'Billy Stevenson');
INSERT INTO designer (id, name) VALUES (71, 'Thomas Cauët');
INSERT INTO designer (id, name) VALUES (72, 'Arch Stanton');
INSERT INTO designer (id, name) VALUES (73, 'Lewis Cheshire');
INSERT INTO designer (id, name) VALUES (74, 'Cyril Demaegd');
INSERT INTO designer (id, name) VALUES (75, 'Jeff Bazarko');
INSERT INTO designer (id, name) VALUES (76, 'Mordecai Meirowitz');
INSERT INTO designer (id, name) VALUES (77, 'Scott Abbot');
INSERT INTO designer (id, name) VALUES (78, 'Chris Haney');
INSERT INTO designer (id, name) VALUES (79, 'Vlaada Chvátil');
INSERT INTO designer (id, name) VALUES (80, 'Klaus-Jürgen Wrede');
INSERT INTO designer (id, name) VALUES (81, 'Julien Prothière');
INSERT INTO designer (id, name) VALUES (82, 'Florent Toscano');
INSERT INTO designer (id, name) VALUES (83, 'Frédéric Vuagnat');
INSERT INTO designer (id, name) VALUES (84, 'Matt Leacock');
INSERT INTO designer (id, name) VALUES (85, 'Dávid Turczi');
INSERT INTO designer (id, name) VALUES (86, 'Vangelis Bagiartakis');
INSERT INTO designer (id, name) VALUES (87, 'David Franck');
INSERT INTO designer (id, name) VALUES (88, 'Laurent Escoffier');
INSERT INTO designer (id, name) VALUES (89, 'Rüdiger Dorn');
INSERT INTO designer (id, name) VALUES (90, 'Daryl Andrews');
INSERT INTO designer (id, name) VALUES (91, 'Adrian Adamescu');
INSERT INTO designer (id, name) VALUES (92, 'Francis Pacherie');
INSERT INTO designer (id, name) VALUES (93, 'Richard Garfield');
INSERT INTO designer (id, name) VALUES (94, 'Ken Gruhl');
INSERT INTO designer (id, name) VALUES (95, 'Jonathan Algaze');
INSERT INTO designer (id, name) VALUES (96, 'Nick Hayes');
INSERT INTO designer (id, name) VALUES (97, 'Malcolm Braff');
INSERT INTO designer (id, name) VALUES (98, 'Kami Mandell');
INSERT INTO designer (id, name) VALUES (99, 'Nate Heiss');
INSERT INTO designer (id, name) VALUES (100, 'Andrew Wolf');
INSERT INTO designer (id, name) VALUES (101, 'Patrick Marino');
INSERT INTO designer (id, name) VALUES (102, 'Tim Pinder');
INSERT INTO designer (id, name) VALUES (103, 'Chuck D. Yager');
INSERT INTO designer (id, name) VALUES (104, 'Oleksandr Nevskiy');
INSERT INTO designer (id, name) VALUES (105, 'Oleg Sidorenko');
INSERT INTO designer (id, name) VALUES (106, 'Manuel Rozoy');
INSERT INTO designer (id, name) VALUES (107, 'Peggy Chassenet');
INSERT INTO designer (id, name) VALUES (110, 'Ignacy Trzewiczek');
INSERT INTO designer (id, name) VALUES (111, 'Jérôme Ropert');
INSERT INTO designer (id, name) VALUES (112, 'Gary Grady');
INSERT INTO designer (id, name) VALUES (113, 'Suzanne Goldberg');
INSERT INTO designer (id, name) VALUES (116, 'Klaus Teuber');
INSERT INTO designer (id, name) VALUES (117, 'Wolfgang Kramer');
INSERT INTO designer (id, name) VALUES (48, 'Michal Oracz');
INSERT INTO designer (id, name) VALUES (108, 'Przemyslaw Rymer');
INSERT INTO designer (id, name) VALUES (109, 'Jakub Lapot');
INSERT INTO designer (id, name) VALUES (118, 'Elizabeth Hargrave');
INSERT INTO difficulty (id, name) VALUES (1, 'Famille');
INSERT INTO difficulty (id, name) VALUES (2, 'vétéran');
INSERT INTO difficulty (id, name) VALUES (3, 'complexe');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (86, 'T.I.M.E Stories', 2, 4, '90 min', 1, '2021-05-10 15:07:14.299666', 'pic2617634.png', 'https://boardgamegeek.com/boardgame/146508/time-stories/ratings', false, 90, 12, 'T.I.M.E Stories', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (13, 'Pathfinder adventure card game: mummy''s mask', 1, 4, '90 min', 2, '2021-04-09 17:44:36.509927', 'pfacgmm.jpg', 'https://boardgamegeek.com/boardgame/187687/pathfinder-adventure-card-game-mummys-mask-base-se', false, 90, 14, 'Pathfinder adventure card game: mummy''s mask', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (82, 'Harry Potter: Hogwarts Battle', 2, 4, '30 à 60 min', 1, '2021-05-10 14:41:03.10343', 'pic3518231.jpg', 'https://boardgamegeek.com/boardgame/199042/harry-potter-hogwarts-battle', false, 60, 11, 'Harry Potter: Hogwarts Battle', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (37, '7 wonders duel', 2, 2, '30 min', 2, '2021-04-11 12:13:51.757007', 'pic3376065.jpg', 'https://boardgamegeek.com/boardgame/173346/7-wonders-duel', false, 30, 10, '7 wonders duel', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (83, 'Sub Terra', 1, 6, '60 min', 1, '2021-05-10 14:50:38.983572', 'pic3904427.png', 'https://boardgamegeek.com/boardgame/204472/sub-terra/credits', false, 60, 10, 'Sub Terra', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (87, 'Détective: Un Jeu D''enquête Moderne', 1, 5, '120 à 180 min', 1, '2021-05-10 15:11:49.520421', 'pic5756205.jpg', 'https://boardgamegeek.com/boardgame/223321/detective-modern-crime-board-game', false, 180, 16, 'Detective: A Modern Crime Board Game', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (55, 'Backgammon', 2, 2, '30 min', 2, '2021-04-11 16:09:46.266198', 'pic1361122.jpg', 'https://boardgamegeek.com/boardgame/2397/backgammon', false, 30, 8, 'Backgammon', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (56, 'Dames Chinoises', 2, 6, '30 min', 1, '2021-04-11 16:11:09.092682', 'pic113974.jpg', 'https://boardgamegeek.com/boardgame/2386/chinese-checkers', false, 30, 7, 'Dames Chinoises', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (38, 'Le Parrain: L''empire De Corleone', 2, 5, '60 à 90 min', 3, '2021-04-11 12:17:06.981739', 'pic3364797.jpg', 'https://boardgamegeek.com/boardgame/195539/godfather-corleones-empire', false, 90, 14, 'Le Parrain: L''empire De Corleone', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (17, 'Legendary: a Marvel Deck Building Game', 1, 5, '30 à 60 min', 2, '2021-04-10 15:47:38.596799', 'legendary.jpg', 'https://boardgamegeek.com/boardgame/129437/legendary-marvel-deck-building-game', false, 60, 14, 'Legendary: a Marvel Deck Building Game', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (14, 'Pathfinder adventure card game: core set', 1, 4, '90 min', 2, '2021-04-09 17:53:08.569365', 'pfacgcs.jpg', 'https://boardgamegeek.com/boardgame/271060/pathfinder-adventure-card-game-core-set', false, 90, 13, 'Pathfinder adventure card game: core set', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (11, 'Pathfinder le jeu de cartes: l''éveil des seigneurs des runes', 1, 4, '90 min', 2, '2021-04-08 14:10:42.256444', 'pf_ljdc_edsdr.jpg', 'https://boardgamegeek.com/boardgame/133038/pathfinder-adventure-card-game-rise-runelords-base', false, 90, 14, 'Pathfinder le jeu de cartes: l''éveil des seigneurs des runes', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (10, 'Pathfinder le jeu de cartes: skull and shackles', 1, 4, '90 min', 2, '2021-04-08 13:42:18.320671', 'pf_ljc_sands.jpg', 'https://boardgamegeek.com/image/2268287/pathfinder-adventure-card-game-skull-shackles-base', false, 90, 14, 'Pathfinder le jeu de cartes: skull and shackles', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (18, 'Sentinels Of The Multiverse', 2, 5, '30 à 60 min', 2, '2021-04-10 15:57:28.45478', 'som.jpg', 'https://boardgamegeek.com/boardgame/102652/sentinels-multiverse', false, 60, 13, 'Sentinels Of The Multiverse', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (50, 'Unlock!:secret Adventures', 1, 6, '60 min', 2, '2021-04-11 15:58:12.803851', 'pic3945063.jpg', 'https://boardgamegeek.com/boardgame/239307/unlock-secret-adventures', false, 60, 10, 'Unlock!:secret Adventures', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (64, 'Le Désert Interdit', 2, 5, '45 min', 1, '2021-04-11 16:34:00.177101', 'pic1528722.jpg', 'https://boardgamegeek.com/boardgame/136063/forbidden-desert', false, 45, 10, 'Forbidden Desert', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (84, 'Le règne de CTHULHU', 2, 4, '40 min', 1, '2021-05-10 14:57:09.13077', 'pic2866737.png', 'https://boardgamegeek.com/boardgame/192153/pandemic-reign-cthulhu', false, 40, 14, 'Pandemic: Reign of Cthulhu', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (23, 'Crystal Clans', 2, 2, '30 à 60 min', 2, '2021-04-10 18:46:24.653054', 'crystalclan.jpg', 'https://boardgamegeek.com/boardgame/228133/crystal-clans', false, 60, 14, 'Crystal Clans', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (40, 'Otys', 2, 4, '60 min', 3, '2021-04-11 12:23:00.090275', 'pic3668630.jpg', 'https://boardgamegeek.com/boardgame/222542/otys', false, 60, 14, 'Otys', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (25, 'La guerre des héros', 2, 2, '120 min', 3, '2021-04-10 18:55:14.358008', 'lgdh.jpg', 'https://www.trictrac.net/jeu-de-societe/la-guerre-des-heros', false, 120, 14, 'La guerre des héros', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (30, 'Dungeons & Dragons: Wrath of Ashardalon Board Game', 1, 5, '60 min', 2, '2021-04-10 19:17:13.366016', 'ddwoa.jpg', 'https://boardgamegeek.com/boardgame/66356/dungeons-dragons-wrath-ashardalon-board-game', false, 60, 12, 'Dungeons & Dragons: Wrath of Ashardalon Board Game', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (33, 'Descent: Voyage dans les ténèbres', 2, 5, '120 à 240 min', 2, '2021-04-11 11:36:28.164947', 'pic249300.jpg', 'https://boardgamegeek.com/boardgame/17226/descent-journeys-dark', false, 240, 13, 'Descent: Voyage dans les ténèbres', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (32, 'Okko Chronicles: Cycle of Water – Quest into Darkness', 2, 5, '120 min', 3, '2021-04-11 11:30:53.057215', 'octcof.jpg', 'https://boardgamegeek.com/boardgame/228399/okko-chronicles-cycle-water-quest-darkness', false, 120, 14, 'Okko Chronicles: Cycle of Water – Quest into Darkness', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (36, 'Talisman', 2, 6, '90 min', 1, '2021-04-11 12:11:16.68628', 'pic332870.jpg', 'https://boardgamegeek.com/boardgame/27627/talisman-revised-4th-edition', false, 90, 13, 'Talisman', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (15, 'Goblivion', 1, 2, '30 min', 1, '2021-04-10 15:29:36.78011', 'goblivion.png', 'https://boardgamegeek.com/boardgame/243538/goblivion', false, NULL, 12, 'Goblivion', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (27, 'Andor: Chada et Thorn', 2, 2, '45 min', 2, '2021-04-10 19:04:09.022687', 'andorct.png', 'https://www.trictrac.net/jeu-de-societe/andor-chada-thorn', false, 45, 14, 'Andor: Chada et Thorn', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (39, 'Disney Villainous', 2, 6, '50 min', 2, '2021-04-11 12:20:13.276224', 'pic4216110.jpg', 'https://boardgamegeek.com/boardgame/256382/disney-villainous', false, 50, 10, 'Disney Villainous', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (16, 'Marvel Champions Le jeu de cartes', 1, 4, '45 à 90 min', 2, '2021-04-10 15:41:50.663744', 'mctcc.jpg', 'https://boardgamegeek.com/boardgame/285774/marvel-champions-card-game', false, 90, 14, 'Marvel Champions Le jeu de cartes', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (42, 'Harry Potter Miniatures Adventure Game', 2, 6, '30 à 90 min', 2, '2021-04-11 12:27:51.989594', 'pic4403592.jpg', 'https://boardgamegeek.com/boardgame/246744/harry-potter-miniatures-adventure-game', false, 90, 12, 'Harry Potter Miniatures Adventure Game', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (7, 'Minivilles', 2, 4, '30 min', 1, '2021-04-07 15:45:19.506514', 'minivilles.png', 'https://boardgamegeek.com/boardgame/143884/machi-koro', false, 30, 7, 'Minivilles', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (48, 'L''ascenceur Infernal', 2, 6, '60 min', 2, '2021-04-11 15:51:26.106432', 'escape-game-l-ascenseur-infernal.jpg', '', false, 60, 14, 'L''ascenceur Infernal', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (24, 'Runewars', 2, 4, '180 à 240 min', 3, '2021-04-10 18:50:45.673069', 'runewars.jpg', 'https://boardgamegeek.com/boardgame/59294/runewars', false, 240, 14, 'Runewars', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (41, 'Ponzi Scheme', 3, 5, '90 min', 3, '2021-04-11 12:25:08.500815', 'pic5100985.jpg', 'https://boardgamegeek.com/boardgame/180899/ponzi-scheme', false, 90, 12, 'Ponzi Scheme', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (44, 'Monopoly: Star Wars Limited Collector''s Edition', 2, 8, '60 min', 1, '2021-04-11 15:37:57.401919', 'pic12726.jpg', 'https://boardgamegeek.com/boardgame/26696/monopoly-star-wars-limited-collectors-edition', false, 60, 8, 'Monopoly: Star Wars Limited Collector''s Edition', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (58, 'Trivial pursuit: Histoire de France', 2, 6, '30 à 60 min', 1, '2021-04-11 16:17:43.568435', '93aff744fcb9fb7a6e872948c6333dabc49f.jpeg', 'https://www.trictrac.net/jeu-de-societe/trivial-pursuit-histoire-de-france-0', false, 90, 15, 'Trivial pursuit: Histoire de France', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (46, 'Risk: La conquête du monde', 2, 6, '120 min', 1, '2021-04-11 15:44:56.783594', 'pic5244709.jpg', 'https://boardgamegeek.com/boardgame/181/risk', false, 120, 10, 'Risk: La conquête du monde', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (29, 'Dungeons & Dragons: Castle Ravenloft Board Game', 1, 5, '60 min', 2, '2021-04-10 19:14:55.407251', 'ddcr.jpg', 'https://boardgamegeek.com/boardgame/59946/dungeons-dragons-castle-ravenloft-board-game', false, 60, 12, 'Dungeons & Dragons: Castle Ravenloft Board Game', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (34, 'Neuroshima Hex!', 1, 4, '30 min', 2, '2021-04-11 12:04:36.403965', 'pic263013.jpg', 'https://boardgamegeek.com/boardgame/21241/neuroshima-hex-30', false, 30, 10, 'Neuroshima Hex!', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (20, 'Scythe', 1, 5, '90 à 115 min', 3, '2021-04-10 18:31:15.856768', 'scythe.jpg', 'https://boardgamegeek.com/boardgame/169786/scythe', false, 115, 14, 'Scythe', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (21, 'Dune', 3, 6, '180 min', 3, '2021-04-10 18:36:39.479649', 'dune.jpg', 'https://www.trictrac.net/jeu-de-societe/dune', false, 180, 14, 'Dune', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (35, 'Runebound', 2, 6, '120 à 240 min', 2, '2021-04-11 12:07:48.959813', 'pic178189.jpg', 'https://boardgamegeek.com/boardgame/21523/runebound-second-edition', false, 240, 12, 'Runebound', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (22, 'Méditerranée', 2, 4, '120 min', 2, '2021-04-10 18:42:23.128493', 'med.jpg', 'https://www.trictrac.net/jeu-de-societe/mediterranee', false, 120, 12, 'Méditerranée', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (49, 'Unlock!:mystery Adventures', 1, 6, '60 min', 2, '2021-04-11 15:55:21.973211', 'pic3588255.jpg', 'https://boardgamegeek.com/boardgame/228867/unlock-mystery-adventures', false, 60, 10, 'Unlock!:mystery Adventures', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (47, 'Destins', 2, 6, '60 min', 1, '2021-04-11 15:47:39.770367', 'pic710742.jpg', 'https://boardgamegeek.com/boardgame/2921/game-of-life', false, 60, 8, 'Destins', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (43, 'La bonne Paye', 2, 6, '30 min', 1, '2021-04-11 15:35:12.625281', '0b342fbc7eda5033f5a99fa650e512d73548.jpg', 'https://www.trictrac.net/jeu-de-societe/la-bonne-paye-les-bons-voyages', false, 30, 8, 'La bonne Paye', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (59, 'Trivial pursuit: Édition Famille', 2, 6, '30 à 60 min', 1, '2021-04-11 16:19:59.672838', '3ed7e5772be7882798dc5aab3e2f66337ff4.jpeg', 'https://www.trictrac.net/jeu-de-societe/trivial-pursuit-edition-famille', false, 60, 10, 'Trivial pursuit: Édition Famille', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (60, 'Code Names XXL', 2, 8, '15 min', 1, '2021-04-11 16:23:35.375668', '6a43f48ceaa4d9fafb0dbe7abe228c526ad77af8bf389d7fe9d79456f482.jpeg', 'https://www.trictrac.net/jeu-de-societe/codenames-xxl', false, 15, 12, 'Code Names XXL', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (45, 'La vallée des mammouths', 3, 6, '180 min', 1, '2021-04-11 15:41:18.226754', 'pic4032737.jpg', 'https://boardgamegeek.com/boardgame/2535/valley-mammoths', false, 180, 12, 'La vallée des mammouths', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (62, '[kosmopoli:t]', 4, 8, '6 min', 1, '2021-04-11 16:28:41.514166', 'bd8790fd9e266f4bd566499340d42987f40c6d0a2a54a2f7995d4065f69a.png', 'https://www.trictrac.net/jeu-de-societe/kosmopoli-t', false, 6, 10, '[kosmopoli:t]', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (26, 'Gloomhaven', 1, 4, '30 à 120 min', 3, '2021-04-10 18:59:46.118143', 'gloomhaven.jpg', 'https://boardgamegeek.com/boardgame/174430/gloomhaven', false, 120, 14, 'Gloomhaven', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (75, 'HARRY Potter Une année à Poudlard', 1, 8, '20 à 45 min', 1, '2021-04-13 16:04:42.763774', 'pic5074351.jpg', 'https://boardgamegeek.com/boardgame/263189/harry-potter-year-hogwarts', false, 45, 7, 'Harry Potter: A Year at Hogwarts', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (80, 'Harry Potter: Death Eaters Rising', 2, 4, '45 à 90 min', 1, '2021-04-13 16:20:14.978431', 'pic4812850.jpg', 'https://boardgamegeek.com/boardgame/283211/harry-potter-death-eaters-rising', false, 80, 11, 'Harry Potter: Death Eaters Rising', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (88, 'Sherlock Holmes Consulting Detective: Jack the Ripper & West End Adventures', 1, 8, '60 à 120 min', 1, '2021-05-10 15:15:34.830593', 'pic3238299.jpg', 'https://boardgamegeek.com/boardgame/204305/sherlock-holmes-consulting-detective-jack-ripper-w', false, 120, 10, 'Sherlock Holmes Consulting Detective: Jack the Ripper & West End Adventures', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (85, 'Mysterium', 2, 7, '42', 1, '2021-05-10 15:03:48.94707', 'pic2601683.jpg', 'https://boardgamegeek.com/boardgame/181304/mysterium', false, 42, 10, 'Mysterium', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (91, '6 Nimmt!', 2, 10, NULL, NULL, '2021-05-11 12:19:05.985883', NULL, 'https://www.boardgameatlas.com/game/gudsN2axFj/mayfair-games-6-nimmt', false, 45, 8, '6 Nimmt!', NULL, 1, 'https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254847938-61Aw2BygsiZL.jpg', 'https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254847938-61Aw2BygsiZL.jpg');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (63, 'Maître Renard', 2, 4, '20 min', 1, '2021-04-11 16:30:49.848823', 'e84bf5c68ad2925553a9987591d272bb4af8.jpeg', 'https://www.trictrac.net/jeu-de-societe/maitre-renard-0', false, 20, 7, 'Maître Renard', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (76, 'Wizards Wanted', 2, 4, '60 min', 1, '2021-04-13 16:07:06.094113', 'pic3329975.jpg', 'https://boardgamegeek.com/boardgame/217531/wizards-wanted', false, 60, 10, 'Wizards Wanted', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (31, 'Sentinel Tactics: The Flame Of Freedom', 2, 8, '30 à 60 min', 2, '2021-04-11 11:24:49.79594', 'sttfof.png', 'https://boardgamegeek.com/boardgame/146408/sentinel-tactics-flame-freedom', false, 60, 13, 'Sentinel Tactics: The Flame Of Freedom', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (67, 'Kingdomino', 2, 4, '15 min', 1, '2021-04-13 15:28:38.454816', 'pic3132685.png', 'https://boardgamegeek.com/boardgame/204583/kingdomino', false, 15, 8, 'Kingdomino', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (61, 'Carcassonne Star Wars', 2, 5, '35 min', 1, '2021-04-11 16:26:24.248494', '03ec686e45886a7d9a993697848c558f678e.png', 'https://www.trictrac.net/jeu-de-societe/carcassonne-star-wars-edition-3', false, 35, 7, 'Carcassonne Star Wars', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (78, 'Jamaica', 2, 6, '30 à 60 min', 1, '2021-04-13 16:13:39.253804', 'pic1502119.jpg', 'https://boardgamegeek.com/boardgame/28023/jamaica', false, 60, 8, 'Jamaica', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (28, 'warhammer quest: le jeu d''aventure', 1, 4, '30 à 60 min', 2, '2021-04-10 19:10:10.91279', 'wclja.jpg', 'https://boardgamegeek.com/boardgame/181521/warhammer-quest-adventure-card-game', false, 60, 14, 'warhammer quest: le jeu d''aventure', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (19, 'Warhammer 40000: L''Hérésie d''Horus', 2, 2, '135 min', 3, '2021-04-10 18:26:29.714322', 'w40khh.jpg', 'https://boardgamegeek.com/boardgame/63543/horus-heresy', false, 135, 14, 'Warhammer 40000: L''Hérésie d''Horus', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (57, 'Trivial pursuit: Passeport pour le monde', 2, 6, '60 à 90 min', 1, '2021-04-11 16:14:03.942937', 'pic64066.jpg', 'https://boardgamegeek.com/boardgame/15431/trivial-pursuit-globetrotter', false, 90, 12, 'Trivial pursuit: Passeport pour le monde', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (68, 'Las Vegas', 2, 5, '30 min', 1, '2021-04-13 15:33:33.06894', 'pic1261796.jpg', 'https://boardgamegeek.com/boardgame/117959/las-vegas', false, 30, 8, 'Las Vegas', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (70, 'Sagrada', 1, 4, '30 à 45 min', 1, '2021-04-13 15:47:20.926915', 'pic3525224.jpg', 'https://boardgamegeek.com/boardgame/199561/sagrada', false, 45, 14, 'Sagrada', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (71, 'Ivanhoë', 3, 6, '45 min', 1, '2021-04-13 15:49:54.221733', 'pic44101.jpg', 'https://boardgamegeek.com/boardgame/3389/castle-lords', false, 45, 7, 'Ivanhoë', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (72, 'King Of Tokyo', 2, 6, '30 min', 1, '2021-04-13 15:52:31.220764', 'pic3043734.jpg', 'https://boardgamegeek.com/boardgame/70323/king-tokyo', false, 30, 8, 'King Of Tokyo', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (81, 'Fantastic Beasts: Perilous pursuit', 2, 4, '45 à 60 min', 1, '2021-04-13 16:22:49.323512', 'pic4163373.jpg', 'https://boardgamegeek.com/boardgame/254193/fantastic-beasts-perilous-pursuit', false, 60, 8, 'Fantastic Beasts: Perilous pursuit', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (74, 'Cahoots', 1, 4, '20 min', 1, '2021-04-13 16:01:16.261044', 'pic3989425.jpg', 'https://boardgamegeek.com/boardgame/246761/cahoots', false, 20, 10, 'Cahoots', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (79, 'Harry Potter: House Cup Competition', 2, 4, '75', 1, '2021-04-13 16:17:13.365134', 'pic5254783.jpg', 'https://boardgamegeek.com/boardgame/303006/harry-potter-house-cup-competition', false, 75, 11, 'Harry Potter: House Cup Competition', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (69, 'Hover Kraft', 1, 8, '5 min', 1, '2021-04-13 15:44:38.092319', 'pic2310434.jpg', 'https://boardgamegeek.com/boardgame/169256/hoverkraft', false, 5, 8, 'Hover Kraft', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (77, 'Tokaido', 2, 5, '45 min', 1, '2021-04-13 16:10:23.052798', 'pic3747956.png', 'https://boardgamegeek.com/boardgame/123540/tokaido', false, 45, 8, 'Tokaido', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (51, 'Unlock!:exotic Adventures', 1, 6, '60 min', 2, '2021-04-11 16:00:55.949386', 'pic4511284.png', 'https://boardgamegeek.com/boardgame/254226/unlock-exotic-adventures', false, 60, 10, 'Unlock!:exotic Adventures', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (53, 'Échecs', 2, 2, '60 min', 2, '2021-04-11 16:06:04.588422', 'pic260745.jpg', 'https://boardgamegeek.com/boardgame/171/chess', false, 60, 6, 'Échecs', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (54, 'Master Mind', 2, 2, '20 min', 2, '2021-04-11 16:07:38.620323', 'pic4420154.png', 'https://boardgamegeek.com/boardgame/2392/mastermind', false, 20, 8, 'Master Mind', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (52, 'SCRABBLE ZigZag', 2, 4, '30 min', 1, '2021-04-11 16:04:05.35294', 'pic1861508.jpg', 'https://boardgamegeek.com/boardgame/151603/scrabble-twists-turns', false, 30, 10, 'SCRABBLE ZigZag', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (65, 'Kitchen Rush', 1, 4, '30 à 45 min', 1, '2021-04-13 15:23:48.173448', 'pic3559531.jpg', 'https://boardgamegeek.com/boardgame/223953/kitchen-rush', false, 45, 12, 'Kitchen Rush', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (66, 'Pix', 4, 9, '30 min', 1, '2021-04-13 15:25:53.306404', 'pic1558327.jpg', 'https://boardgamegeek.com/boardgame/67181/pix', false, 30, 8, 'Pix', NULL, 1, '', '');
INSERT INTO game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, english_name, buying_price, stock, external_image, thumb_image) VALUES (73, 'Loony Quest', 2, 5, '20 à 30 min', 1, '2021-04-13 15:56:10.05162', 'pic3043308.jpg', 'https://boardgamegeek.com/boardgame/136991/loony-quest', false, 30, 8, 'Loony Quest', NULL, 1, '', '');
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (7, 13);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (10, 14);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (11, 16);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (11, 17);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (13, 18);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (14, 19);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (15, 20);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (16, 21);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (16, 22);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (17, 24);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (17, 23);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (18, 25);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (19, 26);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (19, 27);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (20, 28);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (21, 29);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (21, 30);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (22, 31);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (23, 32);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (24, 35);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (25, 36);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (26, 37);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (26, 38);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (26, 39);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (27, 40);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (28, 41);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (29, 42);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (30, 42);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (31, 25);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (32, 43);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (33, 42);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (33, 44);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (33, 45);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (24, 42);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (34, 48);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (34, 49);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (34, 47);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (35, 42);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (35, 44);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (35, 50);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (36, 51);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (36, 52);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (36, 53);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (37, 54);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (38, 56);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (38, 57);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (38, 55);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (40, 58);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (41, 59);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (45, 60);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (48, 61);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (49, 64);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (49, 62);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (49, 63);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (50, 65);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (50, 66);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (50, 67);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (51, 64);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (51, 66);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (51, 67);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (51, 68);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (51, 69);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (60, 70);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (60, 71);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (62, 72);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (63, 73);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (64, 74);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (64, 75);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (65, 76);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (65, 77);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (67, 78);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (68, 80);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (68, 81);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (68, 79);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (70, 82);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (71, 83);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (72, 84);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (72, 85);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (72, 86);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (73, 58);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (73, 87);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (74, 88);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (74, 89);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (76, 90);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (77, 91);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (78, 87);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (79, 92);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (82, 93);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (83, 96);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (83, 95);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (84, 97);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (84, 98);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (84, 99);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (84, 100);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (84, 101);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (85, 104);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (85, 105);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (85, 102);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (85, 103);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (86, 106);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (86, 107);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (86, 108);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (87, 109);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (87, 110);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (87, 111);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (88, 66);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (88, 106);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (88, 112);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (88, 113);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (88, 114);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (91, 133);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (91, 134);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (91, 135);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (91, 136);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (91, 137);
INSERT INTO complete_illustrate (game_id, artist_id) VALUES  (91, 131);
INSERT INTO complete_design (game_id, designer_id) VALUES  (7, 6);
INSERT INTO complete_design (game_id, designer_id) VALUES  (10, 7);
INSERT INTO complete_design (game_id, designer_id) VALUES  (11, 7);
INSERT INTO complete_design (game_id, designer_id) VALUES  (13, 7);
INSERT INTO complete_design (game_id, designer_id) VALUES  (14, 7);
INSERT INTO complete_design (game_id, designer_id) VALUES  (14, 8);
INSERT INTO complete_design (game_id, designer_id) VALUES  (14, 9);
INSERT INTO complete_design (game_id, designer_id) VALUES  (14, 10);
INSERT INTO complete_design (game_id, designer_id) VALUES  (14, 11);
INSERT INTO complete_design (game_id, designer_id) VALUES  (15, 14);
INSERT INTO complete_design (game_id, designer_id) VALUES  (16, 16);
INSERT INTO complete_design (game_id, designer_id) VALUES  (16, 17);
INSERT INTO complete_design (game_id, designer_id) VALUES  (16, 15);
INSERT INTO complete_design (game_id, designer_id) VALUES  (17, 18);
INSERT INTO complete_design (game_id, designer_id) VALUES  (18, 19);
INSERT INTO complete_design (game_id, designer_id) VALUES  (18, 20);
INSERT INTO complete_design (game_id, designer_id) VALUES  (18, 21);
INSERT INTO complete_design (game_id, designer_id) VALUES  (19, 25);
INSERT INTO complete_design (game_id, designer_id) VALUES  (19, 26);
INSERT INTO complete_design (game_id, designer_id) VALUES  (20, 27);
INSERT INTO complete_design (game_id, designer_id) VALUES  (21, 28);
INSERT INTO complete_design (game_id, designer_id) VALUES  (22, 29);
INSERT INTO complete_design (game_id, designer_id) VALUES  (23, 32);
INSERT INTO complete_design (game_id, designer_id) VALUES  (23, 30);
INSERT INTO complete_design (game_id, designer_id) VALUES  (23, 31);
INSERT INTO complete_design (game_id, designer_id) VALUES  (24, 33);
INSERT INTO complete_design (game_id, designer_id) VALUES  (25, 34);
INSERT INTO complete_design (game_id, designer_id) VALUES  (26, 35);
INSERT INTO complete_design (game_id, designer_id) VALUES  (27, 36);
INSERT INTO complete_design (game_id, designer_id) VALUES  (28, 37);
INSERT INTO complete_design (game_id, designer_id) VALUES  (28, 38);
INSERT INTO complete_design (game_id, designer_id) VALUES  (28, 39);
INSERT INTO complete_design (game_id, designer_id) VALUES  (29, 40);
INSERT INTO complete_design (game_id, designer_id) VALUES  (29, 41);
INSERT INTO complete_design (game_id, designer_id) VALUES  (29, 42);
INSERT INTO complete_design (game_id, designer_id) VALUES  (30, 40);
INSERT INTO complete_design (game_id, designer_id) VALUES  (30, 42);
INSERT INTO complete_design (game_id, designer_id) VALUES  (31, 43);
INSERT INTO complete_design (game_id, designer_id) VALUES  (31, 19);
INSERT INTO complete_design (game_id, designer_id) VALUES  (31, 44);
INSERT INTO complete_design (game_id, designer_id) VALUES  (32, 45);
INSERT INTO complete_design (game_id, designer_id) VALUES  (33, 46);
INSERT INTO complete_design (game_id, designer_id) VALUES  (34, 48);
INSERT INTO complete_design (game_id, designer_id) VALUES  (35, 49);
INSERT INTO complete_design (game_id, designer_id) VALUES  (35, 50);
INSERT INTO complete_design (game_id, designer_id) VALUES  (36, 25);
INSERT INTO complete_design (game_id, designer_id) VALUES  (36, 51);
INSERT INTO complete_design (game_id, designer_id) VALUES  (37, 52);
INSERT INTO complete_design (game_id, designer_id) VALUES  (37, 53);
INSERT INTO complete_design (game_id, designer_id) VALUES  (38, 54);
INSERT INTO complete_design (game_id, designer_id) VALUES  (39, 55);
INSERT INTO complete_design (game_id, designer_id) VALUES  (40, 56);
INSERT INTO complete_design (game_id, designer_id) VALUES  (41, 57);
INSERT INTO complete_design (game_id, designer_id) VALUES  (42, 58);
INSERT INTO complete_design (game_id, designer_id) VALUES  (42, 59);
INSERT INTO complete_design (game_id, designer_id) VALUES  (43, 60);
INSERT INTO complete_design (game_id, designer_id) VALUES  (45, 61);
INSERT INTO complete_design (game_id, designer_id) VALUES  (46, 62);
INSERT INTO complete_design (game_id, designer_id) VALUES  (46, 63);
INSERT INTO complete_design (game_id, designer_id) VALUES  (47, 64);
INSERT INTO complete_design (game_id, designer_id) VALUES  (47, 65);
INSERT INTO complete_design (game_id, designer_id) VALUES  (48, 66);
INSERT INTO complete_design (game_id, designer_id) VALUES  (49, 67);
INSERT INTO complete_design (game_id, designer_id) VALUES  (49, 68);
INSERT INTO complete_design (game_id, designer_id) VALUES  (49, 69);
INSERT INTO complete_design (game_id, designer_id) VALUES  (49, 70);
INSERT INTO complete_design (game_id, designer_id) VALUES  (50, 72);
INSERT INTO complete_design (game_id, designer_id) VALUES  (50, 73);
INSERT INTO complete_design (game_id, designer_id) VALUES  (50, 71);
INSERT INTO complete_design (game_id, designer_id) VALUES  (51, 74);
INSERT INTO complete_design (game_id, designer_id) VALUES  (52, 75);
INSERT INTO complete_design (game_id, designer_id) VALUES  (54, 76);
INSERT INTO complete_design (game_id, designer_id) VALUES  (58, 77);
INSERT INTO complete_design (game_id, designer_id) VALUES  (58, 78);
INSERT INTO complete_design (game_id, designer_id) VALUES  (59, 77);
INSERT INTO complete_design (game_id, designer_id) VALUES  (59, 78);
INSERT INTO complete_design (game_id, designer_id) VALUES  (60, 79);
INSERT INTO complete_design (game_id, designer_id) VALUES  (61, 80);
INSERT INTO complete_design (game_id, designer_id) VALUES  (62, 81);
INSERT INTO complete_design (game_id, designer_id) VALUES  (62, 82);
INSERT INTO complete_design (game_id, designer_id) VALUES  (63, 83);
INSERT INTO complete_design (game_id, designer_id) VALUES  (64, 84);
INSERT INTO complete_design (game_id, designer_id) VALUES  (65, 85);
INSERT INTO complete_design (game_id, designer_id) VALUES  (65, 86);
INSERT INTO complete_design (game_id, designer_id) VALUES  (66, 88);
INSERT INTO complete_design (game_id, designer_id) VALUES  (66, 87);
INSERT INTO complete_design (game_id, designer_id) VALUES  (67, 52);
INSERT INTO complete_design (game_id, designer_id) VALUES  (68, 89);
INSERT INTO complete_design (game_id, designer_id) VALUES  (70, 90);
INSERT INTO complete_design (game_id, designer_id) VALUES  (70, 91);
INSERT INTO complete_design (game_id, designer_id) VALUES  (71, 92);
INSERT INTO complete_design (game_id, designer_id) VALUES  (72, 93);
INSERT INTO complete_design (game_id, designer_id) VALUES  (73, 88);
INSERT INTO complete_design (game_id, designer_id) VALUES  (73, 87);
INSERT INTO complete_design (game_id, designer_id) VALUES  (74, 94);
INSERT INTO complete_design (game_id, designer_id) VALUES  (75, 95);
INSERT INTO complete_design (game_id, designer_id) VALUES  (76, 96);
INSERT INTO complete_design (game_id, designer_id) VALUES  (77, 53);
INSERT INTO complete_design (game_id, designer_id) VALUES  (78, 97);
INSERT INTO complete_design (game_id, designer_id) VALUES  (78, 52);
INSERT INTO complete_design (game_id, designer_id) VALUES  (78, 69);
INSERT INTO complete_design (game_id, designer_id) VALUES  (79, 98);
INSERT INTO complete_design (game_id, designer_id) VALUES  (79, 99);
INSERT INTO complete_design (game_id, designer_id) VALUES  (80, 100);
INSERT INTO complete_design (game_id, designer_id) VALUES  (80, 101);
INSERT INTO complete_design (game_id, designer_id) VALUES  (81, 98);
INSERT INTO complete_design (game_id, designer_id) VALUES  (82, 98);
INSERT INTO complete_design (game_id, designer_id) VALUES  (82, 100);
INSERT INTO complete_design (game_id, designer_id) VALUES  (83, 102);
INSERT INTO complete_design (game_id, designer_id) VALUES  (84, 84);
INSERT INTO complete_design (game_id, designer_id) VALUES  (84, 103);
INSERT INTO complete_design (game_id, designer_id) VALUES  (85, 104);
INSERT INTO complete_design (game_id, designer_id) VALUES  (85, 105);
INSERT INTO complete_design (game_id, designer_id) VALUES  (86, 106);
INSERT INTO complete_design (game_id, designer_id) VALUES  (86, 107);
INSERT INTO complete_design (game_id, designer_id) VALUES  (87, 108);
INSERT INTO complete_design (game_id, designer_id) VALUES  (87, 109);
INSERT INTO complete_design (game_id, designer_id) VALUES  (87, 110);
INSERT INTO complete_design (game_id, designer_id) VALUES  (88, 112);
INSERT INTO complete_design (game_id, designer_id) VALUES  (88, 113);
INSERT INTO complete_design (game_id, designer_id) VALUES  (88, 111);
INSERT INTO complete_design (game_id, designer_id) VALUES  (91, 117);
INSERT INTO complete_characterize (game_id, language_id) VALUES  (82, 2);
INSERT INTO work (game_id, mechanism_id) VALUES  (7, 21);
INSERT INTO work (game_id, mechanism_id) VALUES  (37, 21);
INSERT INTO work (game_id, mechanism_id) VALUES  (61, 21);
INSERT INTO work (game_id, mechanism_id) VALUES  (67, 21);
INSERT INTO work (game_id, mechanism_id) VALUES  (69, 21);
INSERT INTO work (game_id, mechanism_id) VALUES  (7, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (11, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (14, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (21, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (22, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (24, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (38, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (40, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (41, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (43, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (44, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (47, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (65, 22);
INSERT INTO work (game_id, mechanism_id) VALUES  (10, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (11, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (13, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (14, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (26, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (28, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (29, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (30, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (32, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (33, 23);
INSERT INTO work (game_id, mechanism_id) VALUES  (10, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (11, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (13, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (14, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (26, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (27, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (30, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (31, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (32, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (33, 24);
INSERT INTO work (game_id, mechanism_id) VALUES  (10, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (11, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (13, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (14, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (26, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (27, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (28, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (29, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (30, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (32, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (33, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (35, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (36, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (75, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (76, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (77, 25);
INSERT INTO work (game_id, mechanism_id) VALUES  (11, 26);
INSERT INTO work (game_id, mechanism_id) VALUES  (13, 26);
INSERT INTO work (game_id, mechanism_id) VALUES  (14, 26);
INSERT INTO work (game_id, mechanism_id) VALUES  (15, 26);
INSERT INTO work (game_id, mechanism_id) VALUES  (17, 26);
INSERT INTO work (game_id, mechanism_id) VALUES  (26, 26);
INSERT INTO work (game_id, mechanism_id) VALUES  (15, 27);
INSERT INTO work (game_id, mechanism_id) VALUES  (16, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (14, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (13, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (11, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (10, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (18, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (19, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (20, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (21, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (28, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (29, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (30, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (31, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (32, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (33, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (34, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (35, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (36, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (39, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (42, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (22, 29);
INSERT INTO work (game_id, mechanism_id) VALUES  (48, 30);
INSERT INTO work (game_id, mechanism_id) VALUES  (49, 30);
INSERT INTO work (game_id, mechanism_id) VALUES  (50, 30);
INSERT INTO work (game_id, mechanism_id) VALUES  (51, 30);
INSERT INTO work (game_id, mechanism_id) VALUES  (52, 31);
INSERT INTO work (game_id, mechanism_id) VALUES  (53, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (54, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (52, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (47, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (46, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (43, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (44, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (55, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (56, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (57, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (58, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (59, 32);
INSERT INTO work (game_id, mechanism_id) VALUES  (57, 33);
INSERT INTO work (game_id, mechanism_id) VALUES  (58, 33);
INSERT INTO work (game_id, mechanism_id) VALUES  (59, 33);
INSERT INTO work (game_id, mechanism_id) VALUES  (60, 34);
INSERT INTO work (game_id, mechanism_id) VALUES  (65, 35);
INSERT INTO work (game_id, mechanism_id) VALUES  (66, 36);
INSERT INTO work (game_id, mechanism_id) VALUES  (73, 36);
INSERT INTO work (game_id, mechanism_id) VALUES  (67, 37);
INSERT INTO work (game_id, mechanism_id) VALUES  (61, 37);
INSERT INTO work (game_id, mechanism_id) VALUES  (78, 38);
INSERT INTO work (game_id, mechanism_id) VALUES  (79, 39);
INSERT INTO work (game_id, mechanism_id) VALUES  (38, 39);
INSERT INTO work (game_id, mechanism_id) VALUES  (82, 26);
INSERT INTO work (game_id, mechanism_id) VALUES  (82, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (83, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (83, 37);
INSERT INTO work (game_id, mechanism_id) VALUES  (84, 28);
INSERT INTO work (game_id, mechanism_id) VALUES  (85, 34);
INSERT INTO work (game_id, mechanism_id) VALUES  (86, 34);
INSERT INTO work (game_id, mechanism_id) VALUES  (87, 34);
INSERT INTO work (game_id, mechanism_id) VALUES  (88, 34);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (7, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (10, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (10, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (11, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (11, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (13, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (13, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (14, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (14, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (15, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (15, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (16, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (16, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (17, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (17, 2);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (18, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (19, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (20, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (20, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (21, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (22, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (23, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (24, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (25, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (26, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (26, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (27, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (28, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (29, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (30, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (33, 5);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (32, 5);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (31, 5);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (34, 1);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (34, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (35, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (36, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (37, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (38, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (39, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (40, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (41, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (42, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (42, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (43, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (44, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (45, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (46, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (47, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (48, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (49, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (50, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (51, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (52, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (53, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (54, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (55, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (56, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (57, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (58, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (59, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (60, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (61, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (62, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (63, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (64, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (65, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (66, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (67, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (68, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (69, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (70, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (71, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (72, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (73, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (74, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (75, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (75, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (76, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (77, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (78, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (79, 4);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (80, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (81, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (82, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (83, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (84, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (85, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (86, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (87, 3);
INSERT INTO complete_categorize (game_id, playingmode_id) VALUES  (88, 3);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (7, 1);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (7, 5);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (10, 6);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (10, 7);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (11, 6);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (11, 7);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (13, 6);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (14, 6);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (15, 8);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (15, 9);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (15, 10);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (16, 11);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (16, 12);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (16, 13);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (17, 14);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (18, 15);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (19, 11);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (19, 12);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (20, 16);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (20, 17);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (21, 18);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (22, 18);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (23, 19);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (24, 11);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (24, 12);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (25, 20);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (27, 2);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (27, 21);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (28, 11);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (28, 12);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (29, 22);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (30, 22);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (31, 15);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (32, 23);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (33, 11);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (33, 12);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (34, 2);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (35, 11);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (35, 12);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (36, 11);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (37, 24);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (38, 25);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (39, 26);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (40, 27);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (40, 28);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (41, 29);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (42, 30);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (43, 31);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (44, 31);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (45, 18);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (46, 31);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (47, 32);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (48, 33);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (49, 34);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (50, 34);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (51, 34);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (52, 35);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (57, 31);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (58, 36);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (59, 31);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (60, 2);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (61, 37);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (62, 38);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (63, 39);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (64, 40);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (65, 41);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (66, 1);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (67, 42);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (68, 43);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (69, 44);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (70, 17);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (70, 45);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (71, 46);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (72, 2);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (73, 27);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (74, 47);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (75, 48);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (76, 35);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (77, 49);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (78, 50);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (79, 51);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (80, 51);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (81, 51);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (82, 51);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (83, 52);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (84, 53);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (85, 27);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (86, 34);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (87, 54);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (88, 1);
INSERT INTO complete_publish (game_id, publisher_id) VALUES  (91, 56);
INSERT INTO define (game_id, tag_id) VALUES  (53, 35);
INSERT INTO define (game_id, tag_id) VALUES  (54, 35);
INSERT INTO define (game_id, tag_id) VALUES  (52, 35);
INSERT INTO define (game_id, tag_id) VALUES  (47, 35);
INSERT INTO define (game_id, tag_id) VALUES  (46, 35);
INSERT INTO define (game_id, tag_id) VALUES  (43, 35);
INSERT INTO define (game_id, tag_id) VALUES  (44, 35);
INSERT INTO define (game_id, tag_id) VALUES  (55, 35);
INSERT INTO define (game_id, tag_id) VALUES  (56, 35);
INSERT INTO define (game_id, tag_id) VALUES  (57, 35);
INSERT INTO define (game_id, tag_id) VALUES  (58, 35);
INSERT INTO define (game_id, tag_id) VALUES  (59, 35);
INSERT INTO typify (game_id, topic_id) VALUES  (27, 1);
INSERT INTO typify (game_id, topic_id) VALUES  (68, 2);
INSERT INTO typify (game_id, topic_id) VALUES  (20, 3);
INSERT INTO typify (game_id, topic_id) VALUES  (39, 4);
INSERT INTO typify (game_id, topic_id) VALUES  (29, 5);
INSERT INTO typify (game_id, topic_id) VALUES  (30, 5);
INSERT INTO typify (game_id, topic_id) VALUES  (21, 6);
INSERT INTO typify (game_id, topic_id) VALUES  (46, 7);
INSERT INTO typify (game_id, topic_id) VALUES  (41, 8);
INSERT INTO typify (game_id, topic_id) VALUES  (19, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (20, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (21, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (23, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (24, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (25, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (34, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (46, 9);
INSERT INTO typify (game_id, topic_id) VALUES  (60, 10);
INSERT INTO typify (game_id, topic_id) VALUES  (42, 11);
INSERT INTO typify (game_id, topic_id) VALUES  (75, 11);
INSERT INTO typify (game_id, topic_id) VALUES  (80, 11);
INSERT INTO typify (game_id, topic_id) VALUES  (79, 11);
INSERT INTO typify (game_id, topic_id) VALUES  (81, 11);
INSERT INTO typify (game_id, topic_id) VALUES  (22, 12);
INSERT INTO typify (game_id, topic_id) VALUES  (37, 12);
INSERT INTO typify (game_id, topic_id) VALUES  (58, 12);
INSERT INTO typify (game_id, topic_id) VALUES  (70, 12);
INSERT INTO typify (game_id, topic_id) VALUES  (71, 12);
INSERT INTO typify (game_id, topic_id) VALUES  (77, 13);
INSERT INTO typify (game_id, topic_id) VALUES  (38, 14);
INSERT INTO typify (game_id, topic_id) VALUES  (16, 15);
INSERT INTO typify (game_id, topic_id) VALUES  (17, 15);
INSERT INTO typify (game_id, topic_id) VALUES  (28, 16);
INSERT INTO typify (game_id, topic_id) VALUES  (19, 17);
INSERT INTO typify (game_id, topic_id) VALUES  (77, 18);
INSERT INTO typify (game_id, topic_id) VALUES  (16, 19);
INSERT INTO typify (game_id, topic_id) VALUES  (17, 19);
INSERT INTO typify (game_id, topic_id) VALUES  (18, 19);
INSERT INTO typify (game_id, topic_id) VALUES  (31, 19);
INSERT INTO typify (game_id, topic_id) VALUES  (61, 20);
INSERT INTO typify (game_id, topic_id) VALUES  (76, 21);
INSERT INTO typify (game_id, topic_id) VALUES  (81, 21);
INSERT INTO typify (game_id, topic_id) VALUES  (42, 21);
INSERT INTO typify (game_id, topic_id) VALUES  (75, 21);
INSERT INTO typify (game_id, topic_id) VALUES  (80, 21);
INSERT INTO typify (game_id, topic_id) VALUES  (79, 21);
INSERT INTO typify (game_id, topic_id) VALUES  (35, 22);
INSERT INTO typify (game_id, topic_id) VALUES  (33, 22);
INSERT INTO typify (game_id, topic_id) VALUES  (24, 22);
INSERT INTO typify (game_id, topic_id) VALUES  (19, 23);
INSERT INTO typify (game_id, topic_id) VALUES  (21, 23);
INSERT INTO typify (game_id, topic_id) VALUES  (62, 24);
INSERT INTO typify (game_id, topic_id) VALUES  (65, 24);
INSERT INTO typify (game_id, topic_id) VALUES  (45, 25);
INSERT INTO typify (game_id, topic_id) VALUES  (40, 26);
INSERT INTO typify (game_id, topic_id) VALUES  (34, 26);
INSERT INTO typify (game_id, topic_id) VALUES  (78, 27);
INSERT INTO typify (game_id, topic_id) VALUES  (10, 27);
INSERT INTO typify (game_id, topic_id) VALUES  (14, 28);
INSERT INTO typify (game_id, topic_id) VALUES  (13, 28);
INSERT INTO typify (game_id, topic_id) VALUES  (11, 28);
INSERT INTO typify (game_id, topic_id) VALUES  (10, 28);
INSERT INTO typify (game_id, topic_id) VALUES  (20, 30);
INSERT INTO typify (game_id, topic_id) VALUES  (10, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (11, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (13, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (14, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (15, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (23, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (24, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (25, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (26, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (27, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (28, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (29, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (30, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (32, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (33, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (35, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (36, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (39, 31);
INSERT INTO typify (game_id, topic_id) VALUES  (82, 11);
INSERT INTO typify (game_id, topic_id) VALUES  (82, 21);
INSERT INTO typify (game_id, topic_id) VALUES  (83, 33);
INSERT INTO typify (game_id, topic_id) VALUES  (84, 34);
INSERT INTO typify (game_id, topic_id) VALUES  (85, 35);
INSERT INTO typify (game_id, topic_id) VALUES  (86, 36);
INSERT INTO typify (game_id, topic_id) VALUES  (87, 37);
INSERT INTO typify (game_id, topic_id) VALUES  (88, 37);
INSERT INTO languages (id, name) VALUES (1, 'Français');
INSERT INTO languages (id, name) VALUES (2, 'Anglais');
INSERT INTO mechanism (id, name) VALUES (21, 'Construction');
INSERT INTO mechanism (id, name) VALUES (22, 'Gestion de ressource');
INSERT INTO mechanism (id, name) VALUES (23, 'Exploration de donjon');
INSERT INTO mechanism (id, name) VALUES (24, 'Jeu à campagne');
INSERT INTO mechanism (id, name) VALUES (25, 'Jeu de rôle');
INSERT INTO mechanism (id, name) VALUES (26, 'Deck-building');
INSERT INTO mechanism (id, name) VALUES (27, 'Tower-defense');
INSERT INTO mechanism (id, name) VALUES (28, 'Joueur Asynchrone');
INSERT INTO mechanism (id, name) VALUES (29, 'Commerce');
INSERT INTO mechanism (id, name) VALUES (30, 'Escape Games');
INSERT INTO mechanism (id, name) VALUES (31, 'Jeu de lettres');
INSERT INTO mechanism (id, name) VALUES (32, 'Classique');
INSERT INTO mechanism (id, name) VALUES (33, 'Quizz');
INSERT INTO mechanism (id, name) VALUES (34, 'Indice');
INSERT INTO mechanism (id, name) VALUES (35, 'Frénétique');
INSERT INTO mechanism (id, name) VALUES (36, 'Dessin');
INSERT INTO mechanism (id, name) VALUES (37, 'Pose de tuile');
INSERT INTO mechanism (id, name) VALUES (38, 'Course');
INSERT INTO mechanism (id, name) VALUES (39, 'Pose d''Ouvrier');
INSERT INTO multiaddon (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (2, 'Pathfinder adventure card game: class deck - witch', 1, 4, '90 min', '2021-04-09 18:01:06.182455', 'pfacgcdw.jpg', 'https://boardgamegeek.com/boardgameexpansion/193385/pathfinder-adventure-card-game-class-deck-witch', 2, 14, 'Pathfinder adventure card game: class deck - witch', NULL, 1, '', '', NULL);
INSERT INTO multiaddon (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) VALUES (1, 'Pathfinder le jeu de cartes:boites des decks de classe', 1, 4, '90 min', '2021-04-08 16:21:23.494914', 'pf_ljdc_bdc.jpg', 'https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-boite-de-decks-de-classe', 2, NULL, 'Pathfinder le jeu de cartes:boites des decks de classe', NULL, 1, '', '', NULL);
INSERT INTO be_illustrate (multiaddon_id, artist_id) VALUES  (1, 15);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (1, 7);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (2, 7);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (2, 8);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (2, 9);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (2, 10);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (2, 11);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (2, 12);
INSERT INTO be_design (multiaddon_id, designer_id) VALUES  (2, 13);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (1, 10);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (1, 11);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (2, 10);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (2, 11);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (2, 13);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (2, 14);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (1, 13);
INSERT INTO link  (multiaddon_id, game_id) VALUES  (1, 14);
INSERT INTO be_categorize (multiaddon_id, playingmode_id) VALUES  (1, 1);
INSERT INTO be_categorize (multiaddon_id, playingmode_id) VALUES  (1, 3);
INSERT INTO be_categorize (multiaddon_id, playingmode_id) VALUES  (2, 1);
INSERT INTO be_categorize (multiaddon_id, playingmode_id) VALUES  (2, 3);
INSERT INTO be_publish (multiaddon_id, publisher_id) VALUES  (1, 6);
INSERT INTO be_publish (multiaddon_id, publisher_id) VALUES  (1, 7);
INSERT INTO be_publish (multiaddon_id, publisher_id) VALUES  (2, 6);
INSERT INTO playingmode (id, name) VALUES (1, 'Individuel');
INSERT INTO playingmode (id, name) VALUES (2, 'Associatif');
INSERT INTO playingmode (id, name) VALUES (3, 'Coopératif');
INSERT INTO playingmode (id, name) VALUES (4, 'Compétitif');
INSERT INTO playingmode (id, name) VALUES (5, 'Semi-coopératif');
INSERT INTO publisher (id, name) VALUES (1, 'Asmodée');
INSERT INTO publisher (id, name) VALUES (2, 'iello');
INSERT INTO publisher (id, name) VALUES (3, 'Azao Games');
INSERT INTO publisher (id, name) VALUES (4, 'White Wizard Games');
INSERT INTO publisher (id, name) VALUES (5, 'MGA');
INSERT INTO publisher (id, name) VALUES (6, 'Paizo');
INSERT INTO publisher (id, name) VALUES (7, 'Black Book');
INSERT INTO publisher (id, name) VALUES (8, 'Goblivion Games');
INSERT INTO publisher (id, name) VALUES (9, 'Paille Editions');
INSERT INTO publisher (id, name) VALUES (10, 'Ôz Edition');
INSERT INTO publisher (id, name) VALUES (11, 'Fantasy Flight Game');
INSERT INTO publisher (id, name) VALUES (12, 'Edge');
INSERT INTO publisher (id, name) VALUES (13, 'Living Card Game');
INSERT INTO publisher (id, name) VALUES (14, 'Upper Deck Entertainment');
INSERT INTO publisher (id, name) VALUES (15, 'Greater Than Games');
INSERT INTO publisher (id, name) VALUES (16, 'Stonemaier Games');
INSERT INTO publisher (id, name) VALUES (17, 'Matagot');
INSERT INTO publisher (id, name) VALUES (18, 'Descartes Éditeur');
INSERT INTO publisher (id, name) VALUES (19, 'Plaid Hat Games');
INSERT INTO publisher (id, name) VALUES (20, 'Oriflam');
INSERT INTO publisher (id, name) VALUES (21, 'kosmos');
INSERT INTO publisher (id, name) VALUES (22, 'Wizards Of The Coast');
INSERT INTO publisher (id, name) VALUES (23, 'The Red Joker');
INSERT INTO publisher (id, name) VALUES (24, 'Repos Production');
INSERT INTO publisher (id, name) VALUES (25, 'CMON Limited');
INSERT INTO publisher (id, name) VALUES (26, 'Ravensburger');
INSERT INTO publisher (id, name) VALUES (27, 'Libellud');
INSERT INTO publisher (id, name) VALUES (28, 'Pearl Games');
INSERT INTO publisher (id, name) VALUES (29, '2Tomatoes Games');
INSERT INTO publisher (id, name) VALUES (30, 'Knight Models');
INSERT INTO publisher (id, name) VALUES (31, 'Parker');
INSERT INTO publisher (id, name) VALUES (32, 'MB');
INSERT INTO publisher (id, name) VALUES (33, 'Hachette');
INSERT INTO publisher (id, name) VALUES (34, 'Space Cowboys');
INSERT INTO publisher (id, name) VALUES (35, 'Mattel');
INSERT INTO publisher (id, name) VALUES (36, 'Hasbro');
INSERT INTO publisher (id, name) VALUES (37, 'filosofia');
INSERT INTO publisher (id, name) VALUES (38, 'Jeux Opla');
INSERT INTO publisher (id, name) VALUES (39, 'Superlude');
INSERT INTO publisher (id, name) VALUES (40, 'Cocktail Games');
INSERT INTO publisher (id, name) VALUES (41, 'Artipia Games');
INSERT INTO publisher (id, name) VALUES (42, 'Blue Orange');
INSERT INTO publisher (id, name) VALUES (43, 'Oya');
INSERT INTO publisher (id, name) VALUES (44, 'ThinkGeek.com');
INSERT INTO publisher (id, name) VALUES (45, 'Flood Gate Games');
INSERT INTO publisher (id, name) VALUES (46, 'Clash of Arms Games');
INSERT INTO publisher (id, name) VALUES (47, 'Gamewright');
INSERT INTO publisher (id, name) VALUES (48, 'Topi Games');
INSERT INTO publisher (id, name) VALUES (49, 'Funforge');
INSERT INTO publisher (id, name) VALUES (50, 'Game Works SARL');
INSERT INTO publisher (id, name) VALUES (51, 'The Op');
INSERT INTO publisher (id, name) VALUES (52, 'Inside the Box Board Games LLP (ITB)');
INSERT INTO publisher (id, name) VALUES (53, 'Z-Man Games');
INSERT INTO publisher (id, name) VALUES (54, 'Portal Games');
INSERT INTO publisher (id, name) VALUES (55, 'KOSMOS');
INSERT INTO publisher (id, name) VALUES (56, 'Mayfair Games');
INSERT INTO publisher (id, name) VALUES (57, 'Catan Studio');
INSERT INTO tag (id, name) VALUES (35, 'Classique');
INSERT INTO theme (id, background_image, name, advanced_search_button_text, advanced_search_title, color_2nd, color_3rd, color_4th, color_main, image_404, image_500, index_text, index_title, list_all_title, text_404, text_500, title_404, title_500, font_link, font_name, empty_query_text, query_name, empty_query_image, color_back) VALUES (1, 'back_pathfinder.jpg', 'Pathfinder', 'Lancer la divination', 'Notre boule de cristal est à votre service', '#D8AC9C', '#EAC8AF', '#1B2021', '#5F939A', 'pathfinder_404.jpg', 'pathfinder_500.jpg', 'Vos derniers trésors:', 'Bienvenue!', 'La salle des Trésors', 'Tentez une autre quête', 'Seule votre persévérance permettra l''accomplissement de votre tâche', 'Il n''y a rien ici', 'Un évènement mystérieux a interrompu le déroulement de votre quête', 'https://fonts.googleapis.com/css2?family=MedievalSharp&display=swap', 'MedievalSharp, cursive', 'Ce trésor est bien vide...', 'la quête', 'pathfinder_empty_request.jpg', '#5F939A');
INSERT INTO theme (id, background_image, name, advanced_search_button_text, advanced_search_title, color_2nd, color_3rd, color_4th, color_main, image_404, image_500, index_text, index_title, list_all_title, text_404, text_500, title_404, title_500, font_link, font_name, empty_query_text, query_name, empty_query_image, color_back) VALUES (2, 'marvel_background.jpg', 'Marvel', 'Utiliser vos super-sens', 'Le crime ne dort jamais, que recherchez vous?', '#51C4D3', '#126E82', '#132C33', '#D8E3E7', 'marvel_404.jpg', 'marvel_500.jpg', 'Voici nos dernières découvertes:', 'Welcome Avenger!', 'L''arsenal', 'Retourner chasser le crime ailleurs.', 'Attendez un moment pendant que nous le réparons.', 'Personne ici', 'Le cérébro à un problème', 'https://fonts.googleapis.com/css2?family=Karantina:wght@300&display=swap', 'Karantina,cursive', 'Cette ville est bien vide...', 'la patrouille', 'marvel_empty_street.jpg', '#D8E3E7');
INSERT INTO topic (id, name) VALUES (1, 'Andor');
INSERT INTO topic (id, name) VALUES (2, 'Casino');
INSERT INTO topic (id, name) VALUES (3, 'Diesel Punk');
INSERT INTO topic (id, name) VALUES (4, 'Disney');
INSERT INTO topic (id, name) VALUES (5, 'Donjons et Dragons');
INSERT INTO topic (id, name) VALUES (6, 'Dune');
INSERT INTO topic (id, name) VALUES (7, 'Époque Napoléonienne');
INSERT INTO topic (id, name) VALUES (8, 'Finance');
INSERT INTO topic (id, name) VALUES (9, 'Guerre');
INSERT INTO topic (id, name) VALUES (10, 'Espion');
INSERT INTO topic (id, name) VALUES (11, 'Harry Potter');
INSERT INTO topic (id, name) VALUES (12, 'Historique');
INSERT INTO topic (id, name) VALUES (13, 'Japon');
INSERT INTO topic (id, name) VALUES (14, 'Mafia');
INSERT INTO topic (id, name) VALUES (15, 'Marvel');
INSERT INTO topic (id, name) VALUES (16, 'Warhammer fantasy');
INSERT INTO topic (id, name) VALUES (17, 'Warhammer 40000');
INSERT INTO topic (id, name) VALUES (18, 'Voyage');
INSERT INTO topic (id, name) VALUES (19, 'Super Héros');
INSERT INTO topic (id, name) VALUES (20, 'Star Wars');
INSERT INTO topic (id, name) VALUES (21, 'Sorcier');
INSERT INTO topic (id, name) VALUES (22, 'Runebound');
INSERT INTO topic (id, name) VALUES (23, 'Science Fiction');
INSERT INTO topic (id, name) VALUES (24, 'Restaurant');
INSERT INTO topic (id, name) VALUES (25, 'Prehistoire');
INSERT INTO topic (id, name) VALUES (26, 'Post Apocalyptic');
INSERT INTO topic (id, name) VALUES (27, 'Pirate');
INSERT INTO topic (id, name) VALUES (28, 'Pathfinder');
INSERT INTO topic (id, name) VALUES (30, 'Mech Warfare');
INSERT INTO topic (id, name) VALUES (31, 'Médieval Fantastique');
INSERT INTO topic (id, name) VALUES (33, 'Spéléologie');
INSERT INTO topic (id, name) VALUES (34, 'Cthulhu');
INSERT INTO topic (id, name) VALUES (35, 'Fantôme');
INSERT INTO topic (id, name) VALUES (36, 'Police Temporelle');
INSERT INTO topic (id, name) VALUES (37, 'Enquête');