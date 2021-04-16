--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-15 11:49:14

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
-- TOC entry 205 (class 1259 OID 22346)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 22344)
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
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 207 (class 1259 OID 22356)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 22354)
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
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 203 (class 1259 OID 22338)
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
-- TOC entry 202 (class 1259 OID 22336)
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
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 209 (class 1259 OID 22364)
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
-- TOC entry 211 (class 1259 OID 22374)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 22372)
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
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 208 (class 1259 OID 22362)
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
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 213 (class 1259 OID 22382)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 22380)
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
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 215 (class 1259 OID 22442)
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
-- TOC entry 214 (class 1259 OID 22440)
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
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 201 (class 1259 OID 22328)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 22326)
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
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 248 (class 1259 OID 33351)
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
-- TOC entry 247 (class 1259 OID 33349)
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
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 247
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 216 (class 1259 OID 22473)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 22573)
-- Name: ludorecherche_addon_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_artists (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_artists OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 22571)
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
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 233
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_artists_id_seq OWNED BY public.ludorecherche_addon_artists.id;


--
-- TOC entry 236 (class 1259 OID 22581)
-- Name: ludorecherche_addon_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_designers (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_designers OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 22579)
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
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 235
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_designers_id_seq OWNED BY public.ludorecherche_addon_designers.id;


--
-- TOC entry 218 (class 1259 OID 22485)
-- Name: ludorecherche_addon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon (
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


ALTER TABLE public.ludorecherche_addon OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 22483)
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
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 217
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_id_seq OWNED BY public.ludorecherche_addon.id;


--
-- TOC entry 244 (class 1259 OID 33191)
-- Name: ludorecherche_addon_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_playing_mode (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_playing_mode OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 33189)
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
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 243
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_addon_playing_mode.id;


--
-- TOC entry 238 (class 1259 OID 22589)
-- Name: ludorecherche_addon_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_publishers (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_publishers OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 22587)
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
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 237
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_publishers_id_seq OWNED BY public.ludorecherche_addon_publishers.id;


--
-- TOC entry 220 (class 1259 OID 22498)
-- Name: ludorecherche_artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_artist (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_artist OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 22496)
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
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 219
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_artist_id_seq OWNED BY public.ludorecherche_artist.id;


--
-- TOC entry 222 (class 1259 OID 22508)
-- Name: ludorecherche_designer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_designer (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_designer OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 22506)
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
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 221
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_designer_id_seq OWNED BY public.ludorecherche_designer.id;


--
-- TOC entry 250 (class 1259 OID 33535)
-- Name: ludorecherche_difficulty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_difficulty (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_difficulty OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 33533)
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
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 249
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_difficulty_id_seq OWNED BY public.ludorecherche_difficulty.id;


--
-- TOC entry 226 (class 1259 OID 22528)
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
-- TOC entry 228 (class 1259 OID 22549)
-- Name: ludorecherche_game_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_artists (
    id integer NOT NULL,
    game_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_artists OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 22547)
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
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 227
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_artists_id_seq OWNED BY public.ludorecherche_game_artists.id;


--
-- TOC entry 230 (class 1259 OID 22557)
-- Name: ludorecherche_game_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_designers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_designers OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 22555)
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
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 229
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_designers_id_seq OWNED BY public.ludorecherche_game_designers.id;


--
-- TOC entry 225 (class 1259 OID 22526)
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
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 225
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_id_seq OWNED BY public.ludorecherche_game.id;


--
-- TOC entry 246 (class 1259 OID 33199)
-- Name: ludorecherche_game_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_playing_mode (
    id integer NOT NULL,
    game_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_playing_mode OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 33197)
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
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 245
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_playing_mode_id_seq OWNED BY public.ludorecherche_game_playing_mode.id;


--
-- TOC entry 232 (class 1259 OID 22565)
-- Name: ludorecherche_game_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_publishers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_publishers OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 22563)
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
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 231
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_publishers_id_seq OWNED BY public.ludorecherche_game_publishers.id;


--
-- TOC entry 254 (class 1259 OID 33590)
-- Name: ludorecherche_game_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_tag (
    id integer NOT NULL,
    game_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_tag OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 33588)
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
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 253
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_tag_id_seq OWNED BY public.ludorecherche_game_tag.id;


--
-- TOC entry 240 (class 1259 OID 33049)
-- Name: ludorecherche_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_language (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_language OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 33047)
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
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 239
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_language_id_seq OWNED BY public.ludorecherche_language.id;


--
-- TOC entry 258 (class 1259 OID 86136)
-- Name: ludorecherche_multiaddon_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_artists (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_artists OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 86134)
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
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 257
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq OWNED BY public.ludorecherche_multiaddon_artists.id;


--
-- TOC entry 260 (class 1259 OID 86144)
-- Name: ludorecherche_multiaddon_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_designers (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_designers OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 86142)
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
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 259
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq OWNED BY public.ludorecherche_multiaddon_designers.id;


--
-- TOC entry 262 (class 1259 OID 86152)
-- Name: ludorecherche_multiaddon_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_games (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_games OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 86150)
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
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 261
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_games_id_seq OWNED BY public.ludorecherche_multiaddon_games.id;


--
-- TOC entry 256 (class 1259 OID 86123)
-- Name: ludorecherche_multiaddon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon (
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


ALTER TABLE public.ludorecherche_multiaddon OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 86121)
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
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 255
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_id_seq OWNED BY public.ludorecherche_multiaddon.id;


--
-- TOC entry 264 (class 1259 OID 86160)
-- Name: ludorecherche_multiaddon_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_playing_mode (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_playing_mode OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 86158)
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
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 263
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_multiaddon_playing_mode.id;


--
-- TOC entry 266 (class 1259 OID 86168)
-- Name: ludorecherche_multiaddon_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_publishers (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_publishers OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 86166)
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
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 265
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq OWNED BY public.ludorecherche_multiaddon_publishers.id;


--
-- TOC entry 242 (class 1259 OID 33059)
-- Name: ludorecherche_playingmode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_playingmode (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_playingmode OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 33057)
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
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 241
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_playingmode_id_seq OWNED BY public.ludorecherche_playingmode.id;


--
-- TOC entry 224 (class 1259 OID 22518)
-- Name: ludorecherche_publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_publisher (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_publisher OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 22516)
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
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 223
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_publisher_id_seq OWNED BY public.ludorecherche_publisher.id;


--
-- TOC entry 252 (class 1259 OID 33580)
-- Name: ludorecherche_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_tag (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_tag OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 33578)
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
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 251
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_tag_id_seq OWNED BY public.ludorecherche_tag.id;


--
-- TOC entry 3055 (class 2604 OID 33509)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 33510)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3054 (class 2604 OID 33511)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3057 (class 2604 OID 33512)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 33513)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 33514)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 33515)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3053 (class 2604 OID 33516)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3077 (class 2604 OID 33517)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 33518)
-- Name: ludorecherche_addon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_id_seq'::regclass);


--
-- TOC entry 3070 (class 2604 OID 33519)
-- Name: ludorecherche_addon_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_artists_id_seq'::regclass);


--
-- TOC entry 3071 (class 2604 OID 33520)
-- Name: ludorecherche_addon_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_designers_id_seq'::regclass);


--
-- TOC entry 3075 (class 2604 OID 33521)
-- Name: ludorecherche_addon_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_playing_mode_id_seq'::regclass);


--
-- TOC entry 3072 (class 2604 OID 33522)
-- Name: ludorecherche_addon_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_publishers_id_seq'::regclass);


--
-- TOC entry 3063 (class 2604 OID 33523)
-- Name: ludorecherche_artist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_artist_id_seq'::regclass);


--
-- TOC entry 3064 (class 2604 OID 33524)
-- Name: ludorecherche_designer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_designer_id_seq'::regclass);


--
-- TOC entry 3078 (class 2604 OID 33538)
-- Name: ludorecherche_difficulty id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_difficulty_id_seq'::regclass);


--
-- TOC entry 3066 (class 2604 OID 33525)
-- Name: ludorecherche_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_id_seq'::regclass);


--
-- TOC entry 3067 (class 2604 OID 33526)
-- Name: ludorecherche_game_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_artists_id_seq'::regclass);


--
-- TOC entry 3068 (class 2604 OID 33527)
-- Name: ludorecherche_game_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_designers_id_seq'::regclass);


--
-- TOC entry 3076 (class 2604 OID 33528)
-- Name: ludorecherche_game_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_playing_mode_id_seq'::regclass);


--
-- TOC entry 3069 (class 2604 OID 33529)
-- Name: ludorecherche_game_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_publishers_id_seq'::regclass);


--
-- TOC entry 3080 (class 2604 OID 33593)
-- Name: ludorecherche_game_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_tag_id_seq'::regclass);


--
-- TOC entry 3073 (class 2604 OID 33530)
-- Name: ludorecherche_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_language_id_seq'::regclass);


--
-- TOC entry 3081 (class 2604 OID 86126)
-- Name: ludorecherche_multiaddon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_id_seq'::regclass);


--
-- TOC entry 3082 (class 2604 OID 86139)
-- Name: ludorecherche_multiaddon_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_artists_id_seq'::regclass);


--
-- TOC entry 3083 (class 2604 OID 86147)
-- Name: ludorecherche_multiaddon_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_designers_id_seq'::regclass);


--
-- TOC entry 3084 (class 2604 OID 86155)
-- Name: ludorecherche_multiaddon_games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_games_id_seq'::regclass);


--
-- TOC entry 3085 (class 2604 OID 86163)
-- Name: ludorecherche_multiaddon_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_playing_mode_id_seq'::regclass);


--
-- TOC entry 3086 (class 2604 OID 86171)
-- Name: ludorecherche_multiaddon_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_publishers_id_seq'::regclass);


--
-- TOC entry 3074 (class 2604 OID 33531)
-- Name: ludorecherche_playingmode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_playingmode_id_seq'::regclass);


--
-- TOC entry 3065 (class 2604 OID 33532)
-- Name: ludorecherche_publisher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_publisher_id_seq'::regclass);


--
-- TOC entry 3079 (class 2604 OID 33583)
-- Name: ludorecherche_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_tag_id_seq'::regclass);


--
-- TOC entry 3454 (class 0 OID 22346)
-- Dependencies: 205
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3456 (class 0 OID 22356)
-- Dependencies: 207
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3452 (class 0 OID 22338)
-- Dependencies: 203
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add auteur	1	add_designer
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
69	Can add extension	7	add_addon
70	Can change extension	7	change_addon
71	Can delete extension	7	delete_addon
72	Can view extension	7	view_addon
73	Can add extension partagée	17	add_multiaddon
74	Can change extension partagée	17	change_multiaddon
75	Can delete extension partagée	17	delete_multiaddon
76	Can view extension partagée	17	view_multiaddon
\.


--
-- TOC entry 3458 (class 0 OID 22364)
-- Dependencies: 209
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$agGTW3d8yuVR$ZPd+KkhCuIE1oYBlY7hVHDleO09BbZPzAtNHI5Wk+Ik=	2021-04-07 10:13:35.361793+02	t	wolgan			wolgan_4@hotmail.com	t	t	2021-04-05 11:31:15.543428+02
\.


