toc.dat                                                                                             0000600 0004000 0002000 00000414777 14034054434 0014464 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       '    '        	        y        	   fil_rouge    13.2    13.2 s   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    22314 	   fil_rouge    DATABASE     e   CREATE DATABASE fil_rouge WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE fil_rouge;
                postgres    false         �            1259    22346 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         �            1259    22344    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    205         �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    204         �            1259    22356    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         �            1259    22354    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    207         �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    206         �            1259    22338    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         �            1259    22336    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    203         �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    202         �            1259    22364 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false         �            1259    22374    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false         �            1259    22372    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    211         �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210         �            1259    22362    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    209         �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    208         �            1259    22382    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false         �            1259    22380 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    213         �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    212         �            1259    22442    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false         �            1259    22440    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    215         �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    214         �            1259    22328    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         �            1259    22326    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    201         �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    200         �            1259    33351    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         �            1259    33349    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    248         �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    247         �            1259    22473    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false         �            1259    22485    ludorecherche_add_on    TABLE     �  CREATE TABLE public.ludorecherche_add_on (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text NOT NULL,
    bgg_link text NOT NULL,
    game_id integer,
    language_id integer,
    age integer
);
 (   DROP TABLE public.ludorecherche_add_on;
       public         heap    postgres    false         �            1259    22573    ludorecherche_add_on_artists    TABLE     �   CREATE TABLE public.ludorecherche_add_on_artists (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    artist_id integer NOT NULL
);
 0   DROP TABLE public.ludorecherche_add_on_artists;
       public         heap    postgres    false         �            1259    22571 #   ludorecherche_add_on_artists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.ludorecherche_add_on_artists_id_seq;
       public          postgres    false    234         �           0    0 #   ludorecherche_add_on_artists_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.ludorecherche_add_on_artists_id_seq OWNED BY public.ludorecherche_add_on_artists.id;
          public          postgres    false    233         �            1259    22581    ludorecherche_add_on_designers    TABLE     �   CREATE TABLE public.ludorecherche_add_on_designers (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    designer_id integer NOT NULL
);
 2   DROP TABLE public.ludorecherche_add_on_designers;
       public         heap    postgres    false         �            1259    22579 %   ludorecherche_add_on_designers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.ludorecherche_add_on_designers_id_seq;
       public          postgres    false    236         �           0    0 %   ludorecherche_add_on_designers_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.ludorecherche_add_on_designers_id_seq OWNED BY public.ludorecherche_add_on_designers.id;
          public          postgres    false    235         �            1259    22483    ludorecherche_add_on_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ludorecherche_add_on_id_seq;
       public          postgres    false    218         �           0    0    ludorecherche_add_on_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ludorecherche_add_on_id_seq OWNED BY public.ludorecherche_add_on.id;
          public          postgres    false    217         �            1259    33191 !   ludorecherche_add_on_playing_mode    TABLE     �   CREATE TABLE public.ludorecherche_add_on_playing_mode (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    playingmode_id integer NOT NULL
);
 5   DROP TABLE public.ludorecherche_add_on_playing_mode;
       public         heap    postgres    false         �            1259    33189 (   ludorecherche_add_on_playing_mode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq;
       public          postgres    false    244         �           0    0 (   ludorecherche_add_on_playing_mode_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_add_on_playing_mode.id;
          public          postgres    false    243         �            1259    22589    ludorecherche_add_on_publishers    TABLE     �   CREATE TABLE public.ludorecherche_add_on_publishers (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    publisher_id integer NOT NULL
);
 3   DROP TABLE public.ludorecherche_add_on_publishers;
       public         heap    postgres    false         �            1259    22587 &   ludorecherche_add_on_publishers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.ludorecherche_add_on_publishers_id_seq;
       public          postgres    false    238         �           0    0 &   ludorecherche_add_on_publishers_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.ludorecherche_add_on_publishers_id_seq OWNED BY public.ludorecherche_add_on_publishers.id;
          public          postgres    false    237         �            1259    22498    ludorecherche_artist    TABLE     p   CREATE TABLE public.ludorecherche_artist (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 (   DROP TABLE public.ludorecherche_artist;
       public         heap    postgres    false         �            1259    22496    ludorecherche_artist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ludorecherche_artist_id_seq;
       public          postgres    false    220         �           0    0    ludorecherche_artist_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ludorecherche_artist_id_seq OWNED BY public.ludorecherche_artist.id;
          public          postgres    false    219         �            1259    22508    ludorecherche_designer    TABLE     r   CREATE TABLE public.ludorecherche_designer (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 *   DROP TABLE public.ludorecherche_designer;
       public         heap    postgres    false         �            1259    22506    ludorecherche_designer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_designer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ludorecherche_designer_id_seq;
       public          postgres    false    222         �           0    0    ludorecherche_designer_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ludorecherche_designer_id_seq OWNED BY public.ludorecherche_designer.id;
          public          postgres    false    221         �            1259    33535    ludorecherche_difficulty    TABLE     t   CREATE TABLE public.ludorecherche_difficulty (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 ,   DROP TABLE public.ludorecherche_difficulty;
       public         heap    postgres    false         �            1259    33533    ludorecherche_difficulty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_difficulty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ludorecherche_difficulty_id_seq;
       public          postgres    false    250         �           0    0    ludorecherche_difficulty_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ludorecherche_difficulty_id_seq OWNED BY public.ludorecherche_difficulty.id;
          public          postgres    false    249         �            1259    22528    ludorecherche_game    TABLE     �  CREATE TABLE public.ludorecherche_game (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text NOT NULL,
    bgg_link text NOT NULL,
    by_player boolean NOT NULL,
    max_time integer,
    age integer,
    language_id integer
);
 &   DROP TABLE public.ludorecherche_game;
       public         heap    postgres    false         �            1259    22549    ludorecherche_game_artists    TABLE     �   CREATE TABLE public.ludorecherche_game_artists (
    id integer NOT NULL,
    game_id integer NOT NULL,
    artist_id integer NOT NULL
);
 .   DROP TABLE public.ludorecherche_game_artists;
       public         heap    postgres    false         �            1259    22547 !   ludorecherche_game_artists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_game_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ludorecherche_game_artists_id_seq;
       public          postgres    false    228         �           0    0 !   ludorecherche_game_artists_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ludorecherche_game_artists_id_seq OWNED BY public.ludorecherche_game_artists.id;
          public          postgres    false    227         �            1259    22557    ludorecherche_game_designers    TABLE     �   CREATE TABLE public.ludorecherche_game_designers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    designer_id integer NOT NULL
);
 0   DROP TABLE public.ludorecherche_game_designers;
       public         heap    postgres    false         �            1259    22555 #   ludorecherche_game_designers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_game_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.ludorecherche_game_designers_id_seq;
       public          postgres    false    230         �           0    0 #   ludorecherche_game_designers_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.ludorecherche_game_designers_id_seq OWNED BY public.ludorecherche_game_designers.id;
          public          postgres    false    229         �            1259    22526    ludorecherche_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ludorecherche_game_id_seq;
       public          postgres    false    226         �           0    0    ludorecherche_game_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ludorecherche_game_id_seq OWNED BY public.ludorecherche_game.id;
          public          postgres    false    225         �            1259    33199    ludorecherche_game_playing_mode    TABLE     �   CREATE TABLE public.ludorecherche_game_playing_mode (
    id integer NOT NULL,
    game_id integer NOT NULL,
    playingmode_id integer NOT NULL
);
 3   DROP TABLE public.ludorecherche_game_playing_mode;
       public         heap    postgres    false         �            1259    33197 &   ludorecherche_game_playing_mode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_game_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.ludorecherche_game_playing_mode_id_seq;
       public          postgres    false    246         �           0    0 &   ludorecherche_game_playing_mode_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.ludorecherche_game_playing_mode_id_seq OWNED BY public.ludorecherche_game_playing_mode.id;
          public          postgres    false    245         �            1259    22565    ludorecherche_game_publishers    TABLE     �   CREATE TABLE public.ludorecherche_game_publishers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    publisher_id integer NOT NULL
);
 1   DROP TABLE public.ludorecherche_game_publishers;
       public         heap    postgres    false         �            1259    22563 $   ludorecherche_game_publishers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_game_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ludorecherche_game_publishers_id_seq;
       public          postgres    false    232         �           0    0 $   ludorecherche_game_publishers_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ludorecherche_game_publishers_id_seq OWNED BY public.ludorecherche_game_publishers.id;
          public          postgres    false    231         �            1259    33590    ludorecherche_game_tag    TABLE     �   CREATE TABLE public.ludorecherche_game_tag (
    id integer NOT NULL,
    game_id integer NOT NULL,
    tag_id integer NOT NULL
);
 *   DROP TABLE public.ludorecherche_game_tag;
       public         heap    postgres    false         �            1259    33588    ludorecherche_game_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_game_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ludorecherche_game_tag_id_seq;
       public          postgres    false    254         �           0    0    ludorecherche_game_tag_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ludorecherche_game_tag_id_seq OWNED BY public.ludorecherche_game_tag.id;
          public          postgres    false    253         �            1259    33049    ludorecherche_language    TABLE     r   CREATE TABLE public.ludorecherche_language (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 *   DROP TABLE public.ludorecherche_language;
       public         heap    postgres    false         �            1259    33047    ludorecherche_language_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ludorecherche_language_id_seq;
       public          postgres    false    240         �           0    0    ludorecherche_language_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ludorecherche_language_id_seq OWNED BY public.ludorecherche_language.id;
          public          postgres    false    239                     1259    86123    ludorecherche_multi_add_on    TABLE     |  CREATE TABLE public.ludorecherche_multi_add_on (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    created_at timestamp with time zone NOT NULL,
    picture text NOT NULL,
    bgg_link text NOT NULL,
    difficulty_id integer,
    language_id integer,
    age integer
);
 .   DROP TABLE public.ludorecherche_multi_add_on;
       public         heap    postgres    false                    1259    86136 "   ludorecherche_multi_add_on_artists    TABLE     �   CREATE TABLE public.ludorecherche_multi_add_on_artists (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    artist_id integer NOT NULL
);
 6   DROP TABLE public.ludorecherche_multi_add_on_artists;
       public         heap    postgres    false                    1259    86134 )   ludorecherche_multi_add_on_artists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq;
       public          postgres    false    258         �           0    0 )   ludorecherche_multi_add_on_artists_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq OWNED BY public.ludorecherche_multi_add_on_artists.id;
          public          postgres    false    257                    1259    86144 $   ludorecherche_multi_add_on_designers    TABLE     �   CREATE TABLE public.ludorecherche_multi_add_on_designers (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    designer_id integer NOT NULL
);
 8   DROP TABLE public.ludorecherche_multi_add_on_designers;
       public         heap    postgres    false                    1259    86142 +   ludorecherche_multi_add_on_designers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq;
       public          postgres    false    260         �           0    0 +   ludorecherche_multi_add_on_designers_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq OWNED BY public.ludorecherche_multi_add_on_designers.id;
          public          postgres    false    259                    1259    86152     ludorecherche_multi_add_on_games    TABLE     �   CREATE TABLE public.ludorecherche_multi_add_on_games (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    game_id integer NOT NULL
);
 4   DROP TABLE public.ludorecherche_multi_add_on_games;
       public         heap    postgres    false                    1259    86150 '   ludorecherche_multi_add_on_games_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_multi_add_on_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.ludorecherche_multi_add_on_games_id_seq;
       public          postgres    false    262         �           0    0 '   ludorecherche_multi_add_on_games_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.ludorecherche_multi_add_on_games_id_seq OWNED BY public.ludorecherche_multi_add_on_games.id;
          public          postgres    false    261         �            1259    86121 !   ludorecherche_multi_add_on_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_multi_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ludorecherche_multi_add_on_id_seq;
       public          postgres    false    256         �           0    0 !   ludorecherche_multi_add_on_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ludorecherche_multi_add_on_id_seq OWNED BY public.ludorecherche_multi_add_on.id;
          public          postgres    false    255                    1259    86160 '   ludorecherche_multi_add_on_playing_mode    TABLE     �   CREATE TABLE public.ludorecherche_multi_add_on_playing_mode (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    playingmode_id integer NOT NULL
);
 ;   DROP TABLE public.ludorecherche_multi_add_on_playing_mode;
       public         heap    postgres    false                    1259    86158 .   ludorecherche_multi_add_on_playing_mode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq;
       public          postgres    false    264         �           0    0 .   ludorecherche_multi_add_on_playing_mode_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_multi_add_on_playing_mode.id;
          public          postgres    false    263         
           1259    86168 %   ludorecherche_multi_add_on_publishers    TABLE     �   CREATE TABLE public.ludorecherche_multi_add_on_publishers (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    publisher_id integer NOT NULL
);
 9   DROP TABLE public.ludorecherche_multi_add_on_publishers;
       public         heap    postgres    false         	           1259    86166 ,   ludorecherche_multi_add_on_publishers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq;
       public          postgres    false    266         �           0    0 ,   ludorecherche_multi_add_on_publishers_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq OWNED BY public.ludorecherche_multi_add_on_publishers.id;
          public          postgres    false    265         �            1259    33059    ludorecherche_playingmode    TABLE     u   CREATE TABLE public.ludorecherche_playingmode (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 -   DROP TABLE public.ludorecherche_playingmode;
       public         heap    postgres    false         �            1259    33057     ludorecherche_playingmode_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_playingmode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ludorecherche_playingmode_id_seq;
       public          postgres    false    242         �           0    0     ludorecherche_playingmode_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ludorecherche_playingmode_id_seq OWNED BY public.ludorecherche_playingmode.id;
          public          postgres    false    241         �            1259    22518    ludorecherche_publisher    TABLE     s   CREATE TABLE public.ludorecherche_publisher (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 +   DROP TABLE public.ludorecherche_publisher;
       public         heap    postgres    false         �            1259    22516    ludorecherche_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ludorecherche_publisher_id_seq;
       public          postgres    false    224         �           0    0    ludorecherche_publisher_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ludorecherche_publisher_id_seq OWNED BY public.ludorecherche_publisher.id;
          public          postgres    false    223         �            1259    33580    ludorecherche_tag    TABLE     m   CREATE TABLE public.ludorecherche_tag (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 %   DROP TABLE public.ludorecherche_tag;
       public         heap    postgres    false         �            1259    33578    ludorecherche_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ludorecherche_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.ludorecherche_tag_id_seq;
       public          postgres    false    252         �           0    0    ludorecherche_tag_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.ludorecherche_tag_id_seq OWNED BY public.ludorecherche_tag.id;
          public          postgres    false    251         �           2604    33509    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205         �           2604    33510    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207         �           2604    33511    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203         �           2604    33512    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         �           2604    33513    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211         �           2604    33514    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213         �           2604    33515    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215         �           2604    33516    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201                    2604    33517    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248         �           2604    33518    ludorecherche_add_on id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_add_on ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_id_seq'::regclass);
 F   ALTER TABLE public.ludorecherche_add_on ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218         �           2604    33519    ludorecherche_add_on_artists id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_add_on_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_artists_id_seq'::regclass);
 N   ALTER TABLE public.ludorecherche_add_on_artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234         �           2604    33520 !   ludorecherche_add_on_designers id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_add_on_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_designers_id_seq'::regclass);
 P   ALTER TABLE public.ludorecherche_add_on_designers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236                    2604    33521 $   ludorecherche_add_on_playing_mode id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_playing_mode_id_seq'::regclass);
 S   ALTER TABLE public.ludorecherche_add_on_playing_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244                     2604    33522 "   ludorecherche_add_on_publishers id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_add_on_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_publishers_id_seq'::regclass);
 Q   ALTER TABLE public.ludorecherche_add_on_publishers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238         �           2604    33523    ludorecherche_artist id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_artist ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_artist_id_seq'::regclass);
 F   ALTER TABLE public.ludorecherche_artist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220         �           2604    33524    ludorecherche_designer id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_designer ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_designer_id_seq'::regclass);
 H   ALTER TABLE public.ludorecherche_designer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                    2604    33538    ludorecherche_difficulty id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_difficulty ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_difficulty_id_seq'::regclass);
 J   ALTER TABLE public.ludorecherche_difficulty ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250         �           2604    33525    ludorecherche_game id    DEFAULT     ~   ALTER TABLE ONLY public.ludorecherche_game ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_id_seq'::regclass);
 D   ALTER TABLE public.ludorecherche_game ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226         �           2604    33526    ludorecherche_game_artists id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_game_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_artists_id_seq'::regclass);
 L   ALTER TABLE public.ludorecherche_game_artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228         �           2604    33527    ludorecherche_game_designers id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_game_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_designers_id_seq'::regclass);
 N   ALTER TABLE public.ludorecherche_game_designers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230                    2604    33528 "   ludorecherche_game_playing_mode id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_game_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_playing_mode_id_seq'::regclass);
 Q   ALTER TABLE public.ludorecherche_game_playing_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246         �           2604    33529     ludorecherche_game_publishers id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_game_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_publishers_id_seq'::regclass);
 O   ALTER TABLE public.ludorecherche_game_publishers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232                    2604    33593    ludorecherche_game_tag id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_game_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_tag_id_seq'::regclass);
 H   ALTER TABLE public.ludorecherche_game_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254                    2604    33530    ludorecherche_language id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_language ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_language_id_seq'::regclass);
 H   ALTER TABLE public.ludorecherche_language ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240         	           2604    86126    ludorecherche_multi_add_on id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_id_seq'::regclass);
 L   ALTER TABLE public.ludorecherche_multi_add_on ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256         
           2604    86139 %   ludorecherche_multi_add_on_artists id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_artists_id_seq'::regclass);
 T   ALTER TABLE public.ludorecherche_multi_add_on_artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258                    2604    86147 '   ludorecherche_multi_add_on_designers id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_designers_id_seq'::regclass);
 V   ALTER TABLE public.ludorecherche_multi_add_on_designers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260                    2604    86155 #   ludorecherche_multi_add_on_games id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_games_id_seq'::regclass);
 R   ALTER TABLE public.ludorecherche_multi_add_on_games ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262                    2604    86163 *   ludorecherche_multi_add_on_playing_mode id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_playing_mode_id_seq'::regclass);
 Y   ALTER TABLE public.ludorecherche_multi_add_on_playing_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264                    2604    86171 (   ludorecherche_multi_add_on_publishers id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_publishers_id_seq'::regclass);
 W   ALTER TABLE public.ludorecherche_multi_add_on_publishers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266                    2604    33531    ludorecherche_playingmode id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_playingmode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_playingmode_id_seq'::regclass);
 K   ALTER TABLE public.ludorecherche_playingmode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242         �           2604    33532    ludorecherche_publisher id    DEFAULT     �   ALTER TABLE ONLY public.ludorecherche_publisher ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_publisher_id_seq'::regclass);
 I   ALTER TABLE public.ludorecherche_publisher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224                    2604    33583    ludorecherche_tag id    DEFAULT     |   ALTER TABLE ONLY public.ludorecherche_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_tag_id_seq'::regclass);
 C   ALTER TABLE public.ludorecherche_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252         ~          0    22346 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    205       3454.dat �          0    22356    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    207       3456.dat |          0    22338    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    203       3452.dat �          0    22364 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    209       3458.dat �          0    22374    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    211       3460.dat �          0    22382    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    213       3462.dat �          0    22442    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    215       3464.dat z          0    22328    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    201       3450.dat �          0    33351    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    248       3497.dat �          0    22473    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    216       3465.dat �          0    22485    ludorecherche_add_on 
   TABLE DATA           �   COPY public.ludorecherche_add_on (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, language_id, age) FROM stdin;
    public          postgres    false    218       3467.dat �          0    22573    ludorecherche_add_on_artists 
   TABLE DATA           P   COPY public.ludorecherche_add_on_artists (id, add_on_id, artist_id) FROM stdin;
    public          postgres    false    234       3483.dat �          0    22581    ludorecherche_add_on_designers 
   TABLE DATA           T   COPY public.ludorecherche_add_on_designers (id, add_on_id, designer_id) FROM stdin;
    public          postgres    false    236       3485.dat �          0    33191 !   ludorecherche_add_on_playing_mode 
   TABLE DATA           Z   COPY public.ludorecherche_add_on_playing_mode (id, add_on_id, playingmode_id) FROM stdin;
    public          postgres    false    244       3493.dat �          0    22589    ludorecherche_add_on_publishers 
   TABLE DATA           V   COPY public.ludorecherche_add_on_publishers (id, add_on_id, publisher_id) FROM stdin;
    public          postgres    false    238       3487.dat �          0    22498    ludorecherche_artist 
   TABLE DATA           8   COPY public.ludorecherche_artist (id, name) FROM stdin;
    public          postgres    false    220       3469.dat �          0    22508    ludorecherche_designer 
   TABLE DATA           :   COPY public.ludorecherche_designer (id, name) FROM stdin;
    public          postgres    false    222       3471.dat �          0    33535    ludorecherche_difficulty 
   TABLE DATA           <   COPY public.ludorecherche_difficulty (id, name) FROM stdin;
    public          postgres    false    250       3499.dat �          0    22528    ludorecherche_game 
   TABLE DATA           �   COPY public.ludorecherche_game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, language_id) FROM stdin;
    public          postgres    false    226       3475.dat �          0    22549    ludorecherche_game_artists 
   TABLE DATA           L   COPY public.ludorecherche_game_artists (id, game_id, artist_id) FROM stdin;
    public          postgres    false    228       3477.dat �          0    22557    ludorecherche_game_designers 
   TABLE DATA           P   COPY public.ludorecherche_game_designers (id, game_id, designer_id) FROM stdin;
    public          postgres    false    230       3479.dat �          0    33199    ludorecherche_game_playing_mode 
   TABLE DATA           V   COPY public.ludorecherche_game_playing_mode (id, game_id, playingmode_id) FROM stdin;
    public          postgres    false    246       3495.dat �          0    22565    ludorecherche_game_publishers 
   TABLE DATA           R   COPY public.ludorecherche_game_publishers (id, game_id, publisher_id) FROM stdin;
    public          postgres    false    232       3481.dat �          0    33590    ludorecherche_game_tag 
   TABLE DATA           E   COPY public.ludorecherche_game_tag (id, game_id, tag_id) FROM stdin;
    public          postgres    false    254       3503.dat �          0    33049    ludorecherche_language 
   TABLE DATA           :   COPY public.ludorecherche_language (id, name) FROM stdin;
    public          postgres    false    240       3489.dat �          0    86123    ludorecherche_multi_add_on 
   TABLE DATA           �   COPY public.ludorecherche_multi_add_on (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, language_id, age) FROM stdin;
    public          postgres    false    256       3505.dat �          0    86136 "   ludorecherche_multi_add_on_artists 
   TABLE DATA           \   COPY public.ludorecherche_multi_add_on_artists (id, multi_add_on_id, artist_id) FROM stdin;
    public          postgres    false    258       3507.dat �          0    86144 $   ludorecherche_multi_add_on_designers 
   TABLE DATA           `   COPY public.ludorecherche_multi_add_on_designers (id, multi_add_on_id, designer_id) FROM stdin;
    public          postgres    false    260       3509.dat �          0    86152     ludorecherche_multi_add_on_games 
   TABLE DATA           X   COPY public.ludorecherche_multi_add_on_games (id, multi_add_on_id, game_id) FROM stdin;
    public          postgres    false    262       3511.dat �          0    86160 '   ludorecherche_multi_add_on_playing_mode 
   TABLE DATA           f   COPY public.ludorecherche_multi_add_on_playing_mode (id, multi_add_on_id, playingmode_id) FROM stdin;
    public          postgres    false    264       3513.dat �          0    86168 %   ludorecherche_multi_add_on_publishers 
   TABLE DATA           b   COPY public.ludorecherche_multi_add_on_publishers (id, multi_add_on_id, publisher_id) FROM stdin;
    public          postgres    false    266       3515.dat �          0    33059    ludorecherche_playingmode 
   TABLE DATA           =   COPY public.ludorecherche_playingmode (id, name) FROM stdin;
    public          postgres    false    242       3491.dat �          0    22518    ludorecherche_publisher 
   TABLE DATA           ;   COPY public.ludorecherche_publisher (id, name) FROM stdin;
    public          postgres    false    224       3473.dat �          0    33580    ludorecherche_tag 
   TABLE DATA           5   COPY public.ludorecherche_tag (id, name) FROM stdin;
    public          postgres    false    252       3501.dat �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    204         �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    206         �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);
          public          postgres    false    202         �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210         �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    208         �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    212         �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 112, true);
          public          postgres    false    214         �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);
          public          postgres    false    200         �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 40, true);
          public          postgres    false    247         �           0    0 #   ludorecherche_add_on_artists_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ludorecherche_add_on_artists_id_seq', 5, true);
          public          postgres    false    233         �           0    0 %   ludorecherche_add_on_designers_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ludorecherche_add_on_designers_id_seq', 4, true);
          public          postgres    false    235         �           0    0    ludorecherche_add_on_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ludorecherche_add_on_id_seq', 4, true);
          public          postgres    false    217         �           0    0 (   ludorecherche_add_on_playing_mode_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.ludorecherche_add_on_playing_mode_id_seq', 6, true);
          public          postgres    false    243         �           0    0 &   ludorecherche_add_on_publishers_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.ludorecherche_add_on_publishers_id_seq', 8, true);
          public          postgres    false    237         �           0    0    ludorecherche_artist_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ludorecherche_artist_id_seq', 17, true);
          public          postgres    false    219         �           0    0    ludorecherche_designer_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ludorecherche_designer_id_seq', 7, true);
          public          postgres    false    221         �           0    0    ludorecherche_difficulty_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ludorecherche_difficulty_id_seq', 2, true);
          public          postgres    false    249         �           0    0 !   ludorecherche_game_artists_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.ludorecherche_game_artists_id_seq', 24, true);
          public          postgres    false    227         �           0    0 #   ludorecherche_game_designers_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.ludorecherche_game_designers_id_seq', 14, true);
          public          postgres    false    229         �           0    0    ludorecherche_game_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ludorecherche_game_id_seq', 12, true);
          public          postgres    false    225         �           0    0 &   ludorecherche_game_playing_mode_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.ludorecherche_game_playing_mode_id_seq', 7, true);
          public          postgres    false    245         �           0    0 $   ludorecherche_game_publishers_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ludorecherche_game_publishers_id_seq', 14, true);
          public          postgres    false    231         �           0    0    ludorecherche_game_tag_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ludorecherche_game_tag_id_seq', 14, true);
          public          postgres    false    253         �           0    0    ludorecherche_language_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ludorecherche_language_id_seq', 2, true);
          public          postgres    false    239         �           0    0 )   ludorecherche_multi_add_on_artists_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_artists_id_seq', 1, true);
          public          postgres    false    257         �           0    0 +   ludorecherche_multi_add_on_designers_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_designers_id_seq', 1, true);
          public          postgres    false    259         �           0    0 '   ludorecherche_multi_add_on_games_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_games_id_seq', 2, true);
          public          postgres    false    261         �           0    0 !   ludorecherche_multi_add_on_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_id_seq', 1, true);
          public          postgres    false    255         �           0    0 .   ludorecherche_multi_add_on_playing_mode_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_playing_mode_id_seq', 2, true);
          public          postgres    false    263                     0    0 ,   ludorecherche_multi_add_on_publishers_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_publishers_id_seq', 2, true);
          public          postgres    false    265                    0    0     ludorecherche_playingmode_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ludorecherche_playingmode_id_seq', 4, true);
          public          postgres    false    241                    0    0    ludorecherche_publisher_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ludorecherche_publisher_id_seq', 7, true);
          public          postgres    false    223                    0    0    ludorecherche_tag_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ludorecherche_tag_id_seq', 8, true);
          public          postgres    false    251                    2606    22471    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    205                    2606    22398 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    207    207         "           2606    22361 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    207                    2606    22351    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    205                    2606    22389 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    203    203                    2606    22343 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    203         *           2606    22379 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    211         -           2606    22413 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    211    211         $           2606    22369    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    209         0           2606    22387 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    213         3           2606    22427 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    213    213         '           2606    22465     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    209         6           2606    22451 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    215                    2606    22335 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    201    201                    2606    22333 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    201         �           2606    33359 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    248         :           2606    22480 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    216         n           2606    22657 [   ludorecherche_add_on_artists ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq UNIQUE (add_on_id, artist_id);
 �   ALTER TABLE ONLY public.ludorecherche_add_on_artists DROP CONSTRAINT ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq;
       public            postgres    false    234    234         q           2606    22578 >   ludorecherche_add_on_artists ludorecherche_add_on_artists_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.ludorecherche_add_on_artists DROP CONSTRAINT ludorecherche_add_on_artists_pkey;
       public            postgres    false    234         s           2606    22671 [   ludorecherche_add_on_designers ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq UNIQUE (add_on_id, designer_id);
 �   ALTER TABLE ONLY public.ludorecherche_add_on_designers DROP CONSTRAINT ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq;
       public            postgres    false    236    236         w           2606    22586 B   ludorecherche_add_on_designers ludorecherche_add_on_designers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_designers_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.ludorecherche_add_on_designers DROP CONSTRAINT ludorecherche_add_on_designers_pkey;
       public            postgres    false    236         A           2606    22495 2   ludorecherche_add_on ludorecherche_add_on_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.ludorecherche_add_on DROP CONSTRAINT ludorecherche_add_on_name_key;
       public            postgres    false    218         C           2606    22493 .   ludorecherche_add_on ludorecherche_add_on_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ludorecherche_add_on DROP CONSTRAINT ludorecherche_add_on_pkey;
       public            postgres    false    218         �           2606    33206 a   ludorecherche_add_on_playing_mode ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq UNIQUE (add_on_id, playingmode_id);
 �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode DROP CONSTRAINT ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq;
       public            postgres    false    244    244         �           2606    33196 H   ludorecherche_add_on_playing_mode ludorecherche_add_on_playing_mode_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playing_mode_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode DROP CONSTRAINT ludorecherche_add_on_playing_mode_pkey;
       public            postgres    false    244         y           2606    22685 ]   ludorecherche_add_on_publishers ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq UNIQUE (add_on_id, publisher_id);
 �   ALTER TABLE ONLY public.ludorecherche_add_on_publishers DROP CONSTRAINT ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq;
       public            postgres    false    238    238         |           2606    22594 D   ludorecherche_add_on_publishers ludorecherche_add_on_publishers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_publishers_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.ludorecherche_add_on_publishers DROP CONSTRAINT ludorecherche_add_on_publishers_pkey;
       public            postgres    false    238         F           2606    22505 2   ludorecherche_artist ludorecherche_artist_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.ludorecherche_artist DROP CONSTRAINT ludorecherche_artist_name_key;
       public            postgres    false    220         H           2606    22503 .   ludorecherche_artist ludorecherche_artist_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ludorecherche_artist DROP CONSTRAINT ludorecherche_artist_pkey;
       public            postgres    false    220         K           2606    22515 6   ludorecherche_designer ludorecherche_designer_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.ludorecherche_designer DROP CONSTRAINT ludorecherche_designer_name_key;
       public            postgres    false    222         M           2606    22513 2   ludorecherche_designer ludorecherche_designer_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ludorecherche_designer DROP CONSTRAINT ludorecherche_designer_pkey;
       public            postgres    false    222         �           2606    33542 :   ludorecherche_difficulty ludorecherche_difficulty_name_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_name_key UNIQUE (name);
 d   ALTER TABLE ONLY public.ludorecherche_difficulty DROP CONSTRAINT ludorecherche_difficulty_name_key;
       public            postgres    false    250         �           2606    33540 6   ludorecherche_difficulty ludorecherche_difficulty_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.ludorecherche_difficulty DROP CONSTRAINT ludorecherche_difficulty_pkey;
       public            postgres    false    250         ]           2606    22615 U   ludorecherche_game_artists ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq UNIQUE (game_id, artist_id);
    ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq;
       public            postgres    false    228    228         _           2606    22554 :   ludorecherche_game_artists ludorecherche_game_artists_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_artists_pkey;
       public            postgres    false    228         c           2606    22629 [   ludorecherche_game_designers ludorecherche_game_designers_game_id_designer_id_98196acb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_game_id_designer_id_98196acb_uniq UNIQUE (game_id, designer_id);
 �   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_designers_game_id_designer_id_98196acb_uniq;
       public            postgres    false    230    230         e           2606    22562 >   ludorecherche_game_designers ludorecherche_game_designers_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_designers_pkey;
       public            postgres    false    230         W           2606    22538 .   ludorecherche_game ludorecherche_game_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_name_key UNIQUE (name);
 X   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_name_key;
       public            postgres    false    226         Y           2606    22536 *   ludorecherche_game ludorecherche_game_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_pkey;
       public            postgres    false    226         �           2606    33220 ]   ludorecherche_game_playing_mode ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq UNIQUE (game_id, playingmode_id);
 �   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq;
       public            postgres    false    246    246         �           2606    33204 D   ludorecherche_game_playing_mode ludorecherche_game_playing_mode_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playing_mode_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_playing_mode_pkey;
       public            postgres    false    246         g           2606    22643 Y   ludorecherche_game_publishers ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq UNIQUE (game_id, publisher_id);
 �   ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq;
       public            postgres    false    232    232         j           2606    22570 @   ludorecherche_game_publishers ludorecherche_game_publishers_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publishers_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_publishers_pkey;
       public            postgres    false    232         �           2606    33598 J   ludorecherche_game_tag ludorecherche_game_tag_game_id_tag_id_79514770_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_game_id_tag_id_79514770_uniq UNIQUE (game_id, tag_id);
 t   ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_tag_game_id_tag_id_79514770_uniq;
       public            postgres    false    254    254         �           2606    33595 2   ludorecherche_game_tag ludorecherche_game_tag_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_tag_pkey;
       public            postgres    false    254         �           2606    33056 6   ludorecherche_language ludorecherche_language_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.ludorecherche_language DROP CONSTRAINT ludorecherche_language_name_key;
       public            postgres    false    240         �           2606    33054 2   ludorecherche_language ludorecherche_language_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ludorecherche_language DROP CONSTRAINT ludorecherche_language_pkey;
       public            postgres    false    240         �           2606    86188 b   ludorecherche_multi_add_on_artists ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq UNIQUE (multi_add_on_id, artist_id);
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq;
       public            postgres    false    258    258         �           2606    86202 d   ludorecherche_multi_add_on_designers ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq UNIQUE (multi_add_on_id, designer_id);
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq;
       public            postgres    false    260    260         �           2606    86216 _   ludorecherche_multi_add_on_games ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq UNIQUE (multi_add_on_id, game_id);
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq;
       public            postgres    false    262    262         �           2606    86230 g   ludorecherche_multi_add_on_playing_mode ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq UNIQUE (multi_add_on_id, playingmode_id);
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq;
       public            postgres    false    264    264         �           2606    86244 e   ludorecherche_multi_add_on_publishers ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq UNIQUE (multi_add_on_id, publisher_id);
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq;
       public            postgres    false    266    266         �           2606    86141 J   ludorecherche_multi_add_on_artists ludorecherche_multi_add_on_artists_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi_add_on_artists_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists DROP CONSTRAINT ludorecherche_multi_add_on_artists_pkey;
       public            postgres    false    258         �           2606    86149 N   ludorecherche_multi_add_on_designers ludorecherche_multi_add_on_designers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi_add_on_designers_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers DROP CONSTRAINT ludorecherche_multi_add_on_designers_pkey;
       public            postgres    false    260         �           2606    86157 F   ludorecherche_multi_add_on_games ludorecherche_multi_add_on_games_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi_add_on_games_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games DROP CONSTRAINT ludorecherche_multi_add_on_games_pkey;
       public            postgres    false    262         �           2606    86133 >   ludorecherche_multi_add_on ludorecherche_multi_add_on_name_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi_add_on_name_key UNIQUE (name);
 h   ALTER TABLE ONLY public.ludorecherche_multi_add_on DROP CONSTRAINT ludorecherche_multi_add_on_name_key;
       public            postgres    false    256         �           2606    86131 :   ludorecherche_multi_add_on ludorecherche_multi_add_on_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi_add_on_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.ludorecherche_multi_add_on DROP CONSTRAINT ludorecherche_multi_add_on_pkey;
       public            postgres    false    256         �           2606    86165 T   ludorecherche_multi_add_on_playing_mode ludorecherche_multi_add_on_playing_mode_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add_on_playing_mode_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode DROP CONSTRAINT ludorecherche_multi_add_on_playing_mode_pkey;
       public            postgres    false    264         �           2606    86173 P   ludorecherche_multi_add_on_publishers ludorecherche_multi_add_on_publishers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi_add_on_publishers_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers DROP CONSTRAINT ludorecherche_multi_add_on_publishers_pkey;
       public            postgres    false    266         �           2606    33066 <   ludorecherche_playingmode ludorecherche_playingmode_name_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.ludorecherche_playingmode DROP CONSTRAINT ludorecherche_playingmode_name_key;
       public            postgres    false    242         �           2606    33064 8   ludorecherche_playingmode ludorecherche_playingmode_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.ludorecherche_playingmode DROP CONSTRAINT ludorecherche_playingmode_pkey;
       public            postgres    false    242         P           2606    22525 8   ludorecherche_publisher ludorecherche_publisher_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_name_key UNIQUE (name);
 b   ALTER TABLE ONLY public.ludorecherche_publisher DROP CONSTRAINT ludorecherche_publisher_name_key;
       public            postgres    false    224         R           2606    22523 4   ludorecherche_publisher ludorecherche_publisher_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ludorecherche_publisher DROP CONSTRAINT ludorecherche_publisher_pkey;
       public            postgres    false    224         �           2606    33587 ,   ludorecherche_tag ludorecherche_tag_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.ludorecherche_tag DROP CONSTRAINT ludorecherche_tag_name_key;
       public            postgres    false    252         �           2606    33585 (   ludorecherche_tag ludorecherche_tag_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.ludorecherche_tag DROP CONSTRAINT ludorecherche_tag_pkey;
       public            postgres    false    252                    1259    22472    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    205                    1259    22409 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    207                     1259    22410 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    207                    1259    22395 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    203         (           1259    22425 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    211         +           1259    22424 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    211         .           1259    22439 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    213         1           1259    22438 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    213         %           1259    22466     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    209         4           1259    22462 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    215         7           1259    22463 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    215         8           1259    22482 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    216         ;           1259    22481 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    216         l           1259    22668 /   ludorecherche_add_on_artists_add_on_id_06c1b675    INDEX     }   CREATE INDEX ludorecherche_add_on_artists_add_on_id_06c1b675 ON public.ludorecherche_add_on_artists USING btree (add_on_id);
 C   DROP INDEX public.ludorecherche_add_on_artists_add_on_id_06c1b675;
       public            postgres    false    234         o           1259    22669 /   ludorecherche_add_on_artists_artist_id_947142f9    INDEX     }   CREATE INDEX ludorecherche_add_on_artists_artist_id_947142f9 ON public.ludorecherche_add_on_artists USING btree (artist_id);
 C   DROP INDEX public.ludorecherche_add_on_artists_artist_id_947142f9;
       public            postgres    false    234         t           1259    22682 1   ludorecherche_add_on_designers_add_on_id_91c9524f    INDEX     �   CREATE INDEX ludorecherche_add_on_designers_add_on_id_91c9524f ON public.ludorecherche_add_on_designers USING btree (add_on_id);
 E   DROP INDEX public.ludorecherche_add_on_designers_add_on_id_91c9524f;
       public            postgres    false    236         u           1259    22683 3   ludorecherche_add_on_designers_designer_id_c16eab7d    INDEX     �   CREATE INDEX ludorecherche_add_on_designers_designer_id_c16eab7d ON public.ludorecherche_add_on_designers USING btree (designer_id);
 G   DROP INDEX public.ludorecherche_add_on_designers_designer_id_c16eab7d;
       public            postgres    false    236         <           1259    33554 +   ludorecherche_add_on_difficulty_id_36e9a090    INDEX     u   CREATE INDEX ludorecherche_add_on_difficulty_id_36e9a090 ON public.ludorecherche_add_on USING btree (difficulty_id);
 ?   DROP INDEX public.ludorecherche_add_on_difficulty_id_36e9a090;
       public            postgres    false    218         =           1259    29877 %   ludorecherche_add_on_game_id_fc9844ac    INDEX     i   CREATE INDEX ludorecherche_add_on_game_id_fc9844ac ON public.ludorecherche_add_on USING btree (game_id);
 9   DROP INDEX public.ludorecherche_add_on_game_id_fc9844ac;
       public            postgres    false    218         >           1259    33188 )   ludorecherche_add_on_language_id_5573aafd    INDEX     q   CREATE INDEX ludorecherche_add_on_language_id_5573aafd ON public.ludorecherche_add_on USING btree (language_id);
 =   DROP INDEX public.ludorecherche_add_on_language_id_5573aafd;
       public            postgres    false    218         ?           1259    22595 '   ludorecherche_add_on_name_d5b13084_like    INDEX     |   CREATE INDEX ludorecherche_add_on_name_d5b13084_like ON public.ludorecherche_add_on USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.ludorecherche_add_on_name_d5b13084_like;
       public            postgres    false    218         �           1259    33217 4   ludorecherche_add_on_playing_mode_add_on_id_ef1f0186    INDEX     �   CREATE INDEX ludorecherche_add_on_playing_mode_add_on_id_ef1f0186 ON public.ludorecherche_add_on_playing_mode USING btree (add_on_id);
 H   DROP INDEX public.ludorecherche_add_on_playing_mode_add_on_id_ef1f0186;
       public            postgres    false    244         �           1259    33218 9   ludorecherche_add_on_playing_mode_playingmode_id_12919a41    INDEX     �   CREATE INDEX ludorecherche_add_on_playing_mode_playingmode_id_12919a41 ON public.ludorecherche_add_on_playing_mode USING btree (playingmode_id);
 M   DROP INDEX public.ludorecherche_add_on_playing_mode_playingmode_id_12919a41;
       public            postgres    false    244         z           1259    22696 2   ludorecherche_add_on_publishers_add_on_id_9ca3fd40    INDEX     �   CREATE INDEX ludorecherche_add_on_publishers_add_on_id_9ca3fd40 ON public.ludorecherche_add_on_publishers USING btree (add_on_id);
 F   DROP INDEX public.ludorecherche_add_on_publishers_add_on_id_9ca3fd40;
       public            postgres    false    238         }           1259    22697 5   ludorecherche_add_on_publishers_publisher_id_14abff3e    INDEX     �   CREATE INDEX ludorecherche_add_on_publishers_publisher_id_14abff3e ON public.ludorecherche_add_on_publishers USING btree (publisher_id);
 I   DROP INDEX public.ludorecherche_add_on_publishers_publisher_id_14abff3e;
       public            postgres    false    238         D           1259    22596 '   ludorecherche_artist_name_7c60ea7e_like    INDEX     |   CREATE INDEX ludorecherche_artist_name_7c60ea7e_like ON public.ludorecherche_artist USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.ludorecherche_artist_name_7c60ea7e_like;
       public            postgres    false    220         I           1259    22597 )   ludorecherche_designer_name_36cdcde4_like    INDEX     �   CREATE INDEX ludorecherche_designer_name_36cdcde4_like ON public.ludorecherche_designer USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.ludorecherche_designer_name_36cdcde4_like;
       public            postgres    false    222         �           1259    33576 +   ludorecherche_difficulty_name_e59ec408_like    INDEX     �   CREATE INDEX ludorecherche_difficulty_name_e59ec408_like ON public.ludorecherche_difficulty USING btree (name varchar_pattern_ops);
 ?   DROP INDEX public.ludorecherche_difficulty_name_e59ec408_like;
       public            postgres    false    250         Z           1259    22627 -   ludorecherche_game_artists_artist_id_3e5506bf    INDEX     y   CREATE INDEX ludorecherche_game_artists_artist_id_3e5506bf ON public.ludorecherche_game_artists USING btree (artist_id);
 A   DROP INDEX public.ludorecherche_game_artists_artist_id_3e5506bf;
       public            postgres    false    228         [           1259    22626 +   ludorecherche_game_artists_game_id_2ba0fcde    INDEX     u   CREATE INDEX ludorecherche_game_artists_game_id_2ba0fcde ON public.ludorecherche_game_artists USING btree (game_id);
 ?   DROP INDEX public.ludorecherche_game_artists_game_id_2ba0fcde;
       public            postgres    false    228         `           1259    22641 1   ludorecherche_game_designers_designer_id_8b4d087f    INDEX     �   CREATE INDEX ludorecherche_game_designers_designer_id_8b4d087f ON public.ludorecherche_game_designers USING btree (designer_id);
 E   DROP INDEX public.ludorecherche_game_designers_designer_id_8b4d087f;
       public            postgres    false    230         a           1259    22640 -   ludorecherche_game_designers_game_id_6d1526cc    INDEX     y   CREATE INDEX ludorecherche_game_designers_game_id_6d1526cc ON public.ludorecherche_game_designers USING btree (game_id);
 A   DROP INDEX public.ludorecherche_game_designers_game_id_6d1526cc;
       public            postgres    false    230         S           1259    33570 )   ludorecherche_game_difficulty_id_c4f6b87a    INDEX     q   CREATE INDEX ludorecherche_game_difficulty_id_c4f6b87a ON public.ludorecherche_game USING btree (difficulty_id);
 =   DROP INDEX public.ludorecherche_game_difficulty_id_c4f6b87a;
       public            postgres    false    226         T           1259    33095 '   ludorecherche_game_language_id_38e7eecd    INDEX     m   CREATE INDEX ludorecherche_game_language_id_38e7eecd ON public.ludorecherche_game USING btree (language_id);
 ;   DROP INDEX public.ludorecherche_game_language_id_38e7eecd;
       public            postgres    false    226         U           1259    22599 %   ludorecherche_game_name_82b8126a_like    INDEX     x   CREATE INDEX ludorecherche_game_name_82b8126a_like ON public.ludorecherche_game USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.ludorecherche_game_name_82b8126a_like;
       public            postgres    false    226         �           1259    33231 0   ludorecherche_game_playing_mode_game_id_62bd95b2    INDEX        CREATE INDEX ludorecherche_game_playing_mode_game_id_62bd95b2 ON public.ludorecherche_game_playing_mode USING btree (game_id);
 D   DROP INDEX public.ludorecherche_game_playing_mode_game_id_62bd95b2;
       public            postgres    false    246         �           1259    33232 7   ludorecherche_game_playing_mode_playingmode_id_fa02659e    INDEX     �   CREATE INDEX ludorecherche_game_playing_mode_playingmode_id_fa02659e ON public.ludorecherche_game_playing_mode USING btree (playingmode_id);
 K   DROP INDEX public.ludorecherche_game_playing_mode_playingmode_id_fa02659e;
       public            postgres    false    246         h           1259    22654 .   ludorecherche_game_publishers_game_id_a425abf8    INDEX     {   CREATE INDEX ludorecherche_game_publishers_game_id_a425abf8 ON public.ludorecherche_game_publishers USING btree (game_id);
 B   DROP INDEX public.ludorecherche_game_publishers_game_id_a425abf8;
       public            postgres    false    232         k           1259    22655 3   ludorecherche_game_publishers_publisher_id_5176fa38    INDEX     �   CREATE INDEX ludorecherche_game_publishers_publisher_id_5176fa38 ON public.ludorecherche_game_publishers USING btree (publisher_id);
 G   DROP INDEX public.ludorecherche_game_publishers_publisher_id_5176fa38;
       public            postgres    false    232         �           1259    33609 '   ludorecherche_game_tag_game_id_065ca217    INDEX     m   CREATE INDEX ludorecherche_game_tag_game_id_065ca217 ON public.ludorecherche_game_tag USING btree (game_id);
 ;   DROP INDEX public.ludorecherche_game_tag_game_id_065ca217;
       public            postgres    false    254         �           1259    33610 &   ludorecherche_game_tag_tag_id_d515082c    INDEX     k   CREATE INDEX ludorecherche_game_tag_tag_id_d515082c ON public.ludorecherche_game_tag USING btree (tag_id);
 :   DROP INDEX public.ludorecherche_game_tag_tag_id_d515082c;
       public            postgres    false    254         ~           1259    33093 )   ludorecherche_language_name_24fe12a7_like    INDEX     �   CREATE INDEX ludorecherche_language_name_24fe12a7_like ON public.ludorecherche_language USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.ludorecherche_language_name_24fe12a7_like;
       public            postgres    false    240         �           1259    86200 5   ludorecherche_multi_add_on_artists_artist_id_b04b65bc    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_artists_artist_id_b04b65bc ON public.ludorecherche_multi_add_on_artists USING btree (artist_id);
 I   DROP INDEX public.ludorecherche_multi_add_on_artists_artist_id_b04b65bc;
       public            postgres    false    258         �           1259    86199 ;   ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7 ON public.ludorecherche_multi_add_on_artists USING btree (multi_add_on_id);
 O   DROP INDEX public.ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7;
       public            postgres    false    258         �           1259    86214 9   ludorecherche_multi_add_on_designers_designer_id_63ada047    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_designers_designer_id_63ada047 ON public.ludorecherche_multi_add_on_designers USING btree (designer_id);
 M   DROP INDEX public.ludorecherche_multi_add_on_designers_designer_id_63ada047;
       public            postgres    false    260         �           1259    86213 =   ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc ON public.ludorecherche_multi_add_on_designers USING btree (multi_add_on_id);
 Q   DROP INDEX public.ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc;
       public            postgres    false    260         �           1259    86185 1   ludorecherche_multi_add_on_difficulty_id_5c7d95a0    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_difficulty_id_5c7d95a0 ON public.ludorecherche_multi_add_on USING btree (difficulty_id);
 E   DROP INDEX public.ludorecherche_multi_add_on_difficulty_id_5c7d95a0;
       public            postgres    false    256         �           1259    86228 1   ludorecherche_multi_add_on_games_game_id_790ba75d    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_games_game_id_790ba75d ON public.ludorecherche_multi_add_on_games USING btree (game_id);
 E   DROP INDEX public.ludorecherche_multi_add_on_games_game_id_790ba75d;
       public            postgres    false    262         �           1259    86227 9   ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9 ON public.ludorecherche_multi_add_on_games USING btree (multi_add_on_id);
 M   DROP INDEX public.ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9;
       public            postgres    false    262         �           1259    86186 /   ludorecherche_multi_add_on_language_id_5be310e3    INDEX     }   CREATE INDEX ludorecherche_multi_add_on_language_id_5be310e3 ON public.ludorecherche_multi_add_on USING btree (language_id);
 C   DROP INDEX public.ludorecherche_multi_add_on_language_id_5be310e3;
       public            postgres    false    256         �           1259    86241 3   ludorecherche_multi_add_on_multi_add_on_id_25357591    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_multi_add_on_id_25357591 ON public.ludorecherche_multi_add_on_playing_mode USING btree (multi_add_on_id);
 G   DROP INDEX public.ludorecherche_multi_add_on_multi_add_on_id_25357591;
       public            postgres    false    264         �           1259    86184 -   ludorecherche_multi_add_on_name_7a883fb9_like    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_name_7a883fb9_like ON public.ludorecherche_multi_add_on USING btree (name varchar_pattern_ops);
 A   DROP INDEX public.ludorecherche_multi_add_on_name_7a883fb9_like;
       public            postgres    false    256         �           1259    86242 ?   ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256 ON public.ludorecherche_multi_add_on_playing_mode USING btree (playingmode_id);
 S   DROP INDEX public.ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256;
       public            postgres    false    264         �           1259    86255 >   ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669 ON public.ludorecherche_multi_add_on_publishers USING btree (multi_add_on_id);
 R   DROP INDEX public.ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669;
       public            postgres    false    266         �           1259    86256 ;   ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c    INDEX     �   CREATE INDEX ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c ON public.ludorecherche_multi_add_on_publishers USING btree (publisher_id);
 O   DROP INDEX public.ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c;
       public            postgres    false    266         �           1259    33094 ,   ludorecherche_playingmode_name_b9bc9f89_like    INDEX     �   CREATE INDEX ludorecherche_playingmode_name_b9bc9f89_like ON public.ludorecherche_playingmode USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.ludorecherche_playingmode_name_b9bc9f89_like;
       public            postgres    false    242         N           1259    22598 *   ludorecherche_publisher_name_865b1ff3_like    INDEX     �   CREATE INDEX ludorecherche_publisher_name_865b1ff3_like ON public.ludorecherche_publisher USING btree (name varchar_pattern_ops);
 >   DROP INDEX public.ludorecherche_publisher_name_865b1ff3_like;
       public            postgres    false    224         �           1259    33596 $   ludorecherche_tag_name_de380dee_like    INDEX     v   CREATE INDEX ludorecherche_tag_name_de380dee_like ON public.ludorecherche_tag USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.ludorecherche_tag_name_de380dee_like;
       public            postgres    false    252         �           2606    22404 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    203    3095         �           2606    22399 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3100    207    205         �           2606    22390 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    3090    201         �           2606    22419 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3100    205    211         �           2606    22414 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    209    3108         �           2606    22433 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3095    213    203         �           2606    22428 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    209    213    3108         �           2606    22452 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    201    215    3090         �           2606    22457 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3108    215    209         �           2606    33112 Q   ludorecherche_add_on_artists ludorecherche_add_on_add_on_id_06c1b675_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_06c1b675_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ludorecherche_add_on_artists DROP CONSTRAINT ludorecherche_add_on_add_on_id_06c1b675_fk_ludoreche;
       public          postgres    false    234    218    3139         �           2606    33122 S   ludorecherche_add_on_designers ludorecherche_add_on_add_on_id_91c9524f_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_91c9524f_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ludorecherche_add_on_designers DROP CONSTRAINT ludorecherche_add_on_add_on_id_91c9524f_fk_ludoreche;
       public          postgres    false    218    3139    236         �           2606    33137 T   ludorecherche_add_on_publishers ludorecherche_add_on_add_on_id_9ca3fd40_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_9ca3fd40_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.ludorecherche_add_on_publishers DROP CONSTRAINT ludorecherche_add_on_add_on_id_9ca3fd40_fk_ludoreche;
       public          postgres    false    238    3139    218         �           2606    33207 V   ludorecherche_add_on_playing_mode ludorecherche_add_on_add_on_id_ef1f0186_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_ef1f0186_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode DROP CONSTRAINT ludorecherche_add_on_add_on_id_ef1f0186_fk_ludoreche;
       public          postgres    false    244    218    3139         �           2606    33107 Q   ludorecherche_add_on_artists ludorecherche_add_on_artist_id_947142f9_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_artist_id_947142f9_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ludorecherche_add_on_artists DROP CONSTRAINT ludorecherche_add_on_artist_id_947142f9_fk_ludoreche;
       public          postgres    false    220    3144    234         �           2606    33117 U   ludorecherche_add_on_designers ludorecherche_add_on_designer_id_c16eab7d_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_designer_id_c16eab7d_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.ludorecherche_add_on_designers DROP CONSTRAINT ludorecherche_add_on_designer_id_c16eab7d_fk_ludoreche;
       public          postgres    false    236    222    3149         �           2606    33555 M   ludorecherche_add_on ludorecherche_add_on_difficulty_id_36e9a090_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_difficulty_id_36e9a090_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.ludorecherche_add_on DROP CONSTRAINT ludorecherche_add_on_difficulty_id_36e9a090_fk_ludoreche;
       public          postgres    false    250    218    3226         �           2606    33127 S   ludorecherche_add_on ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ludorecherche_add_on DROP CONSTRAINT ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id;
       public          postgres    false    3161    218    226         �           2606    33183 K   ludorecherche_add_on ludorecherche_add_on_language_id_5573aafd_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_language_id_5573aafd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.ludorecherche_add_on DROP CONSTRAINT ludorecherche_add_on_language_id_5573aafd_fk_ludoreche;
       public          postgres    false    218    240    3202         �           2606    33212 [   ludorecherche_add_on_playing_mode ludorecherche_add_on_playingmode_id_12919a41_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playingmode_id_12919a41_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode DROP CONSTRAINT ludorecherche_add_on_playingmode_id_12919a41_fk_ludoreche;
       public          postgres    false    244    242    3207         �           2606    33132 W   ludorecherche_add_on_publishers ludorecherche_add_on_publisher_id_14abff3e_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_publisher_id_14abff3e_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_add_on_publishers DROP CONSTRAINT ludorecherche_add_on_publisher_id_14abff3e_fk_ludoreche;
       public          postgres    false    224    3154    238         �           2606    33142 O   ludorecherche_game_artists ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche;
       public          postgres    false    3144    220    228         �           2606    33147 M   ludorecherche_game_artists ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche;
       public          postgres    false    3161    228    226         �           2606    33152 S   ludorecherche_game_designers ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche;
       public          postgres    false    3149    222    230         �           2606    33157 O   ludorecherche_game_designers ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche;
       public          postgres    false    3161    226    230         �           2606    33571 I   ludorecherche_game ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche;
       public          postgres    false    226    250    3226         �           2606    33162 G   ludorecherche_game ludorecherche_game_language_id_38e7eecd_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_language_id_38e7eecd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_language_id_38e7eecd_fk_ludoreche;
       public          postgres    false    3202    226    240         �           2606    33248 R   ludorecherche_game_playing_mode ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche;
       public          postgres    false    226    246    3161         �           2606    33177 P   ludorecherche_game_publishers ludorecherche_game_p_game_id_a425abf8_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_game_id_a425abf8_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_p_game_id_a425abf8_fk_ludoreche;
       public          postgres    false    232    3161    226         �           2606    33243 Y   ludorecherche_game_playing_mode ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche;
       public          postgres    false    3207    246    242         �           2606    33172 U   ludorecherche_game_publishers ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche;
       public          postgres    false    232    3154    224         �           2606    33599 I   ludorecherche_game_tag ludorecherche_game_t_game_id_065ca217_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_t_game_id_065ca217_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_t_game_id_065ca217_fk_ludoreche;
       public          postgres    false    226    3161    254         �           2606    33604 U   ludorecherche_game_tag ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id FOREIGN KEY (tag_id) REFERENCES public.ludorecherche_tag(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id;
       public          postgres    false    252    254    3231         �           2606    86194 W   ludorecherche_multi_add_on_artists ludorecherche_multi__artist_id_b04b65bc_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi__artist_id_b04b65bc_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists DROP CONSTRAINT ludorecherche_multi__artist_id_b04b65bc_fk_ludoreche;
       public          postgres    false    3144    258    220         �           2606    86208 [   ludorecherche_multi_add_on_designers ludorecherche_multi__designer_id_63ada047_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi__designer_id_63ada047_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers DROP CONSTRAINT ludorecherche_multi__designer_id_63ada047_fk_ludoreche;
       public          postgres    false    260    222    3149         �           2606    86174 S   ludorecherche_multi_add_on ludorecherche_multi__difficulty_id_5c7d95a0_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi__difficulty_id_5c7d95a0_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ludorecherche_multi_add_on DROP CONSTRAINT ludorecherche_multi__difficulty_id_5c7d95a0_fk_ludoreche;
       public          postgres    false    3226    256    250         �           2606    86222 S   ludorecherche_multi_add_on_games ludorecherche_multi__game_id_790ba75d_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi__game_id_790ba75d_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games DROP CONSTRAINT ludorecherche_multi__game_id_790ba75d_fk_ludoreche;
       public          postgres    false    262    226    3161         �           2606    86179 Q   ludorecherche_multi_add_on ludorecherche_multi__language_id_5be310e3_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi__language_id_5be310e3_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ludorecherche_multi_add_on DROP CONSTRAINT ludorecherche_multi__language_id_5be310e3_fk_ludoreche;
       public          postgres    false    3202    256    240         �           2606    86245 `   ludorecherche_multi_add_on_publishers ludorecherche_multi__multi_add_on_id_22811669_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_22811669_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers DROP CONSTRAINT ludorecherche_multi__multi_add_on_id_22811669_fk_ludoreche;
       public          postgres    false    256    3244    266         �           2606    86231 b   ludorecherche_multi_add_on_playing_mode ludorecherche_multi__multi_add_on_id_25357591_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_25357591_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode DROP CONSTRAINT ludorecherche_multi__multi_add_on_id_25357591_fk_ludoreche;
       public          postgres    false    3244    256    264         �           2606    86203 _   ludorecherche_multi_add_on_designers ludorecherche_multi__multi_add_on_id_5b1af8fc_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_5b1af8fc_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers DROP CONSTRAINT ludorecherche_multi__multi_add_on_id_5b1af8fc_fk_ludoreche;
       public          postgres    false    256    260    3244         �           2606    86189 ]   ludorecherche_multi_add_on_artists ludorecherche_multi__multi_add_on_id_8c054ca7_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_8c054ca7_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists DROP CONSTRAINT ludorecherche_multi__multi_add_on_id_8c054ca7_fk_ludoreche;
       public          postgres    false    256    258    3244         �           2606    86217 [   ludorecherche_multi_add_on_games ludorecherche_multi__multi_add_on_id_9f3c31b9_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_9f3c31b9_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_games DROP CONSTRAINT ludorecherche_multi__multi_add_on_id_9f3c31b9_fk_ludoreche;
       public          postgres    false    256    262    3244         �           2606    86236 a   ludorecherche_multi_add_on_playing_mode ludorecherche_multi__playingmode_id_3de7a256_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi__playingmode_id_3de7a256_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode DROP CONSTRAINT ludorecherche_multi__playingmode_id_3de7a256_fk_ludoreche;
       public          postgres    false    3207    264    242         �           2606    86250 ]   ludorecherche_multi_add_on_publishers ludorecherche_multi__publisher_id_ca696d8c_fk_ludoreche    FK CONSTRAINT     �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi__publisher_id_ca696d8c_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers DROP CONSTRAINT ludorecherche_multi__publisher_id_ca696d8c_fk_ludoreche;
       public          postgres    false    3154    224    266         3454.dat                                                                                            0000600 0004000 0002000 00000000005 14034054434 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3456.dat                                                                                            0000600 0004000 0002000 00000000005 14034054434 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3452.dat                                                                                            0000600 0004000 0002000 00000004630 14034054434 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add auteur	1	add_designer
2	Can change auteur	1	change_designer
3	Can delete auteur	1	delete_designer
4	Can view auteur	1	view_designer
5	Can add illustrateur	2	add_artist
6	Can change illustrateur	2	change_artist
7	Can delete illustrateur	2	delete_artist
8	Can view illustrateur	2	view_artist
9	Can add éditeur	3	add_publisher
10	Can change éditeur	3	change_publisher
11	Can delete éditeur	3	delete_publisher
12	Can view éditeur	3	view_publisher
13	Can add langue	4	add_language
14	Can change langue	4	change_language
15	Can delete langue	4	delete_language
16	Can view langue	4	view_language
17	Can add type	5	add_playingmode
18	Can change type	5	change_playingmode
19	Can delete type	5	delete_playingmode
20	Can view type	5	view_playingmode
21	Can add jeu	6	add_game
22	Can change jeu	6	change_game
23	Can delete jeu	6	delete_game
24	Can view jeu	6	view_game
25	Can add extension	7	add_add_on
26	Can change extension	7	change_add_on
27	Can delete extension	7	delete_add_on
28	Can view extension	7	view_add_on
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	9	add_permission
34	Can change permission	9	change_permission
35	Can delete permission	9	delete_permission
36	Can view permission	9	view_permission
37	Can add group	10	add_group
38	Can change group	10	change_group
39	Can delete group	10	delete_group
40	Can view group	10	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
57	Can add difficulté	15	add_difficulty
58	Can change difficulté	15	change_difficulty
59	Can delete difficulté	15	delete_difficulty
60	Can view difficulté	15	view_difficulty
61	Can add étiquettes	16	add_tag
62	Can change étiquettes	16	change_tag
63	Can delete étiquettes	16	delete_tag
64	Can view étiquettes	16	view_tag
65	Can add extension	17	add_multi_add_on
66	Can change extension	17	change_multi_add_on
67	Can delete extension	17	delete_multi_add_on
68	Can view extension	17	view_multi_add_on
\.


                                                                                                        3458.dat                                                                                            0000600 0004000 0002000 00000000266 14034054434 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pbkdf2_sha256$216000$agGTW3d8yuVR$ZPd+KkhCuIE1oYBlY7hVHDleO09BbZPzAtNHI5Wk+Ik=	2021-04-07 10:13:35.361793+02	t	wolgan			wolgan_4@hotmail.com	t	t	2021-04-05 11:31:15.543428+02
\.


                                                                                                                                                                                                                                                                                                                                          3460.dat                                                                                            0000600 0004000 0002000 00000000005 14034054434 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3462.dat                                                                                            0000600 0004000 0002000 00000000005 14034054434 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3464.dat                                                                                            0000600 0004000 0002000 00000022542 14034054434 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2021-04-05 14:47:09.392458+02	1	Reiner Knizia	1	[{"added": {}}]	7	1
2	2021-04-05 14:47:28.982261+02	2	Darwin Kastle	1	[{"added": {}}]	7	1
3	2021-04-05 14:47:38.97279+02	3	Robert Dougherty	1	[{"added": {}}]	7	1
4	2021-04-05 14:48:05.122523+02	4	Holger Bösch	1	[{"added": {}}]	7	1
5	2021-04-05 14:48:15.399619+02	5	Nicolas Smeers	1	[{"added": {}}]	7	1
6	2021-04-05 14:54:31.264638+02	1	Bernard Skopnik	1	[{"added": {}}]	8	1
7	2021-04-05 14:55:30.649104+02	2	Randy Delven	1	[{"added": {}}]	8	1
8	2021-04-05 14:55:42.818103+02	3	Vito Guesualdi	1	[{"added": {}}]	8	1
9	2021-04-05 14:56:18.302689+02	4	Antonis Papantoniou	1	[{"added": {}}]	8	1
10	2021-04-05 14:56:53.567694+02	5	Francois Bruel	1	[{"added": {}}]	8	1
11	2021-04-05 14:57:28.492276+02	6	Guillaume Ducos	1	[{"added": {}}]	8	1
12	2021-04-05 14:57:46.424805+02	7	Giuseppe Severino	1	[{"added": {}}]	8	1
13	2021-04-05 14:58:07.087351+02	8	Arthur Bozonnet	1	[{"added": {}}]	8	1
14	2021-04-05 14:58:19.710217+02	9	Bertrand Daine	1	[{"added": {}}]	8	1
15	2021-04-05 14:59:07.719434+02	10	Arthur Loyen	1	[{"added": {}}]	8	1
16	2021-04-05 14:59:21.370057+02	11	Vianney Carvalho	1	[{"added": {}}]	8	1
17	2021-04-05 14:59:34.440786+02	12	Amandine Bastin	1	[{"added": {}}]	8	1
18	2021-04-05 15:00:26.088567+02	1	Asmodée	1	[{"added": {}}]	11	1
19	2021-04-05 15:01:35.229374+02	2	iello	1	[{"added": {}}]	11	1
20	2021-04-05 15:02:00.158212+02	3	Azao Games	1	[{"added": {}}]	11	1
21	2021-04-05 15:05:50.231995+02	4	White Wizard Games	1	[{"added": {}}]	11	1
22	2021-04-05 15:10:26.433345+02	1	Black Stories 2	1	[{"added": {}}]	10	1
23	2021-04-05 15:11:23.008133+02	1	Black Stories 2	2	[]	10	1
24	2021-04-05 15:15:24.523435+02	2	Ultrium Sphere : sub'primal sphere	1	[{"added": {}}]	10	1
25	2021-04-05 15:17:25.572867+02	3	Ultrium Sphere : tëra nëva sphere	1	[{"added": {}}]	10	1
26	2021-04-05 15:20:48.433783+02	4	Hero Realms	1	[{"added": {}}]	10	1
27	2021-04-05 15:24:23.870134+02	5	Camelot	1	[{"added": {}}]	10	1
28	2021-04-05 15:39:44.436496+02	6	Masao Suganuma	1	[{"added": {}}]	7	1
29	2021-04-05 15:40:05.825719+02	13	Noboru Hotta	1	[{"added": {}}]	8	1
30	2021-04-05 15:40:25.066285+02	5	MGA	1	[{"added": {}}]	11	1
31	2021-04-05 15:40:48.76601+02	6	Minivilles	1	[{"added": {}}]	10	1
32	2021-04-05 15:42:56.064869+02	1	Minivilles: 5-6 extensions	1	[{"added": {}}]	9	1
33	2021-04-05 16:01:37.863497+02	6	Minivilles	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
34	2021-04-05 16:02:04.316088+02	5	Camelot	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
35	2021-04-05 16:02:14.637509+02	4	Hero Realms	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
36	2021-04-05 16:02:27.059336+02	3	Ultrium Sphere : tëra nëva sphere	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
37	2021-04-05 16:02:40.395211+02	2	Ultrium Sphere : sub'primal sphere	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
38	2021-04-05 16:02:45.661218+02	1	Black Stories 2	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
39	2021-04-05 16:10:32.73248+02	4	Hero Realms	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
40	2021-04-06 10:51:42.939381+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["URL de l'image"]}}]	9	1
41	2021-04-06 11:43:16.178855+02	6	Minivilles	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
42	2021-04-06 11:43:24.192439+02	5	Camelot	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
43	2021-04-06 11:43:32.381572+02	4	Hero Realms	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
44	2021-04-06 11:43:46.521327+02	3	Ultrium Sphere : tëra nëva sphere	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
45	2021-04-06 11:43:57.251592+02	2	Ultrium Sphere : sub'primal sphere	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
46	2021-04-06 11:44:20.803623+02	1	Black Stories 2	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
47	2021-04-06 16:50:59.374848+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["URL de l'image"]}}]	9	1
48	2021-04-06 16:55:49.592604+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["URL de l'image"]}}]	9	1
49	2021-04-07 09:51:38.172315+02	1	Français	1	[{"added": {}}]	12	1
50	2021-04-07 09:51:42.779161+02	2	Anglais	1	[{"added": {}}]	12	1
51	2021-04-07 09:55:24.172958+02	1	Individuel	1	[{"added": {}}]	13	1
52	2021-04-07 09:55:29.739197+02	2	Associatif	1	[{"added": {}}]	13	1
53	2021-04-07 09:55:35.624234+02	3	Coopératif	1	[{"added": {}}]	13	1
54	2021-04-07 09:55:41.845547+02	4	Compétitif	1	[{"added": {}}]	13	1
55	2021-04-07 10:08:53.123692+02	6	Minivilles	2	[{"changed": {"fields": ["Language", "Playing mode", "\\u00c2ge"]}}]	10	1
56	2021-04-07 10:27:09.690443+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Type"]}}]	9	1
57	2021-04-07 10:45:52.722122+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Langue"]}}]	9	1
58	2021-04-07 10:56:15.214864+02	6	Minivilles	2	[{"changed": {"fields": ["Type"]}}]	10	1
59	2021-04-07 10:58:31.701978+02	5	Camelot	2	[{"changed": {"fields": ["Type"]}}]	10	1
60	2021-04-07 10:58:37.958699+02	5	Camelot	2	[]	10	1
61	2021-04-07 10:58:43.232991+02	5	Camelot	2	[{"changed": {"fields": ["Langue"]}}]	10	1
62	2021-04-07 10:59:00.75842+02	4	Hero Realms	2	[{"changed": {"fields": ["Langue"]}}]	10	1
63	2021-04-07 11:01:49.047815+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Type"]}}]	9	1
64	2021-04-07 11:13:58.561676+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Langue"]}}]	9	1
65	2021-04-07 11:14:28.612212+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Langue"]}}]	9	1
66	2021-04-07 11:21:45.597298+02	1	Minivilles: 5-6 extensions	2	[]	9	1
67	2021-04-07 11:24:07.52864+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Nombre de joueur maximum"]}}]	9	1
68	2021-04-07 11:28:34.40077+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Nombre de joueur maximum"]}}]	9	1
69	2021-04-07 11:36:35.80821+02	6	Minivilles	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
70	2021-04-07 11:36:43.198622+02	5	Camelot	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
71	2021-04-07 11:36:49.089105+02	4	Hero Realms	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
72	2021-04-07 11:37:01.618938+02	3	Ultrium Sphere : tëra nëva sphere	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
73	2021-04-07 11:37:10.741248+02	2	Ultrium Sphere : sub'primal sphere	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
74	2021-04-07 11:37:24.038868+02	1	Black Stories 2	2	[]	10	1
75	2021-04-07 15:43:03.017996+02	1	Famille	1	[{"added": {}}]	15	1
76	2021-04-07 15:45:19.521515+02	7	Minivilles	1	[{"added": {}}]	6	1
77	2021-04-07 15:47:14.975335+02	2	Minivilles: 5-6 Extension	1	[{"added": {}}]	7	1
78	2021-04-07 16:10:27.564838+02	2	vétéran	1	[{"added": {}}]	15	1
79	2021-04-07 16:11:51.602636+02	7	Minivilles	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	6	1
80	2021-04-07 16:24:31.664331+02	1	Construction	1	[{"added": {}}]	16	1
81	2021-04-07 16:24:41.454318+02	2	Gestion de ressource	1	[{"added": {}}]	16	1
82	2021-04-07 19:34:14.774011+02	7	Minivilles	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
83	2021-04-08 10:43:15.831313+02	7	Minivilles	2	[{"changed": {"fields": ["Nombre de joueurs maximum"]}}]	6	1
84	2021-04-08 10:44:42.853519+02	8	test	1	[{"added": {}}]	6	1
85	2021-04-08 10:45:31.042001+02	8	test	3		6	1
86	2021-04-08 10:59:42.717871+02	9	test	1	[{"added": {}}]	6	1
87	2021-04-08 11:10:48.572291+02	9	test	3		6	1
88	2021-04-08 13:32:03.77167+02	3	Médieval fantastique	1	[{"added": {}}]	16	1
89	2021-04-08 13:32:16.277092+02	4	Exploration de donjon	1	[{"added": {}}]	16	1
90	2021-04-08 13:33:47.00541+02	5	Jeu à campagne	1	[{"added": {}}]	16	1
91	2021-04-08 13:33:53.39473+02	6	Pathfinder	1	[{"added": {}}]	16	1
92	2021-04-08 13:34:19.737308+02	7	Jeu de rôle	1	[{"added": {}}]	16	1
93	2021-04-08 13:40:55.710085+02	7	Mike Selinker	1	[{"added": {}}]	1	1
94	2021-04-08 13:41:19.380257+02	14	Daryl Mandryk	1	[{"added": {}}]	2	1
95	2021-04-08 13:41:27.748455+02	6	Paizo	1	[{"added": {}}]	3	1
96	2021-04-08 13:41:39.139258+02	7	Black Book	1	[{"added": {}}]	3	1
97	2021-04-08 13:42:18.337668+02	10	Pathfinder le jeu de cartes: skull and shackles	1	[{"added": {}}]	6	1
98	2021-04-08 13:49:43.914954+02	10	Pathfinder le jeu de cartes: skull and shackles	2	[]	6	1
99	2021-04-08 13:57:28.556885+02	15	Wayne Reynolds	1	[{"added": {}}]	2	1
100	2021-04-08 13:58:14.710035+02	3	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	1	[{"added": {}}]	7	1
101	2021-04-08 14:01:29.87553+02	3	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	2	[]	7	1
102	2021-04-08 14:06:28.678487+02	8	Deck-building	1	[{"added": {}}]	16	1
103	2021-04-08 14:08:37.142105+02	16	Noah Bradley	1	[{"added": {}}]	2	1
104	2021-04-08 14:08:54.479821+02	17	Vincent Dutrait	1	[{"added": {}}]	2	1
105	2021-04-08 14:10:42.274448+02	11	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	1	[{"added": {}}]	6	1
106	2021-04-08 14:15:19.240051+02	4	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes boite d'extension	1	[{"added": {}}]	7	1
107	2021-04-08 14:46:24.279589+02	1	Pathfinder le jeu de cartes:boites des decks de classe	1	[{"added": {}}]	17	1
108	2021-04-08 16:21:23.518925+02	1	Pathfinder le jeu de cartes:boites des decks de classe	1	[{"added": {}}]	17	1
109	2021-04-08 16:23:31.788357+02	1	Pathfinder le jeu de cartes:boites des decks de classe	2	[]	17	1
110	2021-04-08 17:12:01.663911+02	1	Pathfinder le jeu de cartes:boites des decks de classe	2	[]	17	1
111	2021-04-09 12:09:57.03675+02	12	test	1	[{"added": {}}]	6	1
112	2021-04-09 12:10:36.110646+02	12	test	3		6	1
\.


                                                                                                                                                              3450.dat                                                                                            0000600 0004000 0002000 00000000555 14034054434 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ludorecherche	designer
2	ludorecherche	artist
3	ludorecherche	publisher
4	ludorecherche	language
5	ludorecherche	playingmode
6	ludorecherche	game
7	ludorecherche	add_on
8	admin	logentry
9	auth	permission
10	auth	group
11	auth	user
12	contenttypes	contenttype
13	sessions	session
15	ludorecherche	difficulty
16	ludorecherche	tag
17	ludorecherche	multi_add_on
\.


                                                                                                                                                   3497.dat                                                                                            0000600 0004000 0002000 00000005316 14034054434 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2021-04-03 15:51:10.08459+02
2	auth	0001_initial	2021-04-03 15:51:10.148596+02
3	admin	0001_initial	2021-04-03 15:51:10.221586+02
4	admin	0002_logentry_remove_auto_add	2021-04-03 15:51:10.239587+02
5	admin	0003_logentry_add_action_flag_choices	2021-04-03 15:51:10.246587+02
6	contenttypes	0002_remove_content_type_name	2021-04-03 15:51:10.262589+02
7	auth	0002_alter_permission_name_max_length	2021-04-03 15:51:10.27159+02
8	auth	0003_alter_user_email_max_length	2021-04-03 15:51:10.292626+02
9	auth	0004_alter_user_username_opts	2021-04-03 15:51:10.304586+02
10	auth	0005_alter_user_last_login_null	2021-04-03 15:51:10.311585+02
11	auth	0006_require_contenttypes_0002	2021-04-03 15:51:10.314588+02
12	auth	0007_alter_validators_add_error_messages	2021-04-03 15:51:10.321586+02
13	auth	0008_alter_user_username_max_length	2021-04-03 15:51:10.34453+02
14	auth	0009_alter_user_last_name_max_length	2021-04-03 15:51:10.353487+02
15	auth	0010_alter_group_name_max_length	2021-04-03 15:51:10.362489+02
16	auth	0011_update_proxy_permissions	2021-04-03 15:51:10.369689+02
17	auth	0012_alter_user_first_name_max_length	2021-04-03 15:51:10.378699+02
18	sessions	0001_initial	2021-04-03 15:51:10.390551+02
19	ludorecherche	0001_initial	2021-04-05 11:17:26.684304+02
20	ludorecherche	0002_auto_20210405_1453	2021-04-05 14:53:53.770021+02
21	ludorecherche	0003_auto_20210405_1530	2021-04-05 15:30:39.878963+02
22	ludorecherche	0004_auto_20210406_1142	2021-04-06 11:42:25.681135+02
23	ludorecherche	0005_auto_20210407_0947	2021-04-07 09:48:46.996146+02
24	ludorecherche	0006_auto_20210407_0948	2021-04-07 09:48:47.028255+02
25	ludorecherche	0007_auto_20210407_1026	2021-04-07 10:26:36.35283+02
26	ludorecherche	0008_add_on_language	2021-04-07 10:45:38.826597+02
27	ludorecherche	0009_auto_20210407_1055	2021-04-07 10:55:37.354852+02
28	ludorecherche	0010_auto_20210407_1057	2021-04-07 10:58:14.715381+02
29	ludorecherche	0011_auto_20210407_1057	2021-04-07 10:58:14.73738+02
30	ludorecherche	0012_auto_20210407_1123	2021-04-07 11:23:45.47275+02
31	ludorecherche	0013_auto_20210407_1123	2021-04-07 11:23:45.545747+02
32	ludorecherche	0014_delete_search_form	2021-04-07 13:57:04.326856+02
33	ludorecherche	0015_auto_20210407_1532	2021-04-07 15:32:39.6145+02
34	ludorecherche	0016_auto_20210407_1535	2021-04-07 15:35:38.838503+02
35	ludorecherche	0017_auto_20210407_1614	2021-04-07 16:14:33.673486+02
36	ludorecherche	0018_auto_20210408_1434	2021-04-08 14:35:06.355259+02
37	ludorecherche	0018_multi_add_on	2021-04-08 16:02:58.575728+02
38	ludorecherche	0019_auto_20210408_1559	2021-04-08 16:02:58.654764+02
39	ludorecherche	0020_auto_20210409_0952	2021-04-09 09:53:09.342044+02
40	ludorecherche	0021_auto_20210409_1030	2021-04-09 10:30:41.730034+02
\.


                                                                                                                                                                                                                                                                                                                  3465.dat                                                                                            0000600 0004000 0002000 00000001110 14034054434 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        bgtxe95byiyw342hva1hdqotpri6qyuq	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lTLaH:XVD922rRWZz0dBj-3yeMQV5989sKSsj2sCYl-OVhhOA	2021-04-19 11:31:49.645542+02
aj17pwr5re3bl3xlb5r1haxds7c0akd1	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lU3Jf:9J3Yq_FZmHaTs4fTbbbXOXZpgcqJ6D-6OzFqtmXcu8A	2021-04-21 10:13:35.36379+02
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                        3467.dat                                                                                            0000600 0004000 0002000 00000001261 14034054434 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Minivilles: 5-6 Extension	2	6	30 min	1	2021-04-07 15:47:14.960336+02	img/minivillesext56.jpg	https://boardgamegeek.com/boardgame/185279/minivilles-5-6-extension	7	1	\N
3	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	1	6	90 min	2	2021-04-08 13:58:14.69509+02	img/pf_ljc_sands_be.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-skull-shackles-boite-d-extensions	10	1	\N
4	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes boite d'extension	1	6	90 min	2	2021-04-08 14:15:19.227054+02	img/pf_ljdc_edsdr_be.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-jeu-de-cartes-l-eveil-des-seigneurs-des-runes-jeu-de-base-1	11	1	\N
\.


                                                                                                                                                                                                                                                                                                                                               3483.dat                                                                                            0000600 0004000 0002000 00000000041 14034054434 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2	13
3	3	15
4	4	16
5	4	17
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3485.dat                                                                                            0000600 0004000 0002000 00000000027 14034054434 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2	6
3	3	7
4	4	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3493.dat                                                                                            0000600 0004000 0002000 00000000043 14034054434 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2	4
3	3	1
4	3	3
5	4	1
6	4	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3487.dat                                                                                            0000600 0004000 0002000 00000000051 14034054434 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	2	1
4	2	5
5	3	6
6	3	7
7	4	6
8	4	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3469.dat                                                                                            0000600 0004000 0002000 00000000464 14034054434 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Bernard Skopnik
2	Randy Delven
3	Vito Guesualdi
4	Antonis Papantoniou
5	Francois Bruel
6	Guillaume Ducos
7	Giuseppe Severino
8	Arthur Bozonnet
9	Bertrand Daine
10	Arthur Loyen
11	Vianney Carvalho
12	Amandine Bastin
13	Noboru Hotta
14	Daryl Mandryk
15	Wayne Reynolds
16	Noah Bradley
17	Vincent Dutrait
\.


                                                                                                                                                                                                            3471.dat                                                                                            0000600 0004000 0002000 00000000172 14034054434 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Reiner Knizia
2	Darwin Kastle
3	Robert Dougherty
4	Holger Bösch
5	Nicolas Smeers
6	Masao Suganuma
7	Mike Selinker
\.


                                                                                                                                                                                                                                                                                                                                                                                                      3499.dat                                                                                            0000600 0004000 0002000 00000000033 14034054434 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Famille
2	vétéran
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3475.dat                                                                                            0000600 0004000 0002000 00000001121 14034054434 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        7	Minivilles	2	4	30 min	1	2021-04-07 15:45:19.506514+02	img/minivilles.png	https://boardgamegeek.com/boardgame/143884/machi-koro	f	30	7	1
10	Pathfinder le jeu de cartes: skull and shackles	1	4	90 min	2	2021-04-08 13:42:18.320671+02	img/pf_ljc_sands.jpg	https://boardgamegeek.com/image/2268287/pathfinder-adventure-card-game-skull-shackles-base	f	90	14	1
11	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	1	4	90 min	2	2021-04-08 14:10:42.256444+02	img/pf_ljdc_edsdr.jpg	https://boardgamegeek.com/boardgame/133038/pathfinder-adventure-card-game-rise-runelords-base	f	90	14	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                               3477.dat                                                                                            0000600 0004000 0002000 00000000050 14034054434 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        21	7	13
22	10	14
23	11	16
24	11	17
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3479.dat                                                                                            0000600 0004000 0002000 00000000032 14034054434 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	7	6
9	10	7
10	11	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3495.dat                                                                                            0000600 0004000 0002000 00000000047 14034054434 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	7	4
4	10	1
5	10	3
6	11	1
7	11	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3481.dat                                                                                            0000600 0004000 0002000 00000000062 14034054434 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        9	7	1
10	7	5
11	10	6
12	10	7
13	11	6
14	11	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3503.dat                                                                                            0000600 0004000 0002000 00000000152 14034054434 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	7	1
2	7	2
3	10	3
4	10	4
5	10	5
6	10	6
7	10	7
8	11	2
9	11	3
10	11	4
11	11	5
12	11	6
13	11	7
14	11	8
\.


                                                                                                                                                                                                                                                                                                                                                                                                                      3489.dat                                                                                            0000600 0004000 0002000 00000000033 14034054434 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Français
2	Anglais
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3505.dat                                                                                            0000600 0004000 0002000 00000000337 14034054434 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Pathfinder le jeu de cartes:boites des decks de classe	1	4	90 min	2021-04-08 16:21:23.494914+02	img/pf_ljdc_bdc.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-boite-de-decks-de-classe	2	1	\N
\.


                                                                                                                                                                                                                                                                                                 3507.dat                                                                                            0000600 0004000 0002000 00000000014 14034054434 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	15
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3509.dat                                                                                            0000600 0004000 0002000 00000000013 14034054434 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3511.dat                                                                                            0000600 0004000 0002000 00000000023 14034054434 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	10
2	1	11
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3513.dat                                                                                            0000600 0004000 0002000 00000000021 14034054434 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1
2	1	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3515.dat                                                                                            0000600 0004000 0002000 00000000021 14034054434 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	6
2	1	7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3491.dat                                                                                            0000600 0004000 0002000 00000000073 14034054434 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Individuel
2	Associatif
3	Coopératif
4	Compétitif
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3473.dat                                                                                            0000600 0004000 0002000 00000000125 14034054434 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Asmodée
2	iello
3	Azao Games
4	White Wizard Games
5	MGA
6	Paizo
7	Black Book
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                           3501.dat                                                                                            0000600 0004000 0002000 00000000231 14034054434 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Construction
2	Gestion de ressource
3	Médieval fantastique
4	Exploration de donjon
5	Jeu à campagne
6	Pathfinder
7	Jeu de rôle
8	Deck-building
\.


                                                                                                                                                                                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000305766 14034054434 0015406 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE fil_rouge;
--
-- Name: fil_rouge; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE fil_rouge WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';


ALTER DATABASE fil_rouge OWNER TO postgres;

\connect fil_rouge

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: ludorecherche_add_on; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_add_on (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text NOT NULL,
    bgg_link text NOT NULL,
    game_id integer,
    language_id integer,
    age integer
);


ALTER TABLE public.ludorecherche_add_on OWNER TO postgres;

--
-- Name: ludorecherche_add_on_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_add_on_artists (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_add_on_artists OWNER TO postgres;

--
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_artists_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_artists_id_seq OWNED BY public.ludorecherche_add_on_artists.id;


--
-- Name: ludorecherche_add_on_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_add_on_designers (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_add_on_designers OWNER TO postgres;

--
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_designers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_designers_id_seq OWNED BY public.ludorecherche_add_on_designers.id;


--
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_id_seq OWNED BY public.ludorecherche_add_on.id;


--
-- Name: ludorecherche_add_on_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_add_on_playing_mode (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_add_on_playing_mode OWNER TO postgres;

--
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_playing_mode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_add_on_playing_mode.id;


--
-- Name: ludorecherche_add_on_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_add_on_publishers (
    id integer NOT NULL,
    add_on_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_add_on_publishers OWNER TO postgres;

--
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_publishers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_publishers_id_seq OWNED BY public.ludorecherche_add_on_publishers.id;


--
-- Name: ludorecherche_artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_artist (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_artist OWNER TO postgres;

--
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_artist_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_artist_id_seq OWNED BY public.ludorecherche_artist.id;


--
-- Name: ludorecherche_designer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_designer (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_designer OWNER TO postgres;

--
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_designer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_designer_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_designer_id_seq OWNED BY public.ludorecherche_designer.id;


--
-- Name: ludorecherche_difficulty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_difficulty (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_difficulty OWNER TO postgres;

--
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_difficulty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_difficulty_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_difficulty_id_seq OWNED BY public.ludorecherche_difficulty.id;


--
-- Name: ludorecherche_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text NOT NULL,
    bgg_link text NOT NULL,
    by_player boolean NOT NULL,
    max_time integer,
    age integer,
    language_id integer
);


ALTER TABLE public.ludorecherche_game OWNER TO postgres;

--
-- Name: ludorecherche_game_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_artists (
    id integer NOT NULL,
    game_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_artists OWNER TO postgres;

--
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_artists_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_artists_id_seq OWNED BY public.ludorecherche_game_artists.id;


--
-- Name: ludorecherche_game_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_designers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_designers OWNER TO postgres;

--
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_designers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_designers_id_seq OWNED BY public.ludorecherche_game_designers.id;


--
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_id_seq OWNED BY public.ludorecherche_game.id;


--
-- Name: ludorecherche_game_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_playing_mode (
    id integer NOT NULL,
    game_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_playing_mode OWNER TO postgres;

--
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_playing_mode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_playing_mode_id_seq OWNED BY public.ludorecherche_game_playing_mode.id;


--
-- Name: ludorecherche_game_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_publishers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_publishers OWNER TO postgres;

--
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_publishers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_publishers_id_seq OWNED BY public.ludorecherche_game_publishers.id;


--
-- Name: ludorecherche_game_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_tag (
    id integer NOT NULL,
    game_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_tag OWNER TO postgres;

--
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_tag_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_tag_id_seq OWNED BY public.ludorecherche_game_tag.id;


--
-- Name: ludorecherche_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_language (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_language OWNER TO postgres;

--
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_language_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_language_id_seq OWNED BY public.ludorecherche_language.id;


--
-- Name: ludorecherche_multi_add_on; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multi_add_on (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    created_at timestamp with time zone NOT NULL,
    picture text NOT NULL,
    bgg_link text NOT NULL,
    difficulty_id integer,
    language_id integer,
    age integer
);


ALTER TABLE public.ludorecherche_multi_add_on OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multi_add_on_artists (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multi_add_on_artists OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_artists_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq OWNED BY public.ludorecherche_multi_add_on_artists.id;


--
-- Name: ludorecherche_multi_add_on_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multi_add_on_designers (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multi_add_on_designers OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_designers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq OWNED BY public.ludorecherche_multi_add_on_designers.id;


--
-- Name: ludorecherche_multi_add_on_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multi_add_on_games (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multi_add_on_games OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_games_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_games_id_seq OWNED BY public.ludorecherche_multi_add_on_games.id;


--
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_id_seq OWNED BY public.ludorecherche_multi_add_on.id;


--
-- Name: ludorecherche_multi_add_on_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multi_add_on_playing_mode (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multi_add_on_playing_mode OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_playing_mode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_multi_add_on_playing_mode.id;


--
-- Name: ludorecherche_multi_add_on_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multi_add_on_publishers (
    id integer NOT NULL,
    multi_add_on_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multi_add_on_publishers OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_publishers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq OWNED BY public.ludorecherche_multi_add_on_publishers.id;


--
-- Name: ludorecherche_playingmode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_playingmode (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_playingmode OWNER TO postgres;

--
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_playingmode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_playingmode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_playingmode_id_seq OWNED BY public.ludorecherche_playingmode.id;


--
-- Name: ludorecherche_publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_publisher (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_publisher OWNER TO postgres;

--
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_publisher_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_publisher_id_seq OWNED BY public.ludorecherche_publisher.id;


--
-- Name: ludorecherche_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_tag (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_tag OWNER TO postgres;

--
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_tag_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_tag_id_seq OWNED BY public.ludorecherche_tag.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: ludorecherche_add_on id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_id_seq'::regclass);


--
-- Name: ludorecherche_add_on_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_artists_id_seq'::regclass);


--
-- Name: ludorecherche_add_on_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_designers_id_seq'::regclass);


--
-- Name: ludorecherche_add_on_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_playing_mode_id_seq'::regclass);


--
-- Name: ludorecherche_add_on_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_publishers_id_seq'::regclass);


--
-- Name: ludorecherche_artist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_artist_id_seq'::regclass);


--
-- Name: ludorecherche_designer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_designer_id_seq'::regclass);


--
-- Name: ludorecherche_difficulty id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_difficulty_id_seq'::regclass);


--
-- Name: ludorecherche_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_id_seq'::regclass);


--
-- Name: ludorecherche_game_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_artists_id_seq'::regclass);


--
-- Name: ludorecherche_game_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_designers_id_seq'::regclass);


--
-- Name: ludorecherche_game_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_playing_mode_id_seq'::regclass);


--
-- Name: ludorecherche_game_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_publishers_id_seq'::regclass);


--
-- Name: ludorecherche_game_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_tag_id_seq'::regclass);


--
-- Name: ludorecherche_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_language_id_seq'::regclass);


--
-- Name: ludorecherche_multi_add_on id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_id_seq'::regclass);


--
-- Name: ludorecherche_multi_add_on_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_artists_id_seq'::regclass);


--
-- Name: ludorecherche_multi_add_on_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_designers_id_seq'::regclass);


--
-- Name: ludorecherche_multi_add_on_games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_games ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_games_id_seq'::regclass);


--
-- Name: ludorecherche_multi_add_on_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_playing_mode_id_seq'::regclass);


--
-- Name: ludorecherche_multi_add_on_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_publishers_id_seq'::regclass);


--
-- Name: ludorecherche_playingmode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_playingmode_id_seq'::regclass);


--
-- Name: ludorecherche_publisher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_publisher_id_seq'::regclass);


--
-- Name: ludorecherche_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_tag_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3454.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3456.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3452.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3458.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3460.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3462.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3464.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3450.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3497.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3465.dat';

--
-- Data for Name: ludorecherche_add_on; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_add_on (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, language_id, age) FROM stdin;
\.
COPY public.ludorecherche_add_on (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, language_id, age) FROM '$$PATH$$/3467.dat';

--
-- Data for Name: ludorecherche_add_on_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_add_on_artists (id, add_on_id, artist_id) FROM stdin;
\.
COPY public.ludorecherche_add_on_artists (id, add_on_id, artist_id) FROM '$$PATH$$/3483.dat';

--
-- Data for Name: ludorecherche_add_on_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_add_on_designers (id, add_on_id, designer_id) FROM stdin;
\.
COPY public.ludorecherche_add_on_designers (id, add_on_id, designer_id) FROM '$$PATH$$/3485.dat';

--
-- Data for Name: ludorecherche_add_on_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_add_on_playing_mode (id, add_on_id, playingmode_id) FROM stdin;
\.
COPY public.ludorecherche_add_on_playing_mode (id, add_on_id, playingmode_id) FROM '$$PATH$$/3493.dat';

--
-- Data for Name: ludorecherche_add_on_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_add_on_publishers (id, add_on_id, publisher_id) FROM stdin;
\.
COPY public.ludorecherche_add_on_publishers (id, add_on_id, publisher_id) FROM '$$PATH$$/3487.dat';

--
-- Data for Name: ludorecherche_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_artist (id, name) FROM stdin;
\.
COPY public.ludorecherche_artist (id, name) FROM '$$PATH$$/3469.dat';

--
-- Data for Name: ludorecherche_designer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_designer (id, name) FROM stdin;
\.
COPY public.ludorecherche_designer (id, name) FROM '$$PATH$$/3471.dat';

--
-- Data for Name: ludorecherche_difficulty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_difficulty (id, name) FROM stdin;
\.
COPY public.ludorecherche_difficulty (id, name) FROM '$$PATH$$/3499.dat';

--
-- Data for Name: ludorecherche_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, language_id) FROM stdin;
\.
COPY public.ludorecherche_game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, language_id) FROM '$$PATH$$/3475.dat';

--
-- Data for Name: ludorecherche_game_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_artists (id, game_id, artist_id) FROM stdin;
\.
COPY public.ludorecherche_game_artists (id, game_id, artist_id) FROM '$$PATH$$/3477.dat';

--
-- Data for Name: ludorecherche_game_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_designers (id, game_id, designer_id) FROM stdin;
\.
COPY public.ludorecherche_game_designers (id, game_id, designer_id) FROM '$$PATH$$/3479.dat';

--
-- Data for Name: ludorecherche_game_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_playing_mode (id, game_id, playingmode_id) FROM stdin;
\.
COPY public.ludorecherche_game_playing_mode (id, game_id, playingmode_id) FROM '$$PATH$$/3495.dat';

--
-- Data for Name: ludorecherche_game_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_publishers (id, game_id, publisher_id) FROM stdin;
\.
COPY public.ludorecherche_game_publishers (id, game_id, publisher_id) FROM '$$PATH$$/3481.dat';

--
-- Data for Name: ludorecherche_game_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_tag (id, game_id, tag_id) FROM stdin;
\.
COPY public.ludorecherche_game_tag (id, game_id, tag_id) FROM '$$PATH$$/3503.dat';

--
-- Data for Name: ludorecherche_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_language (id, name) FROM stdin;
\.
COPY public.ludorecherche_language (id, name) FROM '$$PATH$$/3489.dat';

--
-- Data for Name: ludorecherche_multi_add_on; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multi_add_on (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, language_id, age) FROM stdin;
\.
COPY public.ludorecherche_multi_add_on (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, language_id, age) FROM '$$PATH$$/3505.dat';

--
-- Data for Name: ludorecherche_multi_add_on_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multi_add_on_artists (id, multi_add_on_id, artist_id) FROM stdin;
\.
COPY public.ludorecherche_multi_add_on_artists (id, multi_add_on_id, artist_id) FROM '$$PATH$$/3507.dat';

--
-- Data for Name: ludorecherche_multi_add_on_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multi_add_on_designers (id, multi_add_on_id, designer_id) FROM stdin;
\.
COPY public.ludorecherche_multi_add_on_designers (id, multi_add_on_id, designer_id) FROM '$$PATH$$/3509.dat';

--
-- Data for Name: ludorecherche_multi_add_on_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multi_add_on_games (id, multi_add_on_id, game_id) FROM stdin;
\.
COPY public.ludorecherche_multi_add_on_games (id, multi_add_on_id, game_id) FROM '$$PATH$$/3511.dat';

--
-- Data for Name: ludorecherche_multi_add_on_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multi_add_on_playing_mode (id, multi_add_on_id, playingmode_id) FROM stdin;
\.
COPY public.ludorecherche_multi_add_on_playing_mode (id, multi_add_on_id, playingmode_id) FROM '$$PATH$$/3513.dat';

--
-- Data for Name: ludorecherche_multi_add_on_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multi_add_on_publishers (id, multi_add_on_id, publisher_id) FROM stdin;
\.
COPY public.ludorecherche_multi_add_on_publishers (id, multi_add_on_id, publisher_id) FROM '$$PATH$$/3515.dat';

--
-- Data for Name: ludorecherche_playingmode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_playingmode (id, name) FROM stdin;
\.
COPY public.ludorecherche_playingmode (id, name) FROM '$$PATH$$/3491.dat';

--
-- Data for Name: ludorecherche_publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_publisher (id, name) FROM stdin;
\.
COPY public.ludorecherche_publisher (id, name) FROM '$$PATH$$/3473.dat';

--
-- Data for Name: ludorecherche_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_tag (id, name) FROM stdin;
\.
COPY public.ludorecherche_tag (id, name) FROM '$$PATH$$/3501.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 112, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 40, true);


--
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_artists_id_seq', 5, true);


--
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_designers_id_seq', 4, true);


--
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_id_seq', 4, true);


--
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_playing_mode_id_seq', 6, true);


--
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_publishers_id_seq', 8, true);


--
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_artist_id_seq', 17, true);


--
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_designer_id_seq', 7, true);


--
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_difficulty_id_seq', 2, true);


--
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_artists_id_seq', 24, true);


--
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_designers_id_seq', 14, true);


--
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_id_seq', 12, true);


--
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_playing_mode_id_seq', 7, true);


--
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_publishers_id_seq', 14, true);


--
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_tag_id_seq', 14, true);


--
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_language_id_seq', 2, true);


--
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_artists_id_seq', 1, true);


--
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_designers_id_seq', 1, true);


--
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_games_id_seq', 2, true);


--
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_id_seq', 1, true);


--
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_playing_mode_id_seq', 2, true);


--
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_publishers_id_seq', 2, true);


--
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_playingmode_id_seq', 4, true);


--
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_publisher_id_seq', 7, true);


--
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_tag_id_seq', 8, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: ludorecherche_add_on_artists ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq UNIQUE (add_on_id, artist_id);


--
-- Name: ludorecherche_add_on_artists ludorecherche_add_on_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_add_on_designers ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq UNIQUE (add_on_id, designer_id);


--
-- Name: ludorecherche_add_on_designers ludorecherche_add_on_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_designers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_add_on ludorecherche_add_on_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_name_key UNIQUE (name);


--
-- Name: ludorecherche_add_on ludorecherche_add_on_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_add_on_playing_mode ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq UNIQUE (add_on_id, playingmode_id);


--
-- Name: ludorecherche_add_on_playing_mode ludorecherche_add_on_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playing_mode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_add_on_publishers ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq UNIQUE (add_on_id, publisher_id);


--
-- Name: ludorecherche_add_on_publishers ludorecherche_add_on_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_publishers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_artist ludorecherche_artist_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_name_key UNIQUE (name);


--
-- Name: ludorecherche_artist ludorecherche_artist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_designer ludorecherche_designer_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_name_key UNIQUE (name);


--
-- Name: ludorecherche_designer ludorecherche_designer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_difficulty ludorecherche_difficulty_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_name_key UNIQUE (name);


--
-- Name: ludorecherche_difficulty ludorecherche_difficulty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_artists ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq UNIQUE (game_id, artist_id);


--
-- Name: ludorecherche_game_artists ludorecherche_game_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_designers ludorecherche_game_designers_game_id_designer_id_98196acb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_game_id_designer_id_98196acb_uniq UNIQUE (game_id, designer_id);


--
-- Name: ludorecherche_game_designers ludorecherche_game_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game ludorecherche_game_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_name_key UNIQUE (name);


--
-- Name: ludorecherche_game ludorecherche_game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq UNIQUE (game_id, playingmode_id);


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playing_mode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_publishers ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq UNIQUE (game_id, publisher_id);


--
-- Name: ludorecherche_game_publishers ludorecherche_game_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publishers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_tag ludorecherche_game_tag_game_id_tag_id_79514770_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_game_id_tag_id_79514770_uniq UNIQUE (game_id, tag_id);


--
-- Name: ludorecherche_game_tag ludorecherche_game_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_language ludorecherche_language_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_name_key UNIQUE (name);


--
-- Name: ludorecherche_language ludorecherche_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multi_add_on_artists ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq UNIQUE (multi_add_on_id, artist_id);


--
-- Name: ludorecherche_multi_add_on_designers ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq UNIQUE (multi_add_on_id, designer_id);


--
-- Name: ludorecherche_multi_add_on_games ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq UNIQUE (multi_add_on_id, game_id);


--
-- Name: ludorecherche_multi_add_on_playing_mode ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq UNIQUE (multi_add_on_id, playingmode_id);


--
-- Name: ludorecherche_multi_add_on_publishers ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq UNIQUE (multi_add_on_id, publisher_id);


--
-- Name: ludorecherche_multi_add_on_artists ludorecherche_multi_add_on_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi_add_on_artists_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multi_add_on_designers ludorecherche_multi_add_on_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi_add_on_designers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multi_add_on_games ludorecherche_multi_add_on_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi_add_on_games_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multi_add_on ludorecherche_multi_add_on_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi_add_on_name_key UNIQUE (name);


--
-- Name: ludorecherche_multi_add_on ludorecherche_multi_add_on_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi_add_on_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multi_add_on_playing_mode ludorecherche_multi_add_on_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add_on_playing_mode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multi_add_on_publishers ludorecherche_multi_add_on_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi_add_on_publishers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_playingmode ludorecherche_playingmode_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_name_key UNIQUE (name);


--
-- Name: ludorecherche_playingmode ludorecherche_playingmode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_publisher ludorecherche_publisher_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_name_key UNIQUE (name);


--
-- Name: ludorecherche_publisher ludorecherche_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_tag ludorecherche_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_name_key UNIQUE (name);


--
-- Name: ludorecherche_tag ludorecherche_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: ludorecherche_add_on_artists_add_on_id_06c1b675; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_artists_add_on_id_06c1b675 ON public.ludorecherche_add_on_artists USING btree (add_on_id);


--
-- Name: ludorecherche_add_on_artists_artist_id_947142f9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_artists_artist_id_947142f9 ON public.ludorecherche_add_on_artists USING btree (artist_id);


--
-- Name: ludorecherche_add_on_designers_add_on_id_91c9524f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_designers_add_on_id_91c9524f ON public.ludorecherche_add_on_designers USING btree (add_on_id);


--
-- Name: ludorecherche_add_on_designers_designer_id_c16eab7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_designers_designer_id_c16eab7d ON public.ludorecherche_add_on_designers USING btree (designer_id);


--
-- Name: ludorecherche_add_on_difficulty_id_36e9a090; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_difficulty_id_36e9a090 ON public.ludorecherche_add_on USING btree (difficulty_id);


--
-- Name: ludorecherche_add_on_game_id_fc9844ac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_game_id_fc9844ac ON public.ludorecherche_add_on USING btree (game_id);


--
-- Name: ludorecherche_add_on_language_id_5573aafd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_language_id_5573aafd ON public.ludorecherche_add_on USING btree (language_id);


--
-- Name: ludorecherche_add_on_name_d5b13084_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_name_d5b13084_like ON public.ludorecherche_add_on USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_add_on_playing_mode_add_on_id_ef1f0186; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_playing_mode_add_on_id_ef1f0186 ON public.ludorecherche_add_on_playing_mode USING btree (add_on_id);


--
-- Name: ludorecherche_add_on_playing_mode_playingmode_id_12919a41; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_playing_mode_playingmode_id_12919a41 ON public.ludorecherche_add_on_playing_mode USING btree (playingmode_id);


--
-- Name: ludorecherche_add_on_publishers_add_on_id_9ca3fd40; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_publishers_add_on_id_9ca3fd40 ON public.ludorecherche_add_on_publishers USING btree (add_on_id);


--
-- Name: ludorecherche_add_on_publishers_publisher_id_14abff3e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_publishers_publisher_id_14abff3e ON public.ludorecherche_add_on_publishers USING btree (publisher_id);


--
-- Name: ludorecherche_artist_name_7c60ea7e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_artist_name_7c60ea7e_like ON public.ludorecherche_artist USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_designer_name_36cdcde4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_designer_name_36cdcde4_like ON public.ludorecherche_designer USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_difficulty_name_e59ec408_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_difficulty_name_e59ec408_like ON public.ludorecherche_difficulty USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_game_artists_artist_id_3e5506bf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_artists_artist_id_3e5506bf ON public.ludorecherche_game_artists USING btree (artist_id);


--
-- Name: ludorecherche_game_artists_game_id_2ba0fcde; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_artists_game_id_2ba0fcde ON public.ludorecherche_game_artists USING btree (game_id);


--
-- Name: ludorecherche_game_designers_designer_id_8b4d087f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_designers_designer_id_8b4d087f ON public.ludorecherche_game_designers USING btree (designer_id);


--
-- Name: ludorecherche_game_designers_game_id_6d1526cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_designers_game_id_6d1526cc ON public.ludorecherche_game_designers USING btree (game_id);


--
-- Name: ludorecherche_game_difficulty_id_c4f6b87a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_difficulty_id_c4f6b87a ON public.ludorecherche_game USING btree (difficulty_id);


--
-- Name: ludorecherche_game_language_id_38e7eecd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_language_id_38e7eecd ON public.ludorecherche_game USING btree (language_id);


--
-- Name: ludorecherche_game_name_82b8126a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_name_82b8126a_like ON public.ludorecherche_game USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_game_playing_mode_game_id_62bd95b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_playing_mode_game_id_62bd95b2 ON public.ludorecherche_game_playing_mode USING btree (game_id);


--
-- Name: ludorecherche_game_playing_mode_playingmode_id_fa02659e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_playing_mode_playingmode_id_fa02659e ON public.ludorecherche_game_playing_mode USING btree (playingmode_id);


--
-- Name: ludorecherche_game_publishers_game_id_a425abf8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_publishers_game_id_a425abf8 ON public.ludorecherche_game_publishers USING btree (game_id);


--
-- Name: ludorecherche_game_publishers_publisher_id_5176fa38; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_publishers_publisher_id_5176fa38 ON public.ludorecherche_game_publishers USING btree (publisher_id);


--
-- Name: ludorecherche_game_tag_game_id_065ca217; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_tag_game_id_065ca217 ON public.ludorecherche_game_tag USING btree (game_id);


--
-- Name: ludorecherche_game_tag_tag_id_d515082c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_tag_tag_id_d515082c ON public.ludorecherche_game_tag USING btree (tag_id);


--
-- Name: ludorecherche_language_name_24fe12a7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_language_name_24fe12a7_like ON public.ludorecherche_language USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_multi_add_on_artists_artist_id_b04b65bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_artists_artist_id_b04b65bc ON public.ludorecherche_multi_add_on_artists USING btree (artist_id);


--
-- Name: ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7 ON public.ludorecherche_multi_add_on_artists USING btree (multi_add_on_id);


--
-- Name: ludorecherche_multi_add_on_designers_designer_id_63ada047; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_designers_designer_id_63ada047 ON public.ludorecherche_multi_add_on_designers USING btree (designer_id);


--
-- Name: ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc ON public.ludorecherche_multi_add_on_designers USING btree (multi_add_on_id);


--
-- Name: ludorecherche_multi_add_on_difficulty_id_5c7d95a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_difficulty_id_5c7d95a0 ON public.ludorecherche_multi_add_on USING btree (difficulty_id);


--
-- Name: ludorecherche_multi_add_on_games_game_id_790ba75d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_games_game_id_790ba75d ON public.ludorecherche_multi_add_on_games USING btree (game_id);


--
-- Name: ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9 ON public.ludorecherche_multi_add_on_games USING btree (multi_add_on_id);


--
-- Name: ludorecherche_multi_add_on_language_id_5be310e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_language_id_5be310e3 ON public.ludorecherche_multi_add_on USING btree (language_id);


--
-- Name: ludorecherche_multi_add_on_multi_add_on_id_25357591; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_multi_add_on_id_25357591 ON public.ludorecherche_multi_add_on_playing_mode USING btree (multi_add_on_id);


--
-- Name: ludorecherche_multi_add_on_name_7a883fb9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_name_7a883fb9_like ON public.ludorecherche_multi_add_on USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256 ON public.ludorecherche_multi_add_on_playing_mode USING btree (playingmode_id);


--
-- Name: ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669 ON public.ludorecherche_multi_add_on_publishers USING btree (multi_add_on_id);


--
-- Name: ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c ON public.ludorecherche_multi_add_on_publishers USING btree (publisher_id);


--
-- Name: ludorecherche_playingmode_name_b9bc9f89_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_playingmode_name_b9bc9f89_like ON public.ludorecherche_playingmode USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_publisher_name_865b1ff3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_publisher_name_865b1ff3_like ON public.ludorecherche_publisher USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_tag_name_de380dee_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_tag_name_de380dee_like ON public.ludorecherche_tag USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_artists ludorecherche_add_on_add_on_id_06c1b675_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_06c1b675_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_designers ludorecherche_add_on_add_on_id_91c9524f_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_91c9524f_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_publishers ludorecherche_add_on_add_on_id_9ca3fd40_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_9ca3fd40_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_playing_mode ludorecherche_add_on_add_on_id_ef1f0186_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_add_on_id_ef1f0186_fk_ludoreche FOREIGN KEY (add_on_id) REFERENCES public.ludorecherche_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_artists ludorecherche_add_on_artist_id_947142f9_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_artists
    ADD CONSTRAINT ludorecherche_add_on_artist_id_947142f9_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_designers ludorecherche_add_on_designer_id_c16eab7d_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_designers
    ADD CONSTRAINT ludorecherche_add_on_designer_id_c16eab7d_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on ludorecherche_add_on_difficulty_id_36e9a090_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_difficulty_id_36e9a090_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on ludorecherche_add_on_language_id_5573aafd_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on
    ADD CONSTRAINT ludorecherche_add_on_language_id_5573aafd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_playing_mode ludorecherche_add_on_playingmode_id_12919a41_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playingmode_id_12919a41_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_add_on_publishers ludorecherche_add_on_publisher_id_14abff3e_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_add_on_publishers
    ADD CONSTRAINT ludorecherche_add_on_publisher_id_14abff3e_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_artists ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_artists ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_designers ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_designers ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game ludorecherche_game_language_id_38e7eecd_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_language_id_38e7eecd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_publishers ludorecherche_game_p_game_id_a425abf8_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_game_id_a425abf8_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_publishers ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_tag ludorecherche_game_t_game_id_065ca217_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_t_game_id_065ca217_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_tag ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id FOREIGN KEY (tag_id) REFERENCES public.ludorecherche_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_artists ludorecherche_multi__artist_id_b04b65bc_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi__artist_id_b04b65bc_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_designers ludorecherche_multi__designer_id_63ada047_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi__designer_id_63ada047_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on ludorecherche_multi__difficulty_id_5c7d95a0_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi__difficulty_id_5c7d95a0_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_games ludorecherche_multi__game_id_790ba75d_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi__game_id_790ba75d_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on ludorecherche_multi__language_id_5be310e3_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on
    ADD CONSTRAINT ludorecherche_multi__language_id_5be310e3_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_publishers ludorecherche_multi__multi_add_on_id_22811669_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_22811669_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_playing_mode ludorecherche_multi__multi_add_on_id_25357591_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_25357591_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_designers ludorecherche_multi__multi_add_on_id_5b1af8fc_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_designers
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_5b1af8fc_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_artists ludorecherche_multi__multi_add_on_id_8c054ca7_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_artists
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_8c054ca7_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_games ludorecherche_multi__multi_add_on_id_9f3c31b9_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_games
    ADD CONSTRAINT ludorecherche_multi__multi_add_on_id_9f3c31b9_fk_ludoreche FOREIGN KEY (multi_add_on_id) REFERENCES public.ludorecherche_multi_add_on(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_playing_mode ludorecherche_multi__playingmode_id_3de7a256_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_playing_mode
    ADD CONSTRAINT ludorecherche_multi__playingmode_id_3de7a256_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multi_add_on_publishers ludorecherche_multi__publisher_id_ca696d8c_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multi_add_on_publishers
    ADD CONSTRAINT ludorecherche_multi__publisher_id_ca696d8c_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          