--
-- TOC entry 3460 (class 0 OID 22374)
-- Dependencies: 211
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3462 (class 0 OID 22382)
-- Dependencies: 213
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3464 (class 0 OID 22442)
-- Dependencies: 215
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-04-05 14:47:09.392458+02	1	Reiner Knizia	1	[{"added": {}}]	7	1
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
113	2021-04-09 17:43:36.019318+02	18	Tyler Jacobson	1	[{"added": {}}]	2	1
114	2021-04-09 17:44:36.552094+02	13	Pathfinder adventure card game: mummy's mask	1	[{"added": {}}]	6	1
115	2021-04-09 17:47:26.433924+02	5	Pathfinder adventure card game: mummy's mask extension set	1	[{"added": {}}]	7	1
116	2021-04-09 17:51:41.623255+02	8	Chad Brown	1	[{"added": {}}]	1	1
117	2021-04-09 17:51:55.242701+02	9	Keith Richmond	1	[{"added": {}}]	1	1
118	2021-04-09 17:52:10.99325+02	10	Aviva Schecterson	1	[{"added": {}}]	1	1
119	2021-04-09 17:52:26.335677+02	11	Liz Spain	1	[{"added": {}}]	1	1
120	2021-04-09 17:52:48.379039+02	19	Setiawan Lie	1	[{"added": {}}]	2	1
121	2021-04-09 17:53:08.591384+02	14	Pathfinder adventure card game: core set	1	[{"added": {}}]	6	1
122	2021-04-09 17:56:32.708258+02	6	Pathfinder adventure card game: curse of the crimson throne	1	[{"added": {}}]	7	1
123	2021-04-09 18:00:14.806421+02	12	Paul Peterson	1	[{"added": {}}]	1	1
124	2021-04-09 18:00:32.19147+02	13	Tanis O'Conor	1	[{"added": {}}]	1	1
125	2021-04-09 18:01:06.203422+02	2	Pathfinder adventure card game: class deck - witch	1	[{"added": {}}]	17	1
126	2021-04-09 18:02:10.663799+02	1	Pathfinder le jeu de cartes:boites des decks de classe	2	[{"changed": {"fields": ["Jeux associ\\u00e9s"]}}]	17	1
127	2021-04-10 15:24:58.304155+02	9	Tower-defense	1	[{"added": {}}]	16	1
128	2021-04-10 15:27:36.797477+02	14	Jean-François Gauthier	1	[{"added": {}}]	1	1
129	2021-04-10 15:27:42.695657+02	20	Jean-François Gauthier	1	[{"added": {}}]	2	1
130	2021-04-10 15:28:32.368659+02	8	Goblivion Games	1	[{"added": {}}]	3	1
131	2021-04-10 15:28:55.497985+02	9	Paille Editions	1	[{"added": {}}]	3	1
132	2021-04-10 15:29:07.879942+02	10	Ôz Edition	1	[{"added": {}}]	3	1
133	2021-04-10 15:29:36.798119+02	15	Goblivion	1	[{"added": {}}]	6	1
134	2021-04-10 15:32:07.176491+02	10	Marvel Universe	1	[{"added": {}}]	16	1
135	2021-04-10 15:32:14.565748+02	11	super-héros	1	[{"added": {}}]	16	1
136	2021-04-10 15:35:27.167675+02	12	Joueur Asynchrone	1	[{"added": {}}]	16	1
137	2021-04-10 15:36:56.543014+02	15	Michael Boggs	1	[{"added": {}}]	1	1
138	2021-04-10 15:37:07.235021+02	16	Nate French	1	[{"added": {}}]	1	1
139	2021-04-10 15:37:15.319519+02	17	Caleb Grace	1	[{"added": {}}]	1	1
140	2021-04-10 15:37:58.997274+02	21	Chris Beck	1	[{"added": {}}]	2	1
141	2021-04-10 15:38:17.265457+02	22	Evan Simonet	1	[{"added": {}}]	2	1
142	2021-04-10 15:39:24.303842+02	11	Fantasy Flight Game	1	[{"added": {}}]	3	1
143	2021-04-10 15:40:32.01896+02	12	Edge	1	[{"added": {}}]	3	1
144	2021-04-10 15:40:56.510662+02	13	Living Card Game	1	[{"added": {}}]	3	1
145	2021-04-10 15:41:50.678765+02	16	Marvel Champions Le jeu de cartes	1	[{"added": {}}]	6	1
146	2021-04-10 15:45:30.622205+02	18	Devin Low	1	[{"added": {}}]	1	1
147	2021-04-10 15:46:39.460036+02	23	Krista Timberlake	1	[{"added": {}}]	2	1
148	2021-04-10 15:46:58.182953+02	24	Brian Bateman	1	[{"added": {}}]	2	1
149	2021-04-10 15:47:34.848996+02	14	Upper Deck	1	[{"added": {}}]	3	1
150	2021-04-10 15:47:38.610804+02	17	Legendary	1	[{"added": {}}]	6	1
151	2021-04-10 15:47:51.777626+02	14	Pathfinder adventure card game: core set	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
152	2021-04-10 15:47:59.363734+02	13	Pathfinder adventure card game: mummy's mask	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
153	2021-04-10 15:48:07.272192+02	11	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
154	2021-04-10 15:48:13.580808+02	10	Pathfinder le jeu de cartes: skull and shackles	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
155	2021-04-10 15:49:27.047968+02	17	Legendary: a Marvel Deck Building Game	2	[{"changed": {"fields": ["Nom"]}}]	6	1
156	2021-04-10 15:51:39.121484+02	7	Legendary: a Marvel Deck Building Game - Civil War	1	[{"added": {}}]	7	1
157	2021-04-10 15:51:50.815126+02	17	Legendary: a Marvel Deck Building Game	2	[]	6	1
158	2021-04-10 15:52:27.401678+02	14	Upper Deck Entertainment	2	[{"changed": {"fields": ["Nom"]}}]	3	1
159	2021-04-10 15:56:10.728462+02	19	Christopher Badell	1	[{"added": {}}]	1	1
160	2021-04-10 15:56:25.464564+02	20	Paul Bender	1	[{"added": {}}]	1	1
161	2021-04-10 15:56:43.070791+02	21	Adam Rebottaro	1	[{"added": {}}]	1	1
162	2021-04-10 15:56:52.288715+02	25	Adam Rebottaro	1	[{"added": {}}]	2	1
163	2021-04-10 15:57:17.77265+02	15	Greater Than Games	1	[{"added": {}}]	3	1
164	2021-04-10 15:57:28.470745+02	18	Sentinels Of The Multiverse	1	[{"added": {}}]	6	1
165	2021-04-10 15:59:54.574609+02	8	Sentinels Of The Multiverse: OblivAeon	1	[{"added": {}}]	7	1
166	2021-04-10 16:00:23.623317+02	16	Marvel Champions Le jeu de cartes	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
167	2021-04-10 16:01:34.346002+02	16	Marvel Champions Le jeu de cartes	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
168	2021-04-10 18:02:34.841356+02	9	Sentinels Of The Multiverse: Vengeance	1	[{"added": {}}]	7	1
169	2021-04-10 18:05:10.33911+02	22	Alex Franklin	1	[{"added": {}}]	1	1
170	2021-04-10 18:05:24.785932+02	23	Bryan Graham	1	[{"added": {}}]	1	1
171	2021-04-10 18:05:28.031985+02	10	Sentinels Of The Multiverse: Shattered Timelines	1	[{"added": {}}]	7	1
172	2021-04-10 18:07:46.006896+02	11	Sentinels Of The Multiverse: Rook City	1	[{"added": {}}]	7	1
173	2021-04-10 18:09:41.931004+02	12	Sentinels Of The Multiverse: Wrath of the Cosmos	1	[{"added": {}}]	7	1
174	2021-04-10 18:11:30.176412+02	24	Richard Launius	1	[{"added": {}}]	1	1
175	2021-04-10 18:11:52.613001+02	13	Sentinels Of The Multiverse:infernal relics	1	[{"added": {}}]	7	1
176	2021-04-10 18:13:55.637389+02	14	Sentinels Of The Multiverse:Villain of the Multiverse	1	[{"added": {}}]	7	1
177	2021-04-10 18:22:13.826618+02	3	complexe	1	[{"added": {}}]	15	1
178	2021-04-10 18:22:32.274741+02	13	Warhammer 40000	1	[{"added": {}}]	16	1
179	2021-04-10 18:22:44.449267+02	14	Science Fiction	1	[{"added": {}}]	16	1
180	2021-04-10 18:23:06.30461+02	15	Guerre	1	[{"added": {}}]	16	1
181	2021-04-10 18:24:52.691333+02	25	John Goodenough	1	[{"added": {}}]	1	1
182	2021-04-10 18:25:05.259416+02	26	Jeff Tidball	1	[{"added": {}}]	1	1
183	2021-04-10 18:25:29.675453+02	26	Daarken	1	[{"added": {}}]	2	1
184	2021-04-10 18:26:00.344877+02	27	Tim AmeyO'Neil	1	[{"added": {}}]	2	1
185	2021-04-10 18:26:29.729341+02	19	Warhammer 40000: L'Hérésie d'Horus	1	[{"added": {}}]	6	1
186	2021-04-10 18:27:05.610636+02	19	Warhammer 40000: L'Hérésie d'Horus	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
187	2021-04-10 18:28:57.538689+02	16	Diesel Punk	1	[{"added": {}}]	16	1
188	2021-04-10 18:29:05.988358+02	17	Mech Warfare	1	[{"added": {}}]	16	1
189	2021-04-10 18:30:13.083083+02	27	Jamey Stegmaier	1	[{"added": {}}]	1	1
190	2021-04-10 18:30:22.393119+02	28	Jakub Rozalski	1	[{"added": {}}]	2	1
191	2021-04-10 18:30:58.960954+02	16	Stonemaier Games	1	[{"added": {}}]	3	1
192	2021-04-10 18:31:04.824816+02	17	Matagot	1	[{"added": {}}]	3	1
193	2021-04-10 18:31:15.87377+02	20	Scythe	1	[{"added": {}}]	6	1
194	2021-04-10 18:33:21.318038+02	18	Dune	1	[{"added": {}}]	16	1
195	2021-04-10 18:35:28.544008+02	28	Future Pastimes	1	[{"added": {}}]	1	1
196	2021-04-10 18:35:50.696438+02	29	Mick Uhl	1	[{"added": {}}]	2	1
197	2021-04-10 18:35:59.983544+02	30	Jean Baher	1	[{"added": {}}]	2	1
198	2021-04-10 18:36:28.433863+02	18	Descartes Éditeur	1	[{"added": {}}]	3	1
199	2021-04-10 18:36:39.494692+02	21	Dune	1	[{"added": {}}]	6	1
200	2021-04-10 18:38:43.177548+02	19	Commerce	1	[{"added": {}}]	16	1
201	2021-04-10 18:38:48.719257+02	20	Histoire	1	[{"added": {}}]	16	1
202	2021-04-10 18:40:05.670031+02	29	Dominique Ehrhard	1	[{"added": {}}]	1	1
203	2021-04-10 18:41:59.182031+02	31	Dominique Ehrhard	1	[{"added": {}}]	2	1
204	2021-04-10 18:42:23.142715+02	22	Méditerranée	1	[{"added": {}}]	6	1
205	2021-04-10 18:45:08.78505+02	30	Colby Dauch	1	[{"added": {}}]	1	1
206	2021-04-10 18:45:26.272331+02	31	J.Arthur Ellis	1	[{"added": {}}]	1	1
207	2021-04-10 18:45:40.185187+02	32	Andrea Mezzotero	1	[{"added": {}}]	1	1
208	2021-04-10 18:45:51.433491+02	32	Martin Abel	1	[{"added": {}}]	2	1
209	2021-04-10 18:46:06.487182+02	19	Plaid Hat Games	1	[{"added": {}}]	3	1
210	2021-04-10 18:46:24.66705+02	23	Crystal Clans	1	[{"added": {}}]	6	1
211	2021-04-10 18:48:13.670098+02	33	Corey Konieczka	1	[{"added": {}}]	1	1
212	2021-04-10 18:49:13.463369+02	33	Jesper Eising	1	[{"added": {}}]	2	1
213	2021-04-10 18:49:32.552171+02	34	Mio Del Rosario	1	[{"added": {}}]	2	1
214	2021-04-10 18:49:49.242471+02	35	Moi Shin Hung	1	[{"added": {}}]	2	1
215	2021-04-10 18:50:45.688033+02	24	Runewars	1	[{"added": {}}]	6	1
216	2021-04-10 18:54:25.72214+02	34	Greg Stafford	1	[{"added": {}}]	1	1
217	2021-04-10 18:54:59.301109+02	36	Steve Swenston	1	[{"added": {}}]	2	1
218	2021-04-10 18:55:06.907092+02	20	Oriflam	1	[{"added": {}}]	3	1
219	2021-04-10 18:55:14.372012+02	25	La guerre des héros	1	[{"added": {}}]	6	1
220	2021-04-10 18:58:35.991604+02	35	Isaac Childres	1	[{"added": {}}]	1	1
221	2021-04-10 18:58:51.201333+02	37	Alexandr Elichev	1	[{"added": {}}]	2	1
222	2021-04-10 18:58:59.41775+02	38	Alvaro Nebot	1	[{"added": {}}]	2	1
223	2021-04-10 18:59:12.715362+02	39	Josh T. McDowell	1	[{"added": {}}]	2	1
224	2021-04-10 18:59:46.132138+02	26	Gloomhaven	1	[{"added": {}}]	6	1
225	2021-04-10 19:01:25.512036+02	21	Andor	1	[{"added": {}}]	16	1
226	2021-04-10 19:03:10.065599+02	36	Gerhard Hecht	1	[{"added": {}}]	1	1
227	2021-04-10 19:03:20.111043+02	40	Michael Menzel	1	[{"added": {}}]	2	1
228	2021-04-10 19:03:38.438413+02	21	kosmos	1	[{"added": {}}]	3	1
229	2021-04-10 19:04:09.03769+02	27	Andor: Chada et Thorn	1	[{"added": {}}]	6	1
230	2021-04-10 19:05:43.936987+02	26	Gloomhaven	2	[]	6	1
231	2021-04-10 19:07:19.432267+02	22	warhammer fantasy	1	[{"added": {}}]	16	1
232	2021-04-10 19:08:29.406924+02	37	Justin Kemppainen	1	[{"added": {}}]	1	1
233	2021-04-10 19:08:41.948309+02	38	Adam Sadler	1	[{"added": {}}]	1	1
234	2021-04-10 19:08:55.154255+02	39	Brady Sadler	1	[{"added": {}}]	1	1
235	2021-04-10 19:09:48.526822+02	41	Diego Gisbert Llorens	1	[{"added": {}}]	2	1
236	2021-04-10 19:10:10.927795+02	28	warhammer quest: le jeu d'aventure	1	[{"added": {}}]	6	1
237	2021-04-10 19:11:19.457829+02	23	Donjons et Dragons	1	[{"added": {}}]	16	1
238	2021-04-10 19:12:56.374978+02	40	Bill Slavicsek	1	[{"added": {}}]	1	1
239	2021-04-10 19:13:08.711431+02	41	Mike Mearls	1	[{"added": {}}]	1	1
240	2021-04-10 19:13:18.966564+02	42	Peter Lee	1	[{"added": {}}]	1	1
241	2021-04-10 19:14:09.183072+02	42	Jesper Ejsing,	1	[{"added": {}}]	2	1
242	2021-04-10 19:14:30.51197+02	22	Wizard Of The Coast	1	[{"added": {}}]	3	1
243	2021-04-10 19:14:55.422251+02	29	Dungeons & Dragons: Castle Ravenloft Board Game	1	[{"added": {}}]	6	1
244	2021-04-10 19:17:13.382002+02	30	Dungeons & Dragons: Wrath of Ashardalon Board Game	1	[{"added": {}}]	6	1
245	2021-04-10 19:17:22.978144+02	22	Wizards Of The Coast	2	[{"changed": {"fields": ["Nom"]}}]	3	1
246	2021-04-10 21:55:24.022839+02	10	Sentinels Of The Multiverse: Shattered Timelines	2	[{"changed": {"fields": ["URL de l'image"]}}]	7	1
247	2021-04-11 11:23:09.573188+02	43	Kevin G. Nunn	1	[{"added": {}}]	1	1
248	2021-04-11 11:23:18.990124+02	44	Luther Bell Hendricks V	1	[{"added": {}}]	1	1
249	2021-04-11 11:24:49.813943+02	31	Sentinel Tactics: The Flame Of Freedom	1	[{"added": {}}]	6	1
250	2021-04-11 11:26:54.807146+02	15	Sentinel Tactics: Uprising	1	[{"added": {}}]	7	1
251	2021-04-11 11:27:28.723415+02	15	Sentinel Tactics: Uprising	2	[{"changed": {"fields": ["URL de l'image"]}}]	7	1
252	2021-04-11 11:29:28.384228+02	45	Frédérick Condette	1	[{"added": {}}]	1	1
253	2021-04-11 11:29:33.017959+02	43	Hub	1	[{"added": {}}]	2	1
254	2021-04-11 11:29:44.541889+02	23	The Red Joker	1	[{"added": {}}]	3	1
255	2021-04-11 11:30:53.071216+02	32	Okko Chronicles: Cycle of Water – Quest into Darkness	1	[{"added": {}}]	6	1
256	2021-04-11 11:33:48.694881+02	46	Kevin Wilson	1	[{"added": {}}]	1	1
257	2021-04-11 11:34:55.959835+02	44	John Goodenough	1	[{"added": {}}]	2	1
258	2021-04-11 11:35:10.43848+02	45	Frank Walls	1	[{"added": {}}]	2	1
259	2021-04-11 11:36:21.756191+02	5	Semi-coopératif	1	[{"added": {}}]	5	1
260	2021-04-11 11:36:28.180945+02	33	Descent: Voyage dans les ténèbres	1	[{"added": {}}]	6	1
261	2021-04-11 11:37:23.143015+02	24	runebound	1	[{"added": {}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (104)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (105)"}}]	16	1
262	2021-04-11 11:37:39.644541+02	32	Okko Chronicles: Cycle of Water – Quest into Darkness	2	[{"changed": {"fields": ["Type"]}}]	6	1
263	2021-04-11 11:37:44.738083+02	31	Sentinel Tactics: The Flame Of Freedom	2	[{"changed": {"fields": ["Type"]}}]	6	1
264	2021-04-11 11:40:09.407607+02	46	Rafał Hrynkiewicz	1	[{"added": {}}]	2	1
265	2021-04-11 11:40:51.63576+02	16	Descent: l'autel du désespoir	1	[{"added": {}}]	7	1
266	2021-04-11 11:42:40.457075+02	47	Robert A. Kouba	1	[{"added": {}}]	1	1
267	2021-04-11 11:43:35.267821+02	17	Descent: héros de légende	1	[{"added": {}}]	7	1
268	2021-04-11 11:44:59.048832+02	42	Jesper Ejsing	2	[{"changed": {"fields": ["Nom"]}}]	2	1
269	2021-04-11 11:46:24.773401+02	17	Descent: héros de légende	2	[{"changed": {"fields": ["Illustrateur"]}}]	7	1
270	2021-04-11 11:48:20.167596+02	24	Runewars	2	[{"changed": {"fields": ["Illustrateur"]}}]	6	1
271	2021-04-11 11:48:39.69271+02	35	Moy Shin Hung	2	[{"changed": {"fields": ["Nom"]}}]	2	1
272	2021-04-11 11:58:24.561445+02	33	Jesper Eising	3		2	1
273	2021-04-11 12:02:37.243774+02	25	Post Apocalyptic	1	[{"added": {}}]	16	1
274	2021-04-11 12:03:01.413197+02	48	Michał Oracz	1	[{"added": {}}]	1	1
275	2021-04-11 12:03:19.04494+02	47	Piotr Foksowicz	1	[{"added": {}}]	2	1
276	2021-04-11 12:03:32.055189+02	48	Mateusz Bielski	1	[{"added": {}}]	2	1
277	2021-04-11 12:04:05.646053+02	49	Piotr Cieśliński	1	[{"added": {}}]	2	1
278	2021-04-11 12:04:36.420002+02	34	Neuroshima Hex!	1	[{"added": {}}]	6	1
279	2021-04-11 12:06:44.269697+02	49	Martin Wallace	1	[{"added": {}}]	1	1
280	2021-04-11 12:06:54.035469+02	50	Darrell Hardy	1	[{"added": {}}]	1	1
281	2021-04-11 12:07:17.394643+02	50	Andy Brase	1	[{"added": {}}]	2	1
282	2021-04-11 12:07:48.974503+02	35	Runebound	1	[{"added": {}}]	6	1
283	2021-04-11 12:09:36.626024+02	51	Robert Harris	1	[{"added": {}}]	1	1
284	2021-04-11 12:09:51.288966+02	51	Massimiliano Bertolini	1	[{"added": {}}]	2	1
285	2021-04-11 12:10:08.901413+02	52	Marjorie Davis	1	[{"added": {}}]	2	1
286	2021-04-11 12:10:20.834975+02	53	Ralph Horsley	1	[{"added": {}}]	2	1
287	2021-04-11 12:11:16.701241+02	36	Talisman	1	[{"added": {}}]	6	1
288	2021-04-11 12:12:58.773788+02	52	Bruno Cathala	1	[{"added": {}}]	1	1
289	2021-04-11 12:13:08.163628+02	53	Antoine Bauza	1	[{"added": {}}]	1	1
290	2021-04-11 12:13:17.118455+02	54	Miguel Coimbra	1	[{"added": {}}]	2	1
291	2021-04-11 12:13:30.098601+02	24	Repos Production	1	[{"added": {}}]	3	1
292	2021-04-11 12:13:51.773009+02	37	7 wonders duel	1	[{"added": {}}]	6	1
293	2021-04-11 12:15:26.3855+02	26	Mafia	1	[{"added": {}}]	16	1
294	2021-04-11 12:15:54.829414+02	54	Eric M. Lang	1	[{"added": {}}]	1	1
295	2021-04-11 12:16:08.187769+02	55	Richard Wright	1	[{"added": {}}]	2	1
296	2021-04-11 12:16:20.515358+02	56	Nicolas Fructus	1	[{"added": {}}]	2	1
297	2021-04-11 12:16:30.940629+02	57	Karl Kopinski	1	[{"added": {}}]	2	1
298	2021-04-11 12:16:52.879193+02	25	CMON Limited	1	[{"added": {}}]	3	1
299	2021-04-11 12:17:06.995705+02	38	Le Parrain: L'empire De Corleone	1	[{"added": {}}]	6	1
300	2021-04-11 12:18:29.02492+02	27	Disney	1	[{"added": {}}]	16	1
301	2021-04-11 12:18:56.333734+02	55	Prospero Hall	1	[{"added": {}}]	1	1
302	2021-04-11 12:19:55.146789+02	26	Ravensburger	1	[{"added": {}}]	3	1
303	2021-04-11 12:20:13.290226+02	39	Disney Villainous	1	[{"added": {}}]	6	1
304	2021-04-11 12:21:50.772013+02	56	Claude Lucchini	1	[{"added": {}}]	1	1
305	2021-04-11 12:22:01.733377+02	58	Paul Mafayon	1	[{"added": {}}]	2	1
306	2021-04-11 12:22:39.744136+02	27	Libellud	1	[{"added": {}}]	3	1
307	2021-04-11 12:22:47.174673+02	28	Pearl Games	1	[{"added": {}}]	3	1
308	2021-04-11 12:23:00.105275+02	40	Otys	1	[{"added": {}}]	6	1
309	2021-04-11 12:23:40.026643+02	57	Jesse Li	1	[{"added": {}}]	1	1
310	2021-04-11 12:24:02.528909+02	28	Finance	1	[{"added": {}}]	16	1
311	2021-04-11 12:24:45.251753+02	59	Chih-Fan Chen	1	[{"added": {}}]	2	1
312	2021-04-11 12:24:57.300501+02	29	2Tomatoes Games	1	[{"added": {}}]	3	1
313	2021-04-11 12:25:08.514817+02	41	Ponzi Scheme	1	[{"added": {}}]	6	1
314	2021-04-11 12:26:21.340603+02	29	Harry Potter	1	[{"added": {}}]	16	1
315	2021-04-11 12:26:43.575608+02	30	Sorcier	1	[{"added": {}}]	16	1
316	2021-04-11 12:27:11.981854+02	58	Mark Latham	1	[{"added": {}}]	1	1
317	2021-04-11 12:27:22.673846+02	59	Gustavo Adolfo Cuadrado	1	[{"added": {}}]	1	1
318	2021-04-11 12:27:38.342886+02	30	Knight Models	1	[{"added": {}}]	3	1
319	2021-04-11 12:27:52.006594+02	42	Harry Potter Miniatures Adventure Game	1	[{"added": {}}]	6	1
320	2021-04-11 15:34:37.618769+02	60	Paul J. Gruen	1	[{"added": {}}]	1	1
321	2021-04-11 15:34:52.656703+02	31	Parker	1	[{"added": {}}]	3	1
322	2021-04-11 15:35:12.639274+02	43	La bonne Paye	1	[{"added": {}}]	6	1
323	2021-04-11 15:37:57.415891+02	44	Monopoly: Star Wars Limited Collector's Edition	1	[{"added": {}}]	6	1
324	2021-04-11 15:40:14.590689+02	31	Préhistoire	1	[{"added": {}}]	16	1
325	2021-04-11 15:40:40.056075+02	61	Bruno Faidutti	1	[{"added": {}}]	1	1
326	2021-04-11 15:40:51.303124+02	60	Gérard Mathieu	1	[{"added": {}}]	2	1
327	2021-04-11 15:41:18.242757+02	45	La vallée des mammouths	1	[{"added": {}}]	6	1
328	2021-04-11 15:43:58.975468+02	32	Époque Napoléonienne	1	[{"added": {}}]	16	1
329	2021-04-11 15:44:21.041943+02	62	Albert Lamorisse	1	[{"added": {}}]	1	1
330	2021-04-11 15:44:28.320945+02	63	Michael I. Levin	1	[{"added": {}}]	1	1
331	2021-04-11 15:44:56.79956+02	46	Risk: La conquête du monde	1	[{"added": {}}]	6	1
332	2021-04-11 15:47:04.008515+02	64	Bill Markham	1	[{"added": {}}]	1	1
333	2021-04-11 15:47:15.071207+02	65	Reuben Klamer	1	[{"added": {}}]	1	1
334	2021-04-11 15:47:26.835168+02	32	MB	1	[{"added": {}}]	3	1
335	2021-04-11 15:47:39.784332+02	47	Destins	1	[{"added": {}}]	6	1
336	2021-04-11 15:48:33.596938+02	33	Escape Games	1	[{"added": {}}]	16	1
337	2021-04-11 15:50:33.841442+02	66	Nicolas Bonnefoy	1	[{"added": {}}]	1	1
338	2021-04-11 15:50:52.641335+02	61	Delphine Ribeyre	1	[{"added": {}}]	2	1
339	2021-04-11 15:51:02.130609+02	33	Hachette	1	[{"added": {}}]	3	1
340	2021-04-11 15:51:26.1214+02	48	L'ascenceur Infernal	1	[{"added": {}}]	6	1
341	2021-04-11 15:53:43.304309+02	67	Arnaud Ladagnous	1	[{"added": {}}]	1	1
342	2021-04-11 15:53:53.408538+02	68	Fabrice Mazza	1	[{"added": {}}]	1	1
343	2021-04-11 15:54:08.073418+02	69	Sébastien Pauchon	1	[{"added": {}}]	1	1
344	2021-04-11 15:54:17.208672+02	70	Billy Stevenson	1	[{"added": {}}]	1	1
345	2021-04-11 15:54:27.810268+02	62	Sergo	1	[{"added": {}}]	2	1
346	2021-04-11 15:54:38.971455+02	63	Pierre Santamaria	1	[{"added": {}}]	2	1
347	2021-04-11 15:54:49.093822+02	64	Florian de Gesincourt	1	[{"added": {}}]	2	1
348	2021-04-11 15:55:05.586223+02	34	Space Cowboys	1	[{"added": {}}]	3	1
349	2021-04-11 15:55:21.988242+02	49	Unlock!:mystery Adventures	1	[{"added": {}}]	6	1
350	2021-04-11 15:57:09.473519+02	71	Thomas Cauët	1	[{"added": {}}]	1	1
351	2021-04-11 15:57:18.093126+02	72	Arch Stanton	1	[{"added": {}}]	1	1
352	2021-04-11 15:57:28.482257+02	73	Lewis Cheshire	1	[{"added": {}}]	1	1
353	2021-04-11 15:57:37.54597+02	65	Mahulda Jelly	1	[{"added": {}}]	2	1
354	2021-04-11 15:57:48.520003+02	66	Arnaud Demaegd	1	[{"added": {}}]	2	1
355	2021-04-11 15:57:57.624874+02	67	Legruth	1	[{"added": {}}]	2	1
356	2021-04-11 15:58:12.821806+02	50	Unlock!:secret Adventures	1	[{"added": {}}]	6	1
357	2021-04-11 15:59:05.609867+02	74	Cyril Demaegd	1	[{"added": {}}]	1	1
358	2021-04-11 15:59:17.638789+02	68	Martin Mottet	1	[{"added": {}}]	2	1
359	2021-04-11 15:59:46.182451+02	69	Amélie Guinet	1	[{"added": {}}]	2	1
360	2021-04-11 16:00:55.964373+02	51	Unlock!:exotic Adventures	1	[{"added": {}}]	6	1
361	2021-04-11 16:02:44.761996+02	35	Mattel	1	[{"added": {}}]	3	1
362	2021-04-11 16:02:58.338037+02	75	Jeff Bazarko	1	[{"added": {}}]	1	1
363	2021-04-11 16:03:23.519142+02	34	Jeu de lettres	1	[{"added": {}}]	16	1
364	2021-04-11 16:04:05.366904+02	52	SCRABBLE ZigZag	1	[{"added": {}}]	6	1
365	2021-04-11 16:05:16.092751+02	35	Classique	1	[{"added": {}}]	16	1
366	2021-04-11 16:06:04.602425+02	53	Échecs	1	[{"added": {}}]	6	1
367	2021-04-11 16:07:24.561895+02	76	Mordecai Meirowitz	1	[{"added": {}}]	1	1
368	2021-04-11 16:07:38.634325+02	54	Master Mind	1	[{"added": {}}]	6	1
369	2021-04-11 16:08:28.225791+02	35	Classique	2	[{"added": {"name": "Relation game-tag", "object": "Game_tag object (143)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (144)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (145)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (146)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (147)"}}]	16	1
370	2021-04-11 16:09:46.279165+02	55	Backgammon	1	[{"added": {}}]	6	1
371	2021-04-11 16:11:09.105681+02	56	Dames Chinoises	1	[{"added": {}}]	6	1
372	2021-04-11 16:12:57.394304+02	36	Quizz	1	[{"added": {}}]	16	1
373	2021-04-11 16:14:03.955964+02	57	Trivial pursuit: Passeport pour le monde	1	[{"added": {}}]	6	1
374	2021-04-11 16:16:52.950678+02	77	Scott Abbot	1	[{"added": {}}]	1	1
375	2021-04-11 16:17:06.214109+02	78	Chris Haney	1	[{"added": {}}]	1	1
376	2021-04-11 16:17:26.937984+02	36	Hasbro	1	[{"added": {}}]	3	1
377	2021-04-11 16:17:43.581977+02	58	Trivial pursuit: Histoire de France	1	[{"added": {}}]	6	1
378	2021-04-11 16:19:59.68785+02	59	Trivial pursuit: Édition Famille	1	[{"added": {}}]	6	1
379	2021-04-11 16:21:38.09639+02	37	Espion	1	[{"added": {}}]	16	1
380	2021-04-11 16:21:48.378194+02	38	Indice	1	[{"added": {}}]	16	1
381	2021-04-11 16:22:25.591435+02	79	Vlaada Chvátil	1	[{"added": {}}]	1	1
382	2021-04-11 16:22:38.610814+02	70	Tomas Kucerovsky	1	[{"added": {}}]	2	1
383	2021-04-11 16:23:01.508327+02	71	Stéphane Gantiez	1	[{"added": {}}]	2	1
384	2021-04-11 16:23:35.390633+02	60	Code Names XXL	1	[{"added": {}}]	6	1
385	2021-04-11 16:25:27.784881+02	39	Star Wars	1	[{"added": {}}]	16	1
386	2021-04-11 16:25:57.662516+02	80	Klaus-Jürgen Wrede	1	[{"added": {}}]	1	1
387	2021-04-11 16:26:05.944677+02	37	filosofia	1	[{"added": {}}]	3	1
388	2021-04-11 16:26:24.262458+02	61	Carcassonne Star Wars	1	[{"added": {}}]	6	1
389	2021-04-11 16:27:24.269393+02	40	Restaurant	1	[{"added": {}}]	16	1
390	2021-04-11 16:27:54.389529+02	81	Julien Prothière	1	[{"added": {}}]	1	1
391	2021-04-11 16:28:04.464701+02	82	Florent Toscano	1	[{"added": {}}]	1	1
392	2021-04-11 16:28:14.416345+02	72	Stéphane Escapa	1	[{"added": {}}]	2	1
393	2021-04-11 16:28:24.960689+02	38	Jeux Opla	1	[{"added": {}}]	3	1
394	2021-04-11 16:28:41.530116+02	62	[kosmopoli:t]	1	[{"added": {}}]	6	1
395	2021-04-11 16:30:18.574416+02	83	Frédéric Vuagnat	1	[{"added": {}}]	1	1
396	2021-04-11 16:30:27.803531+02	73	Charlène Le Scanff	1	[{"added": {}}]	2	1
397	2021-04-11 16:30:32.51271+02	39	Superlude	1	[{"added": {}}]	3	1
398	2021-04-11 16:30:49.862788+02	63	maître renard	1	[{"added": {}}]	6	1
399	2021-04-11 16:31:11.792731+02	63	Maître Renard	2	[{"changed": {"fields": ["Nom"]}}]	6	1
400	2021-04-11 16:33:05.214371+02	84	Matt Leacock	1	[{"added": {}}]	1	1
401	2021-04-11 16:33:14.892219+02	74	Tyler Edlin	1	[{"added": {}}]	2	1
402	2021-04-11 16:33:25.02955+02	75	C. B. Canga	1	[{"added": {}}]	2	1
403	2021-04-11 16:33:48.545579+02	40	Cocktail Games	1	[{"added": {}}]	3	1
404	2021-04-11 16:34:00.190121+02	64	Le Désert Interdit	1	[{"added": {}}]	6	1
405	2021-04-13 15:21:37.049259+02	41	Frénétique	1	[{"added": {}}]	16	1
406	2021-04-13 15:22:49.633012+02	85	Dávid Turczi	1	[{"added": {}}]	1	1
407	2021-04-13 15:23:02.378256+02	86	Vangelis Bagiartakis	1	[{"added": {}}]	1	1
408	2021-04-13 15:23:11.931674+02	76	Natalia Kordowska	1	[{"added": {}}]	2	1
409	2021-04-13 15:23:21.632059+02	77	Bartłomiej Kordowski	1	[{"added": {}}]	2	1
410	2021-04-13 15:23:33.614535+02	41	Artipia Games	1	[{"added": {}}]	3	1
411	2021-04-13 15:23:48.197415+02	65	Kitchen Rush	1	[{"added": {}}]	6	1
412	2021-04-13 15:24:36.968333+02	42	Dessin	1	[{"added": {}}]	16	1
413	2021-04-13 15:25:14.331002+02	87	David Franck	1	[{"added": {}}]	1	1
414	2021-04-13 15:25:29.88931+02	88	Laurent Escoffier	1	[{"added": {}}]	1	1
415	2021-04-13 15:25:53.320074+02	66	Pix	1	[{"added": {}}]	6	1
416	2021-04-13 15:26:51.805226+02	43	Pose de tuile	1	[{"added": {}}]	16	1
417	2021-04-13 15:28:14.745054+02	78	Cyril Bouquet	1	[{"added": {}}]	2	1
418	2021-04-13 15:28:25.098336+02	42	Blue Orange	1	[{"added": {}}]	3	1
419	2021-04-13 15:28:38.469816+02	67	Kingdomino	1	[{"added": {}}]	6	1
420	2021-04-13 15:29:21.328939+02	65	Kitchen Rush	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
421	2021-04-13 15:30:29.846596+02	44	Casino	1	[{"added": {}}]	16	1
422	2021-04-13 15:30:58.209618+02	89	Rüdiger Dorn	1	[{"added": {}}]	1	1
423	2021-04-13 15:31:10.345661+02	79	Harald Lieske	1	[{"added": {}}]	2	1
424	2021-04-13 15:31:20.35543+02	80	Mia Steingräber	1	[{"added": {}}]	2	1
425	2021-04-13 15:31:37.70558+02	81	Markus Schmuck	1	[{"added": {}}]	2	1
426	2021-04-13 15:33:11.756401+02	43	Oya	1	[{"added": {}}]	3	1
427	2021-04-13 15:33:33.085909+02	68	Las Vegas	1	[{"added": {}}]	6	1
428	2021-04-13 15:40:39.245754+02	61	Carcassonne Star Wars	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
429	2021-04-13 15:44:22.549262+02	44	ThinkGeek.com	1	[{"added": {}}]	3	1
430	2021-04-13 15:44:38.107322+02	69	Hover Kraft	1	[{"added": {}}]	6	1
431	2021-04-13 15:45:58.915223+02	90	Daryl Andrews	1	[{"added": {}}]	1	1
432	2021-04-13 15:46:08.002571+02	91	Adrian Adamescu	1	[{"added": {}}]	1	1
433	2021-04-13 15:46:17.455357+02	82	Peter Wocken	1	[{"added": {}}]	2	1
434	2021-04-13 15:46:55.726172+02	45	Flood Gate Games	1	[{"added": {}}]	3	1
435	2021-04-13 15:47:20.94288+02	70	Sagrada	1	[{"added": {}}]	6	1
436	2021-04-13 15:49:22.818849+02	92	Francis Pacherie	1	[{"added": {}}]	1	1
437	2021-04-13 15:49:30.764121+02	83	Emmanuel Roudier	1	[{"added": {}}]	2	1
438	2021-04-13 15:49:41.711798+02	46	Clash of Arms Games	1	[{"added": {}}]	3	1
439	2021-04-13 15:49:54.236701+02	71	Ivanhoë	1	[{"added": {}}]	6	1
440	2021-04-13 15:51:20.356831+02	93	Richard Garfield	1	[{"added": {}}]	1	1
441	2021-04-13 15:51:33.04182+02	84	Gabriel Butik	1	[{"added": {}}]	2	1
442	2021-04-13 15:51:44.914954+02	85	Romain Gaschet	1	[{"added": {}}]	2	1
443	2021-04-13 15:51:59.739677+02	86	Jonathan Silvestre	1	[{"added": {}}]	2	1
444	2021-04-13 15:52:31.235769+02	72	King Of Tokyo	1	[{"added": {}}]	6	1
445	2021-04-13 15:55:44.089509+02	87	Mathieu Leyssenne	1	[{"added": {}}]	2	1
446	2021-04-13 15:56:10.066631+02	73	Loony Quest	1	[{"added": {}}]	6	1
447	2021-04-13 15:58:45.156005+02	18	Loony Quest: The Lost City	1	[{"added": {}}]	7	1
448	2021-04-13 16:00:24.577378+02	94	Ken Gruhl	1	[{"added": {}}]	1	1
449	2021-04-13 16:00:39.314005+02	88	Ronan Le Maître	1	[{"added": {}}]	2	1
450	2021-04-13 16:00:48.633456+02	89	Irina Pechenkina	1	[{"added": {}}]	2	1
451	2021-04-13 16:01:02.876464+02	47	Gamewright	1	[{"added": {}}]	3	1
452	2021-04-13 16:01:16.277077+02	74	Cahoots	1	[{"added": {}}]	6	1
453	2021-04-13 16:04:15.904133+02	95	Jonathan Algaze	1	[{"added": {}}]	1	1
454	2021-04-13 16:04:26.163743+02	48	Topi Games	1	[{"added": {}}]	3	1
455	2021-04-13 16:04:42.777737+02	75	HARRY Potter Une année à Poudlard	1	[{"added": {}}]	6	1
456	2021-04-13 16:04:57.606433+02	75	HARRY Potter Une année à Poudlard	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
457	2021-04-13 16:06:22.694724+02	96	Nick Hayes	1	[{"added": {}}]	1	1
458	2021-04-13 16:06:30.883176+02	90	Jean-Baptiste Reynaud	1	[{"added": {}}]	2	1
459	2021-04-13 16:07:06.113095+02	76	Wizards Wanted	1	[{"added": {}}]	6	1
460	2021-04-13 16:08:10.629252+02	45	japon	1	[{"added": {}}]	16	1
461	2021-04-13 16:08:14.25718+02	46	voyage	1	[{"added": {}}]	16	1
462	2021-04-13 16:09:57.154612+02	91	Xavier Gueniffey Durin	1	[{"added": {}}]	2	1
463	2021-04-13 16:10:08.986697+02	49	Funforge	1	[{"added": {}}]	3	1
464	2021-04-13 16:10:23.066796+02	77	Tokaido	1	[{"added": {}}]	6	1
465	2021-04-13 16:11:14.531834+02	47	Pirate	1	[{"added": {}}]	16	1
466	2021-04-13 16:11:23.157373+02	48	Course	1	[{"added": {}}]	16	1
467	2021-04-13 16:12:36.899278+02	97	Malcolm Braff	1	[{"added": {}}]	1	1
468	2021-04-13 16:13:26.020315+02	50	Game Works SARL	1	[{"added": {}}]	3	1
469	2021-04-13 16:13:39.269774+02	78	Jamaica	1	[{"added": {}}]	6	1
470	2021-04-13 16:16:02.535221+02	49	Pose d'Ouvrier	1	[{"added": {}}]	16	1
471	2021-04-13 16:16:33.425891+02	98	Kami Mandell	1	[{"added": {}}]	1	1
472	2021-04-13 16:16:40.498999+02	99	Nate Heiss	1	[{"added": {}}]	1	1
473	2021-04-13 16:16:48.112669+02	92	Delaney Mamer	1	[{"added": {}}]	2	1
474	2021-04-13 16:16:55.950664+02	51	The Op	1	[{"added": {}}]	3	1
475	2021-04-13 16:17:13.38385+02	79	Harry Potter: House Cup Competition	1	[{"added": {}}]	6	1
476	2021-04-13 16:18:05.728828+02	38	Le Parrain: L'empire De Corleone	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
477	2021-04-13 16:19:43.257711+02	100	Andrew Wolf	1	[{"added": {}}]	1	1
478	2021-04-13 16:19:53.437525+02	101	Patrick Marino	1	[{"added": {}}]	1	1
479	2021-04-13 16:20:14.992441+02	80	Harry Potter: Death Eater Rising	1	[{"added": {}}]	6	1
480	2021-04-13 16:22:49.338515+02	81	Fantastic Beasts: Perilous pursuit	1	[{"added": {}}]	6	1
\.


--
-- TOC entry 3450 (class 0 OID 22328)
-- Dependencies: 201
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	ludorecherche	designer
2	ludorecherche	artist
3	ludorecherche	publisher
4	ludorecherche	language
5	ludorecherche	playingmode
6	ludorecherche	game
8	admin	logentry
9	auth	permission
10	auth	group
11	auth	user
12	contenttypes	contenttype
13	sessions	session
15	ludorecherche	difficulty
16	ludorecherche	tag
7	ludorecherche	addon
17	ludorecherche	multiaddon
\.


--
-- TOC entry 3497 (class 0 OID 33351)
-- Dependencies: 248
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-03 15:51:10.08459+02
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
41	ludorecherche	0022_auto_20210410_2152	2021-04-10 21:52:36.590088+02
42	ludorecherche	0023_auto_20210411_1113	2021-04-11 11:13:30.26936+02
\.


--
-- TOC entry 3465 (class 0 OID 22473)
-- Dependencies: 216
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
bgtxe95byiyw342hva1hdqotpri6qyuq	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lTLaH:XVD922rRWZz0dBj-3yeMQV5989sKSsj2sCYl-OVhhOA	2021-04-19 11:31:49.645542+02
aj17pwr5re3bl3xlb5r1haxds7c0akd1	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lU3Jf:9J3Yq_FZmHaTs4fTbbbXOXZpgcqJ6D-6OzFqtmXcu8A	2021-04-21 10:13:35.36379+02
\.


--
-- TOC entry 3467 (class 0 OID 22485)
-- Dependencies: 218
-- Data for Name: ludorecherche_addon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, language_id, age) FROM stdin;
11	Sentinels Of The Multiverse: Rook City	2	5	30 min	2	2021-04-10 18:07:45.994893+02	somrc.jpg	https://boardgamegeek.com/boardgame/110242/sentinels-multiverse-rook-city	18	2	13
12	Sentinels Of The Multiverse: Wrath of the Cosmos	2	5	60 min	2	2021-04-10 18:09:41.921004+02	somwotc.jpg	https://boardgamegeek.com/boardgame/154828/sentinels-multiverse-wrath-cosmos	18	2	13
13	Sentinels Of The Multiverse:infernal relics	2	5	30 min	2	2021-04-10 18:11:52.602503+02	somir.jpg	https://boardgamegeek.com/boardgame/123726/sentinels-multiverse-infernal-relics	18	2	13
10	Sentinels Of The Multiverse: Shattered Timelines	2	5	60 min	2	2021-04-10 18:05:28.008977+02	somst.jpg	https://boardgamegeek.com/boardgame/132959/sentinels-multiverse-shattered-timelines	18	2	13
15	Sentinel Tactics: Uprising	2	8	30 à 60 min	2	2021-04-11 11:26:54.790118+02	stu.png	https://boardgamegeek.com/boardgame/158326/sentinel-tactics-uprising	31	2	13
16	Descent: l'autel du désespoir	2	5	120 à 240 min	2	2021-04-11 11:40:51.623757+02	pic198780.jpg	https://boardgamegeek.com/boardgame/24976/descent-altar-despair	33	1	12
17	Descent: héros de légende	2	5	120 à 240 min	2	2021-04-11 11:43:35.256855+02	pic316503.jpg	https://boardgamegeek.com/boardgame/29298/descent-road-legend	33	1	12
18	Loony Quest: The Lost City	2	5	20 min	1	2021-04-13 15:58:45.13385+02	pic3564166.jpg	https://boardgamegeek.com/boardgame/191302/loony-quest-lost-city	73	1	8
14	Sentinels Of The Multiverse:Villain of the Multiverse	2	5	60 min	2	2021-04-10 18:13:55.626422+02	somvom.jpg	https://boardgamegeek.com/boardgame/171965/sentinels-multiverse-villains-multiverse	18	2	13
2	Minivilles: 5-6 Extension	2	6	30 min	1	2021-04-07 15:47:14.960336+02	minivillesext56.jpg	https://boardgamegeek.com/boardgame/185279/minivilles-5-6-extension	7	1	\N
3	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	1	6	90 min	2	2021-04-08 13:58:14.69509+02	pf_ljc_sands_be.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-skull-shackles-boite-d-extensions	10	1	\N
4	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes boite d'extension	1	6	90 min	2	2021-04-08 14:15:19.227054+02	pf_ljdc_edsdr_be.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-jeu-de-cartes-l-eveil-des-seigneurs-des-runes-jeu-de-base-1	11	1	\N
5	Pathfinder adventure card game: mummy's mask extension set	1	6	90 min	2	2021-04-09 17:47:26.415016+02	pfacgmm.jpg	https://boardgamegeek.com/boardgame/187687/pathfinder-adventure-card-game-mummys-mask-base-se	13	2	14
6	Pathfinder adventure card game: curse of the crimson throne	1	6	90 min	2	2021-04-09 17:56:32.693793+02	pfacgcotct.jpg	https://boardgamegeek.com/boardgame/271061/pathfinder-adventure-card-game-curse-crimson-thron	14	2	13
7	Legendary: a Marvel Deck Building Game - Civil War	1	5	30 à 60 min	2	2021-04-10 15:51:39.098477+02	legendary_civil_war.jpg	https://boardgamegeek.com/boardgame/193513/legendary-marvel-deck-building-game-civil-war	17	2	14
8	Sentinels Of The Multiverse: OblivAeon	2	5	30 à 60 min	2	2021-04-10 15:59:54.563609+02	somobli.jpg	https://boardgamegeek.com/boardgameexpansion/192926/sentinels-multiverse-oblivaeon	18	2	13
9	Sentinels Of The Multiverse: Vengeance	2	5	45 min	2	2021-04-10 18:02:34.828359+02	somv.jpg	https://boardgamegeek.com/boardgame/134398/sentinels-multiverse-vengeance	18	2	13
\.


--
-- TOC entry 3483 (class 0 OID 22573)
-- Dependencies: 234
-- Data for Name: ludorecherche_addon_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_artists (id, addon_id, artist_id) FROM stdin;
2	2	13
3	3	15
4	4	16
5	4	17
6	5	18
7	6	19
8	7	24
9	7	23
10	8	25
11	9	25
12	10	25
13	11	25
14	12	25
15	13	25
16	14	25
17	15	25
18	16	42
19	16	44
20	16	45
21	16	46
23	17	44
24	17	45
25	17	42
26	18	58
27	18	87
\.


--
-- TOC entry 3485 (class 0 OID 22581)
-- Dependencies: 236
-- Data for Name: ludorecherche_addon_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_designers (id, addon_id, designer_id) FROM stdin;
2	2	6
3	3	7
4	4	7
5	5	7
6	6	7
7	6	8
8	6	9
9	6	10
10	6	11
11	7	18
12	8	19
13	8	20
14	8	21
15	9	19
16	9	20
17	9	21
18	10	19
19	10	20
20	10	21
21	10	22
22	10	23
23	11	19
24	11	20
25	11	21
26	12	19
27	12	20
28	12	21
29	13	24
30	13	19
31	13	20
32	13	21
33	14	19
34	14	20
35	14	21
36	15	43
37	15	19
38	15	44
39	16	46
40	17	46
41	17	47
42	18	88
43	18	87
\.


--
-- TOC entry 3493 (class 0 OID 33191)
-- Dependencies: 244
-- Data for Name: ludorecherche_addon_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_playing_mode (id, addon_id, playingmode_id) FROM stdin;
2	2	4
3	3	1
4	3	3
5	4	1
6	4	3
7	5	1
8	5	3
9	6	1
10	6	3
11	7	1
12	7	2
13	8	3
14	9	3
15	10	3
16	11	3
17	12	3
18	13	3
19	14	3
20	15	2
21	15	4
22	16	5
23	17	5
24	18	4
\.


--
-- TOC entry 3487 (class 0 OID 22589)
-- Dependencies: 238
-- Data for Name: ludorecherche_addon_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_publishers (id, addon_id, publisher_id) FROM stdin;
3	2	1
4	2	5
5	3	6
6	3	7
7	4	6
8	4	7
9	5	6
10	6	6
11	7	14
12	8	15
13	9	15
14	10	15
15	11	15
16	12	15
17	13	15
18	14	15
19	15	15
20	16	11
21	16	12
22	17	11
23	17	12
24	18	27
\.


--
-- TOC entry 3469 (class 0 OID 22498)
-- Dependencies: 220
-- Data for Name: ludorecherche_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_artist (id, name) FROM stdin;
1	Bernard Skopnik
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
18	Tyler Jacobson
19	Setiawan Lie
20	Jean-François Gauthier
21	Chris Beck
22	Evan Simonet
23	Krista Timberlake
24	Brian Bateman
25	Adam Rebottaro
26	Daarken
27	Tim AmeyO'Neil
28	Jakub Rozalski
29	Mick Uhl
30	Jean Baher
31	Dominique Ehrhard
32	Martin Abel
34	Mio Del Rosario
36	Steve Swenston
37	Alexandr Elichev
38	Alvaro Nebot
39	Josh T. McDowell
40	Michael Menzel
41	Diego Gisbert Llorens
43	Hub
44	John Goodenough
45	Frank Walls
46	Rafał Hrynkiewicz
42	Jesper Ejsing
35	Moy Shin Hung
47	Piotr Foksowicz
48	Mateusz Bielski
49	Piotr Cieśliński
50	Andy Brase
51	Massimiliano Bertolini
52	Marjorie Davis
53	Ralph Horsley
54	Miguel Coimbra
55	Richard Wright
56	Nicolas Fructus
57	Karl Kopinski
58	Paul Mafayon
59	Chih-Fan Chen
60	Gérard Mathieu
61	Delphine Ribeyre
62	Sergo
63	Pierre Santamaria
64	Florian de Gesincourt
65	Mahulda Jelly
66	Arnaud Demaegd
67	Legruth
68	Martin Mottet
69	Amélie Guinet
70	Tomas Kucerovsky
71	Stéphane Gantiez
72	Stéphane Escapa
73	Charlène Le Scanff
74	Tyler Edlin
75	C. B. Canga
76	Natalia Kordowska
77	Bartłomiej Kordowski
78	Cyril Bouquet
79	Harald Lieske
80	Mia Steingräber
81	Markus Schmuck
82	Peter Wocken
83	Emmanuel Roudier
84	Gabriel Butik
85	Romain Gaschet
86	Jonathan Silvestre
87	Mathieu Leyssenne
88	Ronan Le Maître
89	Irina Pechenkina
90	Jean-Baptiste Reynaud
91	Xavier Gueniffey Durin
92	Delaney Mamer
\.


--
-- TOC entry 3471 (class 0 OID 22508)
-- Dependencies: 222
-- Data for Name: ludorecherche_designer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_designer (id, name) FROM stdin;
1	Reiner Knizia
2	Darwin Kastle
3	Robert Dougherty
4	Holger Bösch
5	Nicolas Smeers
6	Masao Suganuma
7	Mike Selinker
8	Chad Brown
9	Keith Richmond
10	Aviva Schecterson
11	Liz Spain
12	Paul Peterson
13	Tanis O'Conor
14	Jean-François Gauthier
15	Michael Boggs
16	Nate French
17	Caleb Grace
18	Devin Low
19	Christopher Badell
20	Paul Bender
21	Adam Rebottaro
22	Alex Franklin
23	Bryan Graham
24	Richard Launius
25	John Goodenough
26	Jeff Tidball
27	Jamey Stegmaier
28	Future Pastimes
29	Dominique Ehrhard
30	Colby Dauch
31	J.Arthur Ellis
32	Andrea Mezzotero
33	Corey Konieczka
34	Greg Stafford
35	Isaac Childres
36	Gerhard Hecht
37	Justin Kemppainen
38	Adam Sadler
39	Brady Sadler
40	Bill Slavicsek
41	Mike Mearls
42	Peter Lee
43	Kevin G. Nunn
44	Luther Bell Hendricks V
45	Frédérick Condette
46	Kevin Wilson
47	Robert A. Kouba
48	Michał Oracz
49	Martin Wallace
50	Darrell Hardy
51	Robert Harris
52	Bruno Cathala
53	Antoine Bauza
54	Eric M. Lang
55	Prospero Hall
56	Claude Lucchini
57	Jesse Li
58	Mark Latham
59	Gustavo Adolfo Cuadrado
60	Paul J. Gruen
61	Bruno Faidutti
62	Albert Lamorisse
63	Michael I. Levin
64	Bill Markham
65	Reuben Klamer
66	Nicolas Bonnefoy
67	Arnaud Ladagnous
68	Fabrice Mazza
69	Sébastien Pauchon
70	Billy Stevenson
71	Thomas Cauët
72	Arch Stanton
73	Lewis Cheshire
74	Cyril Demaegd
75	Jeff Bazarko
76	Mordecai Meirowitz
77	Scott Abbot
78	Chris Haney
79	Vlaada Chvátil
80	Klaus-Jürgen Wrede
81	Julien Prothière
82	Florent Toscano
83	Frédéric Vuagnat
84	Matt Leacock
85	Dávid Turczi
86	Vangelis Bagiartakis
87	David Franck
88	Laurent Escoffier
89	Rüdiger Dorn
90	Daryl Andrews
91	Adrian Adamescu
92	Francis Pacherie
93	Richard Garfield
94	Ken Gruhl
95	Jonathan Algaze
96	Nick Hayes
97	Malcolm Braff
98	Kami Mandell
99	Nate Heiss
100	Andrew Wolf
101	Patrick Marino
\.


--
-- TOC entry 3499 (class 0 OID 33535)
-- Dependencies: 250
-- Data for Name: ludorecherche_difficulty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_difficulty (id, name) FROM stdin;
1	Famille
2	vétéran
3	complexe
\.


--
-- TOC entry 3475 (class 0 OID 22528)
-- Dependencies: 226
-- Data for Name: ludorecherche_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, language_id) FROM stdin;
13	Pathfinder adventure card game: mummy's mask	1	4	90 min	2	2021-04-09 17:44:36.509927+02	pfacgmm.jpg	https://boardgamegeek.com/boardgame/187687/pathfinder-adventure-card-game-mummys-mask-base-se	f	90	14	2
11	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	1	4	90 min	2	2021-04-08 14:10:42.256444+02	pf_ljdc_edsdr.jpg	https://boardgamegeek.com/boardgame/133038/pathfinder-adventure-card-game-rise-runelords-base	f	90	14	1
10	Pathfinder le jeu de cartes: skull and shackles	1	4	90 min	2	2021-04-08 13:42:18.320671+02	pf_ljc_sands.jpg	https://boardgamegeek.com/image/2268287/pathfinder-adventure-card-game-skull-shackles-base	f	90	14	1
17	Legendary: a Marvel Deck Building Game	1	5	30 à 60 min	2	2021-04-10 15:47:38.596799+02	legendary.jpg	https://boardgamegeek.com/boardgame/129437/legendary-marvel-deck-building-game	f	60	14	2
18	Sentinels Of The Multiverse	2	5	30 à 60 min	2	2021-04-10 15:57:28.45478+02	som.jpg	https://boardgamegeek.com/boardgame/102652/sentinels-multiverse	f	60	13	2
19	Warhammer 40000: L'Hérésie d'Horus	2	2	135 min	3	2021-04-10 18:26:29.714322+02	w40khh.jpg	https://boardgamegeek.com/boardgame/63543/horus-heresy	f	135	14	1
20	Scythe	1	5	90 à 115 min	3	2021-04-10 18:31:15.856768+02	scythe.jpg	https://boardgamegeek.com/boardgame/169786/scythe	f	115	14	1
28	warhammer quest: le jeu d'aventure	1	4	30 à 60 min	2	2021-04-10 19:10:10.91279+02	wclja.jpg	https://boardgamegeek.com/boardgame/181521/warhammer-quest-adventure-card-game	f	60	14	1
31	Sentinel Tactics: The Flame Of Freedom	2	8	30 à 60 min	2	2021-04-11 11:24:49.79594+02	sttfof.png	https://boardgamegeek.com/boardgame/146408/sentinel-tactics-flame-freedom	f	60	13	2
24	Runewars	2	4	180 à 240 min	3	2021-04-10 18:50:45.673069+02	runewars.jpg	https://boardgamegeek.com/boardgame/59294/runewars	f	240	14	1
34	Neuroshima Hex!	1	4	30 min	2	2021-04-11 12:04:36.403965+02	pic263013.jpg	https://boardgamegeek.com/boardgame/21241/neuroshima-hex-30	f	30	10	1
30	Dungeons & Dragons: Wrath of Ashardalon Board Game	1	5	60 min	2	2021-04-10 19:17:13.366016+02	ddwoa.jpg	https://boardgamegeek.com/boardgame/66356/dungeons-dragons-wrath-ashardalon-board-game	f	60	12	2
7	Minivilles	2	4	30 min	1	2021-04-07 15:45:19.506514+02	minivilles.png	https://boardgamegeek.com/boardgame/143884/machi-koro	f	30	7	1
14	Pathfinder adventure card game: core set	1	4	90 min	2	2021-04-09 17:53:08.569365+02	pfacgcs.jpg	https://boardgamegeek.com/boardgame/271060/pathfinder-adventure-card-game-core-set	f	90	13	2
33	Descent: Voyage dans les ténèbres	2	5	120 à 240 min	2	2021-04-11 11:36:28.164947+02	pic249300.jpg	https://boardgamegeek.com/boardgame/17226/descent-journeys-dark	f	240	13	1
16	Marvel Champions Le jeu de cartes	1	4	45 à 90 min	2	2021-04-10 15:41:50.663744+02	mctcc.jpg	https://boardgamegeek.com/boardgame/285774/marvel-champions-card-game	f	90	14	1
21	Dune	3	6	180 min	3	2021-04-10 18:36:39.479649+02	dune.jpg	https://www.trictrac.net/jeu-de-societe/dune	f	180	14	1
22	Méditerranée	2	4	120 min	2	2021-04-10 18:42:23.128493+02	med.jpg	https://www.trictrac.net/jeu-de-societe/mediterranee	f	120	12	1
23	Crystal Clans	2	2	30 à 60 min	2	2021-04-10 18:46:24.653054+02	crystalclan.jpg	https://boardgamegeek.com/boardgame/228133/crystal-clans	f	60	14	1
25	La guerre des héros	2	2	120 min	3	2021-04-10 18:55:14.358008+02	lgdh.jpg	https://www.trictrac.net/jeu-de-societe/la-guerre-des-heros	f	120	14	1
27	Andor: Chada et Thorn	2	2	45 min	2	2021-04-10 19:04:09.022687+02	andorct.png	https://www.trictrac.net/jeu-de-societe/andor-chada-thorn	f	45	14	1
26	Gloomhaven	1	4	30 à 120 min	3	2021-04-10 18:59:46.118143+02	gloomhaven.jpg	https://boardgamegeek.com/boardgame/174430/gloomhaven	f	120	14	1
29	Dungeons & Dragons: Castle Ravenloft Board Game	1	5	60 min	2	2021-04-10 19:14:55.407251+02	ddcr.jpg	https://boardgamegeek.com/boardgame/59946/dungeons-dragons-castle-ravenloft-board-game	f	60	12	2
32	Okko Chronicles: Cycle of Water – Quest into Darkness	2	5	120 min	3	2021-04-11 11:30:53.057215+02	octcof.jpg	https://boardgamegeek.com/boardgame/228399/okko-chronicles-cycle-water-quest-darkness	f	120	14	1
35	Runebound	2	6	120 à 240 min	2	2021-04-11 12:07:48.959813+02	pic178189.jpg	https://boardgamegeek.com/boardgame/21523/runebound-second-edition	f	240	12	1
36	Talisman	2	6	90 min	1	2021-04-11 12:11:16.68628+02	pic332870.jpg	https://boardgamegeek.com/boardgame/27627/talisman-revised-4th-edition	f	90	13	1
37	7 wonders duel	2	2	30 min	2	2021-04-11 12:13:51.757007+02	pic3376065.jpg	https://boardgamegeek.com/boardgame/173346/7-wonders-duel	f	30	10	1
39	Disney Villainous	2	6	50 min	2	2021-04-11 12:20:13.276224+02	pic4216110.jpg	https://boardgamegeek.com/boardgame/256382/disney-villainous	f	50	10	1
40	Otys	2	4	60 min	3	2021-04-11 12:23:00.090275+02	pic3668630.jpg	https://boardgamegeek.com/boardgame/222542/otys	f	60	14	1
41	Ponzi Scheme	3	5	90 min	3	2021-04-11 12:25:08.500815+02	pic5100985.jpg	https://boardgamegeek.com/boardgame/180899/ponzi-scheme	f	90	12	1
42	Harry Potter Miniatures Adventure Game	2	6	30 à 90 min	2	2021-04-11 12:27:51.989594+02	pic4403592.jpg	https://boardgamegeek.com/boardgame/246744/harry-potter-miniatures-adventure-game	f	90	12	1
43	La bonne Paye	2	6	30 min	1	2021-04-11 15:35:12.625281+02	0b342fbc7eda5033f5a99fa650e512d73548.jpg	https://www.trictrac.net/jeu-de-societe/la-bonne-paye-les-bons-voyages	f	30	8	1
44	Monopoly: Star Wars Limited Collector's Edition	2	8	60 min	1	2021-04-11 15:37:57.401919+02	pic12726.jpg	https://boardgamegeek.com/boardgame/26696/monopoly-star-wars-limited-collectors-edition	f	60	8	1
45	La vallée des mammouths	3	6	180 min	1	2021-04-11 15:41:18.226754+02	pic4032737.jpg	https://boardgamegeek.com/boardgame/2535/valley-mammoths	f	180	12	1
46	Risk: La conquête du monde	2	6	120 min	1	2021-04-11 15:44:56.783594+02	pic5244709.jpg	https://boardgamegeek.com/boardgame/181/risk	f	120	10	1
47	Destins	2	6	60 min	1	2021-04-11 15:47:39.770367+02	pic710742.jpg	https://boardgamegeek.com/boardgame/2921/game-of-life	f	60	8	1
48	L'ascenceur Infernal	2	6	60 min	2	2021-04-11 15:51:26.106432+02	escape-game-l-ascenseur-infernal.jpg		f	60	14	1
49	Unlock!:mystery Adventures	1	6	60 min	2	2021-04-11 15:55:21.973211+02	pic3588255.jpg	https://boardgamegeek.com/boardgame/228867/unlock-mystery-adventures	f	60	10	1
15	Goblivion	1	2	30 min	1	2021-04-10 15:29:36.78011+02	goblivion.png	https://boardgamegeek.com/boardgame/243538/goblivion	f	\N	12	1
38	Le Parrain: L'empire De Corleone	2	5	60 à 90 min	3	2021-04-11 12:17:06.981739+02	pic3364797.jpg	https://boardgamegeek.com/boardgame/195539/godfather-corleones-empire	f	90	14	1
50	Unlock!:secret Adventures	1	6	60 min	2	2021-04-11 15:58:12.803851+02	pic3945063.jpg	https://boardgamegeek.com/boardgame/239307/unlock-secret-adventures	f	60	10	1
55	Backgammon	2	2	30 min	2	2021-04-11 16:09:46.266198+02	pic1361122.jpg	https://boardgamegeek.com/boardgame/2397/backgammon	f	30	8	\N
56	Dames Chinoises	2	6	30 min	1	2021-04-11 16:11:09.092682+02	pic113974.jpg	https://boardgamegeek.com/boardgame/2386/chinese-checkers	f	30	7	\N
57	Trivial pursuit: Passeport pour le monde	2	6	60 à 90 min	1	2021-04-11 16:14:03.942937+02	pic64066.jpg	https://boardgamegeek.com/boardgame/15431/trivial-pursuit-globetrotter	f	90	12	1
58	Trivial pursuit: Histoire de France	2	6	30 à 60 min	1	2021-04-11 16:17:43.568435+02	93aff744fcb9fb7a6e872948c6333dabc49f.jpeg	https://www.trictrac.net/jeu-de-societe/trivial-pursuit-histoire-de-france-0	f	90	15	1
59	Trivial pursuit: Édition Famille	2	6	30 à 60 min	1	2021-04-11 16:19:59.672838+02	3ed7e5772be7882798dc5aab3e2f66337ff4.jpeg	https://www.trictrac.net/jeu-de-societe/trivial-pursuit-edition-famille	f	60	10	1
60	Code Names XXL	2	8	15 min	1	2021-04-11 16:23:35.375668+02	6a43f48ceaa4d9fafb0dbe7abe228c526ad77af8bf389d7fe9d79456f482.jpeg	https://www.trictrac.net/jeu-de-societe/codenames-xxl	f	15	12	1
62	[kosmopoli:t]	4	8	6 min	1	2021-04-11 16:28:41.514166+02	bd8790fd9e266f4bd566499340d42987f40c6d0a2a54a2f7995d4065f69a.png	https://www.trictrac.net/jeu-de-societe/kosmopoli-t	f	6	10	1
63	Maître Renard	2	4	20 min	1	2021-04-11 16:30:49.848823+02	e84bf5c68ad2925553a9987591d272bb4af8.jpeg	https://www.trictrac.net/jeu-de-societe/maitre-renard-0	f	20	7	1
64	Le Désert Interdit	2	5	45 min	1	2021-04-11 16:34:00.177101+02	pic1528722.jpg	https://boardgamegeek.com/boardgame/136063/forbidden-desert	f	45	10	1
66	Pix	4	9	30 min	1	2021-04-13 15:25:53.306404+02	pic1558327.jpg	https://boardgamegeek.com/boardgame/67181/pix	f	30	8	1
67	Kingdomino	2	4	15 min	1	2021-04-13 15:28:38.454816+02	pic3132685.png	https://boardgamegeek.com/boardgame/204583/kingdomino	f	15	8	1
65	Kitchen Rush	1	4	30 à 45 min	1	2021-04-13 15:23:48.173448+02	pic3559531.jpg	https://boardgamegeek.com/boardgame/223953/kitchen-rush	f	45	12	1
68	Las Vegas	2	5	30 min	1	2021-04-13 15:33:33.06894+02	pic1261796.jpg	https://boardgamegeek.com/boardgame/117959/las-vegas	f	30	8	1
69	Hover Kraft	1	8	5 min	1	2021-04-13 15:44:38.092319+02	pic2310434.jpg	https://boardgamegeek.com/boardgame/169256/hoverkraft	f	5	8	2
70	Sagrada	1	4	30 à 45 min	1	2021-04-13 15:47:20.926915+02	pic3525224.jpg	https://boardgamegeek.com/boardgame/199561/sagrada	f	45	14	1
71	Ivanhoë	3	6	45 min	1	2021-04-13 15:49:54.221733+02	pic44101.jpg	https://boardgamegeek.com/boardgame/3389/castle-lords	f	45	7	1
72	King Of Tokyo	2	6	30 min	1	2021-04-13 15:52:31.220764+02	pic3043734.jpg	https://boardgamegeek.com/boardgame/70323/king-tokyo	f	30	8	1
73	Loony Quest	2	5	20 à 30 min	1	2021-04-13 15:56:10.05162+02	pic3043308.jpg	https://boardgamegeek.com/boardgame/136991/loony-quest	f	30	8	1
75	HARRY Potter Une année à Poudlard	1	8	20 à 45 min	1	2021-04-13 16:04:42.763774+02	pic5074351.jpg	https://boardgamegeek.com/boardgame/263189/harry-potter-year-hogwarts	f	45	7	1
76	Wizards Wanted	2	4	60 min	1	2021-04-13 16:07:06.094113+02	pic3329975.jpg	https://boardgamegeek.com/boardgame/217531/wizards-wanted	f	60	10	2
77	Tokaido	2	5	45 min	1	2021-04-13 16:10:23.052798+02	pic3747956.png	https://boardgamegeek.com/boardgame/123540/tokaido	f	45	8	1
78	Jamaica	2	6	30 à 60 min	1	2021-04-13 16:13:39.253804+02	pic1502119.jpg	https://boardgamegeek.com/boardgame/28023/jamaica	f	60	8	1
79	Harry Potter: House Cup Competition	2	4	75	1	2021-04-13 16:17:13.365134+02	pic5254783.jpg	https://boardgamegeek.com/boardgame/303006/harry-potter-house-cup-competition	f	75	11	2
80	Harry Potter: Death Eater Rising	2	4	45 à 90 min	1	2021-04-13 16:20:14.978431+02	pic4812850.jpg	https://boardgamegeek.com/boardgame/283211/harry-potter-death-eaters-rising	f	80	11	1
81	Fantastic Beasts: Perilous pursuit	2	4	45 à 60 min	1	2021-04-13 16:22:49.323512+02	pic4163373.jpg	https://boardgamegeek.com/boardgame/254193/fantastic-beasts-perilous-pursuit	f	60	8	2
61	Carcassonne Star Wars	2	5	35 min	1	2021-04-11 16:26:24.248494+02	03ec686e45886a7d9a993697848c558f678e.png	https://www.trictrac.net/jeu-de-societe/carcassonne-star-wars-edition-3	f	35	7	1
74	Cahoots	1	4	20 min	1	2021-04-13 16:01:16.261044+02	pic3989425.jpg	https://boardgamegeek.com/boardgame/246761/cahoots	f	20	10	2
51	Unlock!:exotic Adventures	1	6	60 min	2	2021-04-11 16:00:55.949386+02	pic4511284.png	https://boardgamegeek.com/boardgame/254226/unlock-exotic-adventures	f	60	10	1
52	SCRABBLE ZigZag	2	4	30 min	1	2021-04-11 16:04:05.35294+02	pic1861508.jpg	https://boardgamegeek.com/boardgame/151603/scrabble-twists-turns	f	30	10	1
53	Échecs	2	2	60 min	2	2021-04-11 16:06:04.588422+02	pic260745.jpg	https://boardgamegeek.com/boardgame/171/chess	f	60	6	\N
54	Master Mind	2	2	20 min	2	2021-04-11 16:07:38.620323+02	pic4420154.png	https://boardgamegeek.com/boardgame/2392/mastermind	f	20	8	\N
\.


--
-- TOC entry 3477 (class 0 OID 22549)
-- Dependencies: 228
-- Data for Name: ludorecherche_game_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_artists (id, game_id, artist_id) FROM stdin;
21	7	13
22	10	14
23	11	16
24	11	17
25	13	18
26	14	19
27	15	20
28	16	21
29	16	22
30	17	24
31	17	23
32	18	25
33	19	26
34	19	27
35	20	28
36	21	29
37	21	30
38	22	31
39	23	32
42	24	35
43	25	36
44	26	37
45	26	38
46	26	39
47	27	40
48	28	41
49	29	42
50	30	42
51	31	25
52	32	43
53	33	42
54	33	44
55	33	45
56	24	42
57	34	48
58	34	49
59	34	47
60	35	42
61	35	44
62	35	50
63	36	51
64	36	52
65	36	53
66	37	54
67	38	56
68	38	57
69	38	55
70	40	58
71	41	59
72	45	60
73	48	61
74	49	64
75	49	62
76	49	63
77	50	65
78	50	66
79	50	67
80	51	64
81	51	66
82	51	67
83	51	68
84	51	69
85	60	70
86	60	71
87	62	72
88	63	73
89	64	74
90	64	75
91	65	76
92	65	77
93	67	78
94	68	80
95	68	81
96	68	79
97	70	82
98	71	83
99	72	84
100	72	85
101	72	86
102	73	58
103	73	87
104	74	88
105	74	89
106	76	90
107	77	91
108	78	87
109	79	92
\.


--
-- TOC entry 3479 (class 0 OID 22557)
-- Dependencies: 230
-- Data for Name: ludorecherche_game_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_designers (id, game_id, designer_id) FROM stdin;
8	7	6
9	10	7
10	11	7
15	13	7
16	14	7
17	14	8
18	14	9
19	14	10
20	14	11
21	15	14
22	16	16
23	16	17
24	16	15
25	17	18
26	18	19
27	18	20
28	18	21
29	19	25
30	19	26
31	20	27
32	21	28
33	22	29
34	23	32
35	23	30
36	23	31
37	24	33
38	25	34
39	26	35
40	27	36
41	28	37
42	28	38
43	28	39
44	29	40
45	29	41
46	29	42
47	30	40
48	30	42
49	31	43
50	31	19
51	31	44
52	32	45
53	33	46
54	34	48
55	35	49
56	35	50
57	36	25
58	36	51
59	37	52
60	37	53
61	38	54
62	39	55
63	40	56
64	41	57
65	42	58
66	42	59
67	43	60
68	45	61
69	46	62
70	46	63
71	47	64
72	47	65
73	48	66
74	49	67
75	49	68
76	49	69
77	49	70
78	50	72
79	50	73
80	50	71
81	51	74
82	52	75
83	54	76
84	58	77
85	58	78
86	59	77
87	59	78
88	60	79
89	61	80
90	62	81
91	62	82
92	63	83
93	64	84
94	65	85
95	65	86
96	66	88
97	66	87
98	67	52
99	68	89
100	70	90
101	70	91
102	71	92
103	72	93
104	73	88
105	73	87
106	74	94
107	75	95
108	76	96
109	77	53
110	78	97
111	78	52
112	78	69
113	79	98
114	79	99
115	80	100
116	80	101
117	81	98
\.


--
-- TOC entry 3495 (class 0 OID 33199)
-- Dependencies: 246
-- Data for Name: ludorecherche_game_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_playing_mode (id, game_id, playingmode_id) FROM stdin;
3	7	4
4	10	1
5	10	3
6	11	1
7	11	3
8	13	1
9	13	3
10	14	1
11	14	3
12	15	1
13	15	3
14	16	1
15	16	3
16	17	1
17	17	2
18	18	3
19	19	4
20	20	1
21	20	4
22	21	4
23	22	4
24	23	4
25	24	4
26	25	4
27	26	1
28	26	3
29	27	3
30	28	3
31	29	3
32	30	3
37	33	5
38	32	5
39	31	5
40	34	1
41	34	4
42	35	4
43	36	4
44	37	4
45	38	4
46	39	4
47	40	4
48	41	4
49	42	3
50	42	4
51	43	4
52	44	4
53	45	4
54	46	4
55	47	4
56	48	3
57	49	3
58	50	3
59	51	3
60	52	4
61	53	4
62	54	4
63	55	4
64	56	4
65	57	4
66	58	4
67	59	4
68	60	4
69	61	4
70	62	3
71	63	4
72	64	3
73	65	3
74	66	4
75	67	4
76	68	4
77	69	4
78	70	4
79	71	4
80	72	4
81	73	4
82	74	3
83	75	3
84	75	4
85	76	4
86	77	4
87	78	4
88	79	4
89	80	3
90	81	3
\.


--
-- TOC entry 3481 (class 0 OID 22565)
-- Dependencies: 232
-- Data for Name: ludorecherche_game_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_publishers (id, game_id, publisher_id) FROM stdin;
9	7	1
10	7	5
11	10	6
12	10	7
13	11	6
14	11	7
15	13	6
16	14	6
17	15	8
18	15	9
19	15	10
20	16	11
21	16	12
22	16	13
23	17	14
24	18	15
25	19	11
26	19	12
27	20	16
28	20	17
29	21	18
30	22	18
31	23	19
32	24	11
33	24	12
34	25	20
35	27	2
36	27	21
37	28	11
38	28	12
39	29	22
40	30	22
41	31	15
42	32	23
43	33	11
44	33	12
45	34	2
46	35	11
47	35	12
48	36	11
49	37	24
50	38	25
51	39	26
52	40	27
53	40	28
54	41	29
55	42	30
56	43	31
57	44	31
58	45	18
59	46	31
60	47	32
61	48	33
62	49	34
63	50	34
64	51	34
65	52	35
66	57	31
67	58	36
68	59	31
69	60	2
70	61	37
71	62	38
72	63	39
73	64	40
74	65	41
75	66	1
76	67	42
77	68	43
78	69	44
79	70	17
80	70	45
81	71	46
82	72	2
83	73	27
84	74	47
85	75	48
86	76	35
87	77	49
88	78	50
89	79	51
90	80	51
91	81	51
\.


--
-- TOC entry 3503 (class 0 OID 33590)
-- Dependencies: 254
-- Data for Name: ludorecherche_game_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_tag (id, game_id, tag_id) FROM stdin;
1	7	1
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
15	13	3
16	13	4
17	13	5
18	13	6
19	13	7
20	13	8
21	14	2
22	14	3
23	14	4
24	14	5
25	14	6
26	14	7
27	14	8
28	15	8
29	15	9
30	15	3
31	16	10
32	16	11
33	16	12
34	17	8
35	17	10
36	17	11
37	14	12
38	13	12
39	11	12
40	10	12
41	18	11
42	18	12
43	19	12
44	19	13
45	19	14
46	19	15
47	20	16
48	20	17
49	20	12
50	20	15
51	21	2
52	21	12
53	21	14
54	21	15
55	21	18
56	22	2
57	22	19
58	22	20
59	23	3
60	23	15
61	24	2
62	24	3
63	24	15
64	25	3
65	25	15
66	26	3
67	26	4
68	26	5
69	26	7
70	26	8
71	27	21
72	27	3
73	27	5
74	27	7
75	28	3
76	28	4
77	28	7
78	28	12
79	28	22
80	29	3
81	29	4
82	29	7
83	29	12
84	29	23
85	30	3
86	30	4
87	30	5
88	30	7
89	30	12
90	30	23
91	31	11
92	31	12
93	31	5
94	32	3
95	32	4
96	32	5
97	32	7
98	32	12
99	33	3
100	33	4
101	33	5
102	33	7
103	33	12
104	24	24
105	33	24
106	34	25
107	34	12
108	34	15
109	35	24
110	35	3
111	35	12
112	35	7
113	36	3
114	36	12
115	36	7
116	37	1
117	37	20
118	38	2
119	38	26
120	39	27
121	39	3
122	39	12
123	40	25
124	40	2
125	41	2
126	41	28
127	42	12
128	42	29
129	42	30
130	43	2
131	44	2
132	45	31
133	46	32
134	46	15
135	47	2
136	48	33
137	49	33
138	50	33
139	51	33
140	52	34
141	53	35
142	54	35
143	52	35
144	47	35
145	46	35
146	43	35
147	44	35
148	55	35
149	56	35
150	57	35
151	57	36
152	58	35
153	58	20
154	58	36
155	59	35
156	59	36
157	60	37
158	60	38
159	61	1
160	61	39
161	62	40
162	65	40
163	65	41
164	65	2
165	66	42
166	67	1
167	67	43
168	68	44
169	61	43
170	69	1
171	70	20
172	71	20
173	73	42
174	75	29
175	75	7
176	75	30
177	76	30
178	76	7
179	77	45
180	77	46
181	77	7
182	78	48
183	78	47
184	79	49
185	79	29
186	79	30
187	38	49
188	80	29
189	80	30
190	81	29
191	81	30
\.


--
-- TOC entry 3489 (class 0 OID 33049)
-- Dependencies: 240
-- Data for Name: ludorecherche_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_language (id, name) FROM stdin;
1	Français
2	Anglais
\.


--
-- TOC entry 3505 (class 0 OID 86123)
-- Dependencies: 256
-- Data for Name: ludorecherche_multiaddon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, language_id, age) FROM stdin;
2	Pathfinder adventure card game: class deck - witch	1	4	90 min	2021-04-09 18:01:06.182455+02	pfacgcdw.jpg	https://boardgamegeek.com/boardgameexpansion/193385/pathfinder-adventure-card-game-class-deck-witch	2	2	14
1	Pathfinder le jeu de cartes:boites des decks de classe	1	4	90 min	2021-04-08 16:21:23.494914+02	pf_ljdc_bdc.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-boite-de-decks-de-classe	2	1	\N
\.


--
-- TOC entry 3507 (class 0 OID 86136)
-- Dependencies: 258
-- Data for Name: ludorecherche_multiaddon_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_artists (id, multiaddon_id, artist_id) FROM stdin;
1	1	15
\.


--
-- TOC entry 3509 (class 0 OID 86144)
-- Dependencies: 260
-- Data for Name: ludorecherche_multiaddon_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_designers (id, multiaddon_id, designer_id) FROM stdin;
1	1	7
2	2	7
3	2	8
4	2	9
5	2	10
6	2	11
7	2	12
8	2	13
\.


--
-- TOC entry 3511 (class 0 OID 86152)
-- Dependencies: 262
-- Data for Name: ludorecherche_multiaddon_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_games (id, multiaddon_id, game_id) FROM stdin;
1	1	10
2	1	11
3	2	10
4	2	11
5	2	13
6	2	14
7	1	13
8	1	14
\.


--
-- TOC entry 3513 (class 0 OID 86160)
-- Dependencies: 264
-- Data for Name: ludorecherche_multiaddon_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_playing_mode (id, multiaddon_id, playingmode_id) FROM stdin;
1	1	1
2	1	3
3	2	1
4	2	3
\.


--
-- TOC entry 3515 (class 0 OID 86168)
-- Dependencies: 266
-- Data for Name: ludorecherche_multiaddon_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_publishers (id, multiaddon_id, publisher_id) FROM stdin;
1	1	6
2	1	7
3	2	6
\.


--
-- TOC entry 3491 (class 0 OID 33059)
-- Dependencies: 242
-- Data for Name: ludorecherche_playingmode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_playingmode (id, name) FROM stdin;
1	Individuel
2	Associatif
3	Coopératif
4	Compétitif
5	Semi-coopératif
\.


--
-- TOC entry 3473 (class 0 OID 22518)
-- Dependencies: 224
-- Data for Name: ludorecherche_publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_publisher (id, name) FROM stdin;
1	Asmodée
2	iello
3	Azao Games
4	White Wizard Games
5	MGA
6	Paizo
7	Black Book
8	Goblivion Games
9	Paille Editions
10	Ôz Edition
11	Fantasy Flight Game
12	Edge
13	Living Card Game
14	Upper Deck Entertainment
15	Greater Than Games
16	Stonemaier Games
17	Matagot
18	Descartes Éditeur
19	Plaid Hat Games
20	Oriflam
21	kosmos
22	Wizards Of The Coast
23	The Red Joker
24	Repos Production
25	CMON Limited
26	Ravensburger
27	Libellud
28	Pearl Games
29	2Tomatoes Games
30	Knight Models
31	Parker
32	MB
33	Hachette
34	Space Cowboys
35	Mattel
36	Hasbro
37	filosofia
38	Jeux Opla
39	Superlude
40	Cocktail Games
41	Artipia Games
42	Blue Orange
43	Oya
44	ThinkGeek.com
45	Flood Gate Games
46	Clash of Arms Games
47	Gamewright
48	Topi Games
49	Funforge
50	Game Works SARL
51	The Op
\.


--
-- TOC entry 3501 (class 0 OID 33580)
-- Dependencies: 252
-- Data for Name: ludorecherche_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_tag (id, name) FROM stdin;
1	Construction
2	Gestion de ressource
3	Médieval fantastique
4	Exploration de donjon
5	Jeu à campagne
6	Pathfinder
7	Jeu de rôle
8	Deck-building
9	Tower-defense
10	Marvel Universe
11	super-héros
12	Joueur Asynchrone
13	Warhammer 40000
14	Science Fiction
15	Guerre
16	Diesel Punk
17	Mech Warfare
18	Dune
19	Commerce
20	Histoire
21	Andor
22	warhammer fantasy
23	Donjons et Dragons
24	runebound
25	Post Apocalyptic
26	Mafia
27	Disney
28	Finance
29	Harry Potter
30	Sorcier
31	Préhistoire
32	Époque Napoléonienne
33	Escape Games
34	Jeu de lettres
35	Classique
36	Quizz
37	Espion
38	Indice
39	Star Wars
40	Restaurant
41	Frénétique
42	Dessin
43	Pose de tuile
44	Casino
45	japon
46	voyage
47	Pirate
48	Course
49	Pose d'Ouvrier
\.


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 480, true);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 247
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 233
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_artists_id_seq', 27, true);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 235
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_designers_id_seq', 43, true);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 217
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_id_seq', 18, true);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 243
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_playing_mode_id_seq', 24, true);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 237
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_publishers_id_seq', 24, true);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 219
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_artist_id_seq', 92, true);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 221
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_designer_id_seq', 101, true);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 249
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_difficulty_id_seq', 3, true);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 227
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_artists_id_seq', 109, true);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 229
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_designers_id_seq', 117, true);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 225
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_id_seq', 81, true);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 245
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_playing_mode_id_seq', 90, true);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 231
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_publishers_id_seq', 91, true);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 253
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_tag_id_seq', 191, true);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 239
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_language_id_seq', 2, true);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 257
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_artists_id_seq', 1, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 259
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_designers_id_seq', 8, true);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 261
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_games_id_seq', 8, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 255
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_id_seq', 2, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 263
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_playing_mode_id_seq', 4, true);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 265
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_publishers_id_seq', 3, true);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 241
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_playingmode_id_seq', 5, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 223
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_publisher_id_seq', 51, true);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 251
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_tag_id_seq', 49, true);


--
-- TOC entry 3098 (class 2606 OID 22471)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3103 (class 2606 OID 22398)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3106 (class 2606 OID 22361)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3100 (class 2606 OID 22351)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3093 (class 2606 OID 22389)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3095 (class 2606 OID 22343)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3114 (class 2606 OID 22379)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3117 (class 2606 OID 22413)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3108 (class 2606 OID 22369)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3120 (class 2606 OID 22387)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 22427)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3111 (class 2606 OID 22465)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3126 (class 2606 OID 22451)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3088 (class 2606 OID 22335)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3090 (class 2606 OID 22333)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 33359)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3130 (class 2606 OID 22480)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3182 (class 2606 OID 22657)
-- Name: ludorecherche_addon_artists ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq UNIQUE (addon_id, artist_id);


--
-- TOC entry 3185 (class 2606 OID 22578)
-- Name: ludorecherche_addon_artists ludorecherche_add_on_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_pkey PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 22671)
-- Name: ludorecherche_addon_designers ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq UNIQUE (addon_id, designer_id);


--
-- TOC entry 3191 (class 2606 OID 22586)
-- Name: ludorecherche_addon_designers ludorecherche_add_on_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_add_on_designers_pkey PRIMARY KEY (id);


--
-- TOC entry 3137 (class 2606 OID 22495)
-- Name: ludorecherche_addon ludorecherche_add_on_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_name_key UNIQUE (name);


--
-- TOC entry 3139 (class 2606 OID 22493)
-- Name: ludorecherche_addon ludorecherche_add_on_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 33206)
-- Name: ludorecherche_addon_playing_mode ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq UNIQUE (addon_id, playingmode_id);


--
-- TOC entry 3212 (class 2606 OID 33196)
-- Name: ludorecherche_addon_playing_mode ludorecherche_add_on_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playing_mode_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 22685)
-- Name: ludorecherche_addon_publishers ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq UNIQUE (addon_id, publisher_id);


--
-- TOC entry 3196 (class 2606 OID 22594)
-- Name: ludorecherche_addon_publishers ludorecherche_add_on_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_add_on_publishers_pkey PRIMARY KEY (id);


--
-- TOC entry 3142 (class 2606 OID 22505)
-- Name: ludorecherche_artist ludorecherche_artist_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_name_key UNIQUE (name);


--
-- TOC entry 3144 (class 2606 OID 22503)
-- Name: ludorecherche_artist ludorecherche_artist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_pkey PRIMARY KEY (id);


--
-- TOC entry 3147 (class 2606 OID 22515)
-- Name: ludorecherche_designer ludorecherche_designer_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_name_key UNIQUE (name);


--
-- TOC entry 3149 (class 2606 OID 22513)
-- Name: ludorecherche_designer ludorecherche_designer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 33542)
-- Name: ludorecherche_difficulty ludorecherche_difficulty_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_name_key UNIQUE (name);


--
-- TOC entry 3226 (class 2606 OID 33540)
-- Name: ludorecherche_difficulty ludorecherche_difficulty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_pkey PRIMARY KEY (id);


--
-- TOC entry 3165 (class 2606 OID 22615)
-- Name: ludorecherche_game_artists ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq UNIQUE (game_id, artist_id);


--
-- TOC entry 3167 (class 2606 OID 22554)
-- Name: ludorecherche_game_artists ludorecherche_game_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_pkey PRIMARY KEY (id);


--
-- TOC entry 3171 (class 2606 OID 22629)
-- Name: ludorecherche_game_designers ludorecherche_game_designers_game_id_designer_id_98196acb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_game_id_designer_id_98196acb_uniq UNIQUE (game_id, designer_id);


--
-- TOC entry 3173 (class 2606 OID 22562)
-- Name: ludorecherche_game_designers ludorecherche_game_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_pkey PRIMARY KEY (id);


--
-- TOC entry 3159 (class 2606 OID 22538)
-- Name: ludorecherche_game ludorecherche_game_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_name_key UNIQUE (name);


--
-- TOC entry 3161 (class 2606 OID 22536)
-- Name: ludorecherche_game ludorecherche_game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 33220)
-- Name: ludorecherche_game_playing_mode ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq UNIQUE (game_id, playingmode_id);


--
-- TOC entry 3218 (class 2606 OID 33204)
-- Name: ludorecherche_game_playing_mode ludorecherche_game_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playing_mode_pkey PRIMARY KEY (id);


--
-- TOC entry 3175 (class 2606 OID 22643)
-- Name: ludorecherche_game_publishers ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq UNIQUE (game_id, publisher_id);


--
-- TOC entry 3178 (class 2606 OID 22570)
-- Name: ludorecherche_game_publishers ludorecherche_game_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publishers_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 33598)
-- Name: ludorecherche_game_tag ludorecherche_game_tag_game_id_tag_id_79514770_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_game_id_tag_id_79514770_uniq UNIQUE (game_id, tag_id);


--
-- TOC entry 3236 (class 2606 OID 33595)
-- Name: ludorecherche_game_tag ludorecherche_game_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 33056)
-- Name: ludorecherche_language ludorecherche_language_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_name_key UNIQUE (name);


--
-- TOC entry 3202 (class 2606 OID 33054)
-- Name: ludorecherche_language ludorecherche_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 86188)
-- Name: ludorecherche_multiaddon_artists ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq UNIQUE (multiaddon_id, artist_id);


--
-- TOC entry 3252 (class 2606 OID 86202)
-- Name: ludorecherche_multiaddon_designers ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq UNIQUE (multiaddon_id, designer_id);


--
-- TOC entry 3258 (class 2606 OID 86216)
-- Name: ludorecherche_multiaddon_games ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq UNIQUE (multiaddon_id, game_id);


--
-- TOC entry 3264 (class 2606 OID 86230)
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq UNIQUE (multiaddon_id, playingmode_id);


--
-- TOC entry 3270 (class 2606 OID 86244)
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq UNIQUE (multiaddon_id, publisher_id);


--
-- TOC entry 3250 (class 2606 OID 86141)
-- Name: ludorecherche_multiaddon_artists ludorecherche_multi_add_on_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multi_add_on_artists_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 86149)
-- Name: ludorecherche_multiaddon_designers ludorecherche_multi_add_on_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multi_add_on_designers_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 86157)
-- Name: ludorecherche_multiaddon_games ludorecherche_multi_add_on_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi_add_on_games_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 86133)
-- Name: ludorecherche_multiaddon ludorecherche_multi_add_on_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi_add_on_name_key UNIQUE (name);


--
-- TOC entry 3244 (class 2606 OID 86131)
-- Name: ludorecherche_multiaddon ludorecherche_multi_add_on_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi_add_on_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 86165)
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multi_add_on_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add_on_playing_mode_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 86173)
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multi_add_on_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multi_add_on_publishers_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 33066)
-- Name: ludorecherche_playingmode ludorecherche_playingmode_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_name_key UNIQUE (name);


--
-- TOC entry 3207 (class 2606 OID 33064)
-- Name: ludorecherche_playingmode ludorecherche_playingmode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 22525)
-- Name: ludorecherche_publisher ludorecherche_publisher_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_name_key UNIQUE (name);


--
-- TOC entry 3154 (class 2606 OID 22523)
-- Name: ludorecherche_publisher ludorecherche_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_pkey PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 33587)
-- Name: ludorecherche_tag ludorecherche_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_name_key UNIQUE (name);


--
-- TOC entry 3231 (class 2606 OID 33585)
-- Name: ludorecherche_tag ludorecherche_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_pkey PRIMARY KEY (id);


--
-- TOC entry 3096 (class 1259 OID 22472)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3101 (class 1259 OID 22409)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3104 (class 1259 OID 22410)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3091 (class 1259 OID 22395)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3112 (class 1259 OID 22425)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3115 (class 1259 OID 22424)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3118 (class 1259 OID 22439)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3121 (class 1259 OID 22438)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3109 (class 1259 OID 22466)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3124 (class 1259 OID 22462)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3127 (class 1259 OID 22463)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3128 (class 1259 OID 22482)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3131 (class 1259 OID 22481)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3180 (class 1259 OID 22668)
-- Name: ludorecherche_add_on_artists_add_on_id_06c1b675; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_artists_add_on_id_06c1b675 ON public.ludorecherche_addon_artists USING btree (addon_id);


--
-- TOC entry 3183 (class 1259 OID 22669)
-- Name: ludorecherche_add_on_artists_artist_id_947142f9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_artists_artist_id_947142f9 ON public.ludorecherche_addon_artists USING btree (artist_id);


--
-- TOC entry 3188 (class 1259 OID 22682)
-- Name: ludorecherche_add_on_designers_add_on_id_91c9524f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_designers_add_on_id_91c9524f ON public.ludorecherche_addon_designers USING btree (addon_id);


--
-- TOC entry 3189 (class 1259 OID 22683)
-- Name: ludorecherche_add_on_designers_designer_id_c16eab7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_designers_designer_id_c16eab7d ON public.ludorecherche_addon_designers USING btree (designer_id);


--
-- TOC entry 3132 (class 1259 OID 33554)
-- Name: ludorecherche_add_on_difficulty_id_36e9a090; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_difficulty_id_36e9a090 ON public.ludorecherche_addon USING btree (difficulty_id);


--
-- TOC entry 3133 (class 1259 OID 29877)
-- Name: ludorecherche_add_on_game_id_fc9844ac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_game_id_fc9844ac ON public.ludorecherche_addon USING btree (game_id);


--
-- TOC entry 3134 (class 1259 OID 33188)
-- Name: ludorecherche_add_on_language_id_5573aafd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_language_id_5573aafd ON public.ludorecherche_addon USING btree (language_id);


--
-- TOC entry 3135 (class 1259 OID 22595)
-- Name: ludorecherche_add_on_name_d5b13084_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_name_d5b13084_like ON public.ludorecherche_addon USING btree (name varchar_pattern_ops);


--
-- TOC entry 3210 (class 1259 OID 33217)
-- Name: ludorecherche_add_on_playing_mode_add_on_id_ef1f0186; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_playing_mode_add_on_id_ef1f0186 ON public.ludorecherche_addon_playing_mode USING btree (addon_id);


--
-- TOC entry 3213 (class 1259 OID 33218)
-- Name: ludorecherche_add_on_playing_mode_playingmode_id_12919a41; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_playing_mode_playingmode_id_12919a41 ON public.ludorecherche_addon_playing_mode USING btree (playingmode_id);


--
-- TOC entry 3194 (class 1259 OID 22696)
-- Name: ludorecherche_add_on_publishers_add_on_id_9ca3fd40; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_publishers_add_on_id_9ca3fd40 ON public.ludorecherche_addon_publishers USING btree (addon_id);


--
-- TOC entry 3197 (class 1259 OID 22697)
-- Name: ludorecherche_add_on_publishers_publisher_id_14abff3e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_publishers_publisher_id_14abff3e ON public.ludorecherche_addon_publishers USING btree (publisher_id);


--
-- TOC entry 3140 (class 1259 OID 22596)
-- Name: ludorecherche_artist_name_7c60ea7e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_artist_name_7c60ea7e_like ON public.ludorecherche_artist USING btree (name varchar_pattern_ops);


--
-- TOC entry 3145 (class 1259 OID 22597)
-- Name: ludorecherche_designer_name_36cdcde4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_designer_name_36cdcde4_like ON public.ludorecherche_designer USING btree (name varchar_pattern_ops);


--
-- TOC entry 3222 (class 1259 OID 33576)
-- Name: ludorecherche_difficulty_name_e59ec408_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_difficulty_name_e59ec408_like ON public.ludorecherche_difficulty USING btree (name varchar_pattern_ops);


--
-- TOC entry 3162 (class 1259 OID 22627)
-- Name: ludorecherche_game_artists_artist_id_3e5506bf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_artists_artist_id_3e5506bf ON public.ludorecherche_game_artists USING btree (artist_id);


--
-- TOC entry 3163 (class 1259 OID 22626)
-- Name: ludorecherche_game_artists_game_id_2ba0fcde; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_artists_game_id_2ba0fcde ON public.ludorecherche_game_artists USING btree (game_id);


--
-- TOC entry 3168 (class 1259 OID 22641)
-- Name: ludorecherche_game_designers_designer_id_8b4d087f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_designers_designer_id_8b4d087f ON public.ludorecherche_game_designers USING btree (designer_id);


--
-- TOC entry 3169 (class 1259 OID 22640)
-- Name: ludorecherche_game_designers_game_id_6d1526cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_designers_game_id_6d1526cc ON public.ludorecherche_game_designers USING btree (game_id);


--
-- TOC entry 3155 (class 1259 OID 33570)
-- Name: ludorecherche_game_difficulty_id_c4f6b87a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_difficulty_id_c4f6b87a ON public.ludorecherche_game USING btree (difficulty_id);


--
-- TOC entry 3156 (class 1259 OID 33095)
-- Name: ludorecherche_game_language_id_38e7eecd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_language_id_38e7eecd ON public.ludorecherche_game USING btree (language_id);


--
-- TOC entry 3157 (class 1259 OID 22599)
-- Name: ludorecherche_game_name_82b8126a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_name_82b8126a_like ON public.ludorecherche_game USING btree (name varchar_pattern_ops);


--
-- TOC entry 3216 (class 1259 OID 33231)
-- Name: ludorecherche_game_playing_mode_game_id_62bd95b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_playing_mode_game_id_62bd95b2 ON public.ludorecherche_game_playing_mode USING btree (game_id);


--
-- TOC entry 3219 (class 1259 OID 33232)
-- Name: ludorecherche_game_playing_mode_playingmode_id_fa02659e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_playing_mode_playingmode_id_fa02659e ON public.ludorecherche_game_playing_mode USING btree (playingmode_id);


--
-- TOC entry 3176 (class 1259 OID 22654)
-- Name: ludorecherche_game_publishers_game_id_a425abf8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_publishers_game_id_a425abf8 ON public.ludorecherche_game_publishers USING btree (game_id);


--
-- TOC entry 3179 (class 1259 OID 22655)
-- Name: ludorecherche_game_publishers_publisher_id_5176fa38; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_publishers_publisher_id_5176fa38 ON public.ludorecherche_game_publishers USING btree (publisher_id);


--
-- TOC entry 3232 (class 1259 OID 33609)
-- Name: ludorecherche_game_tag_game_id_065ca217; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_tag_game_id_065ca217 ON public.ludorecherche_game_tag USING btree (game_id);


--
-- TOC entry 3237 (class 1259 OID 33610)
-- Name: ludorecherche_game_tag_tag_id_d515082c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_tag_tag_id_d515082c ON public.ludorecherche_game_tag USING btree (tag_id);


--
-- TOC entry 3198 (class 1259 OID 33093)
-- Name: ludorecherche_language_name_24fe12a7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_language_name_24fe12a7_like ON public.ludorecherche_language USING btree (name varchar_pattern_ops);


--
-- TOC entry 3247 (class 1259 OID 86200)
-- Name: ludorecherche_multi_add_on_artists_artist_id_b04b65bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_artists_artist_id_b04b65bc ON public.ludorecherche_multiaddon_artists USING btree (artist_id);


--
-- TOC entry 3248 (class 1259 OID 86199)
-- Name: ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7 ON public.ludorecherche_multiaddon_artists USING btree (multiaddon_id);


--
-- TOC entry 3253 (class 1259 OID 86214)
-- Name: ludorecherche_multi_add_on_designers_designer_id_63ada047; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_designers_designer_id_63ada047 ON public.ludorecherche_multiaddon_designers USING btree (designer_id);


--
-- TOC entry 3254 (class 1259 OID 86213)
-- Name: ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc ON public.ludorecherche_multiaddon_designers USING btree (multiaddon_id);


--
-- TOC entry 3238 (class 1259 OID 86185)
-- Name: ludorecherche_multi_add_on_difficulty_id_5c7d95a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_difficulty_id_5c7d95a0 ON public.ludorecherche_multiaddon USING btree (difficulty_id);


--
-- TOC entry 3259 (class 1259 OID 86228)
-- Name: ludorecherche_multi_add_on_games_game_id_790ba75d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_games_game_id_790ba75d ON public.ludorecherche_multiaddon_games USING btree (game_id);


--
-- TOC entry 3260 (class 1259 OID 86227)
-- Name: ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9 ON public.ludorecherche_multiaddon_games USING btree (multiaddon_id);


--
-- TOC entry 3239 (class 1259 OID 86186)
-- Name: ludorecherche_multi_add_on_language_id_5be310e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_language_id_5be310e3 ON public.ludorecherche_multiaddon USING btree (language_id);


--
-- TOC entry 3265 (class 1259 OID 86241)
-- Name: ludorecherche_multi_add_on_multi_add_on_id_25357591; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_multi_add_on_id_25357591 ON public.ludorecherche_multiaddon_playing_mode USING btree (multiaddon_id);


--
-- TOC entry 3240 (class 1259 OID 86184)
-- Name: ludorecherche_multi_add_on_name_7a883fb9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_name_7a883fb9_like ON public.ludorecherche_multiaddon USING btree (name varchar_pattern_ops);


--
-- TOC entry 3268 (class 1259 OID 86242)
-- Name: ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256 ON public.ludorecherche_multiaddon_playing_mode USING btree (playingmode_id);


--
-- TOC entry 3271 (class 1259 OID 86255)
-- Name: ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669 ON public.ludorecherche_multiaddon_publishers USING btree (multiaddon_id);


--
-- TOC entry 3274 (class 1259 OID 86256)
-- Name: ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c ON public.ludorecherche_multiaddon_publishers USING btree (publisher_id);


--
-- TOC entry 3203 (class 1259 OID 33094)
-- Name: ludorecherche_playingmode_name_b9bc9f89_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_playingmode_name_b9bc9f89_like ON public.ludorecherche_playingmode USING btree (name varchar_pattern_ops);


--
-- TOC entry 3150 (class 1259 OID 22598)
-- Name: ludorecherche_publisher_name_865b1ff3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_publisher_name_865b1ff3_like ON public.ludorecherche_publisher USING btree (name varchar_pattern_ops);


--
-- TOC entry 3227 (class 1259 OID 33596)
-- Name: ludorecherche_tag_name_de380dee_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_tag_name_de380dee_like ON public.ludorecherche_tag USING btree (name varchar_pattern_ops);


--
-- TOC entry 3277 (class 2606 OID 22404)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3276 (class 2606 OID 22399)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3275 (class 2606 OID 22390)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3279 (class 2606 OID 22419)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3278 (class 2606 OID 22414)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3281 (class 2606 OID 22433)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3280 (class 2606 OID 22428)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3282 (class 2606 OID 22452)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3283 (class 2606 OID 22457)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3295 (class 2606 OID 33107)
-- Name: ludorecherche_addon_artists ludorecherche_add_on_artist_id_947142f9_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_add_on_artist_id_947142f9_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3297 (class 2606 OID 33117)
-- Name: ludorecherche_addon_designers ludorecherche_add_on_designer_id_c16eab7d_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_add_on_designer_id_c16eab7d_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3286 (class 2606 OID 33555)
-- Name: ludorecherche_addon ludorecherche_add_on_difficulty_id_36e9a090_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_difficulty_id_36e9a090_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3284 (class 2606 OID 33127)
-- Name: ludorecherche_addon ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3285 (class 2606 OID 33183)
-- Name: ludorecherche_addon ludorecherche_add_on_language_id_5573aafd_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_language_id_5573aafd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3301 (class 2606 OID 33212)
-- Name: ludorecherche_addon_playing_mode ludorecherche_add_on_playingmode_id_12919a41_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playingmode_id_12919a41_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3299 (class 2606 OID 33132)
-- Name: ludorecherche_addon_publishers ludorecherche_add_on_publisher_id_14abff3e_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_add_on_publisher_id_14abff3e_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3300 (class 2606 OID 116288)
-- Name: ludorecherche_addon_publishers ludorecherche_addon__addon_id_336553d8_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_addon__addon_id_336553d8_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3302 (class 2606 OID 116293)
-- Name: ludorecherche_addon_playing_mode ludorecherche_addon__addon_id_448e903f_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_addon__addon_id_448e903f_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3296 (class 2606 OID 116278)
-- Name: ludorecherche_addon_artists ludorecherche_addon__addon_id_dcf26241_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_addon__addon_id_dcf26241_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3298 (class 2606 OID 116283)
-- Name: ludorecherche_addon_designers ludorecherche_addon__addon_id_ea0e0c5c_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_addon__addon_id_ea0e0c5c_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3289 (class 2606 OID 33142)
-- Name: ludorecherche_game_artists ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3290 (class 2606 OID 33147)
-- Name: ludorecherche_game_artists ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3291 (class 2606 OID 33152)
-- Name: ludorecherche_game_designers ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3292 (class 2606 OID 33157)
-- Name: ludorecherche_game_designers ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3288 (class 2606 OID 33571)
-- Name: ludorecherche_game ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3287 (class 2606 OID 33162)
-- Name: ludorecherche_game ludorecherche_game_language_id_38e7eecd_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_language_id_38e7eecd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3304 (class 2606 OID 33248)
-- Name: ludorecherche_game_playing_mode ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3294 (class 2606 OID 33177)
-- Name: ludorecherche_game_publishers ludorecherche_game_p_game_id_a425abf8_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_game_id_a425abf8_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3303 (class 2606 OID 33243)
-- Name: ludorecherche_game_playing_mode ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3293 (class 2606 OID 33172)
-- Name: ludorecherche_game_publishers ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3305 (class 2606 OID 33599)
-- Name: ludorecherche_game_tag ludorecherche_game_t_game_id_065ca217_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_t_game_id_065ca217_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3306 (class 2606 OID 33604)
-- Name: ludorecherche_game_tag ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id FOREIGN KEY (tag_id) REFERENCES public.ludorecherche_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3309 (class 2606 OID 86194)
-- Name: ludorecherche_multiaddon_artists ludorecherche_multi__artist_id_b04b65bc_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multi__artist_id_b04b65bc_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3311 (class 2606 OID 86208)
-- Name: ludorecherche_multiaddon_designers ludorecherche_multi__designer_id_63ada047_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multi__designer_id_63ada047_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3307 (class 2606 OID 86174)
-- Name: ludorecherche_multiaddon ludorecherche_multi__difficulty_id_5c7d95a0_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi__difficulty_id_5c7d95a0_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3313 (class 2606 OID 86222)
-- Name: ludorecherche_multiaddon_games ludorecherche_multi__game_id_790ba75d_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi__game_id_790ba75d_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3308 (class 2606 OID 86179)
-- Name: ludorecherche_multiaddon ludorecherche_multi__language_id_5be310e3_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi__language_id_5be310e3_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3315 (class 2606 OID 86236)
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multi__playingmode_id_3de7a256_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multi__playingmode_id_3de7a256_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3317 (class 2606 OID 86250)
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multi__publisher_id_ca696d8c_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multi__publisher_id_ca696d8c_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3316 (class 2606 OID 116313)
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multia_multiaddon_id_02284858_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_02284858_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3318 (class 2606 OID 116318)
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multia_multiaddon_id_55fa2c01_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_55fa2c01_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3314 (class 2606 OID 116308)
-- Name: ludorecherche_multiaddon_games ludorecherche_multia_multiaddon_id_6c77264c_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_6c77264c_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3310 (class 2606 OID 116298)
-- Name: ludorecherche_multiaddon_artists ludorecherche_multia_multiaddon_id_9786d6b9_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_9786d6b9_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3312 (class 2606 OID 116303)
-- Name: ludorecherche_multiaddon_designers ludorecherche_multia_multiaddon_id_f9dc6804_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_f9dc6804_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-04-15 11:49:14

--
-- PostgreSQL database dump complete
--

