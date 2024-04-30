--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_to_guess integer NOT NULL,
    tries integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (152, 107, 44, 0);
INSERT INTO public.games VALUES (153, 108, 519, 0);
INSERT INTO public.games VALUES (154, 108, 364, 0);
INSERT INTO public.games VALUES (155, 109, 295, 0);
INSERT INTO public.games VALUES (156, 109, 469, 0);
INSERT INTO public.games VALUES (157, 108, 172, 0);
INSERT INTO public.games VALUES (158, 108, 159, 0);
INSERT INTO public.games VALUES (159, 108, 961, 0);
INSERT INTO public.games VALUES (160, 110, 10, 0);
INSERT INTO public.games VALUES (161, 110, 752, 0);
INSERT INTO public.games VALUES (162, 111, 517, 0);
INSERT INTO public.games VALUES (163, 111, 848, 0);
INSERT INTO public.games VALUES (164, 110, 965, 0);
INSERT INTO public.games VALUES (165, 110, 116, 0);
INSERT INTO public.games VALUES (166, 110, 666, 0);
INSERT INTO public.games VALUES (167, 112, 561, 0);
INSERT INTO public.games VALUES (168, 112, 736, 0);
INSERT INTO public.games VALUES (169, 113, 385, 0);
INSERT INTO public.games VALUES (170, 113, 318, 0);
INSERT INTO public.games VALUES (171, 112, 673, 0);
INSERT INTO public.games VALUES (172, 112, 673, 0);
INSERT INTO public.games VALUES (173, 112, 958, 0);
INSERT INTO public.games VALUES (174, 114, 441, 0);
INSERT INTO public.games VALUES (175, 114, 76, 0);
INSERT INTO public.games VALUES (176, 115, 746, 0);
INSERT INTO public.games VALUES (177, 115, 125, 0);
INSERT INTO public.games VALUES (178, 114, 78, 0);
INSERT INTO public.games VALUES (179, 114, 406, 0);
INSERT INTO public.games VALUES (180, 114, 169, 0);
INSERT INTO public.games VALUES (181, 116, 163, 0);
INSERT INTO public.games VALUES (182, 116, 306, 0);
INSERT INTO public.games VALUES (183, 117, 879, 0);
INSERT INTO public.games VALUES (184, 117, 350, 0);
INSERT INTO public.games VALUES (185, 116, 362, 0);
INSERT INTO public.games VALUES (186, 116, 408, 0);
INSERT INTO public.games VALUES (187, 116, 413, 0);
INSERT INTO public.games VALUES (188, 118, 227, 0);
INSERT INTO public.games VALUES (189, 118, 57, 0);
INSERT INTO public.games VALUES (190, 119, 321, 0);
INSERT INTO public.games VALUES (191, 119, 116, 0);
INSERT INTO public.games VALUES (192, 118, 420, 0);
INSERT INTO public.games VALUES (193, 118, 519, 0);
INSERT INTO public.games VALUES (194, 118, 856, 0);
INSERT INTO public.games VALUES (195, 120, 681, 0);
INSERT INTO public.games VALUES (196, 120, 849, 0);
INSERT INTO public.games VALUES (197, 121, 120, 0);
INSERT INTO public.games VALUES (198, 121, 161, 0);
INSERT INTO public.games VALUES (199, 120, 49, 0);
INSERT INTO public.games VALUES (200, 120, 754, 0);
INSERT INTO public.games VALUES (201, 120, 786, 0);
INSERT INTO public.games VALUES (202, 122, 352, 0);
INSERT INTO public.games VALUES (203, 122, 988, 0);
INSERT INTO public.games VALUES (204, 123, 371, 0);
INSERT INTO public.games VALUES (205, 123, 312, 0);
INSERT INTO public.games VALUES (206, 122, 796, 0);
INSERT INTO public.games VALUES (207, 122, 469, 0);
INSERT INTO public.games VALUES (208, 122, 878, 0);
INSERT INTO public.games VALUES (209, 124, 417, 0);
INSERT INTO public.games VALUES (210, 124, 765, 0);
INSERT INTO public.games VALUES (211, 125, 639, 0);
INSERT INTO public.games VALUES (212, 125, 934, 0);
INSERT INTO public.games VALUES (213, 124, 424, 0);
INSERT INTO public.games VALUES (214, 124, 463, 0);
INSERT INTO public.games VALUES (215, 124, 817, 0);
INSERT INTO public.games VALUES (267, 141, 253, 254);
INSERT INTO public.games VALUES (268, 141, 356, 357);
INSERT INTO public.games VALUES (269, 140, 247, 250);
INSERT INTO public.games VALUES (270, 140, 868, 869);
INSERT INTO public.games VALUES (271, 140, 503, 504);
INSERT INTO public.games VALUES (231, 130, 508, 402);
INSERT INTO public.games VALUES (222, 126, 250, 251);
INSERT INTO public.games VALUES (217, 126, 489, 490);
INSERT INTO public.games VALUES (223, 128, 881, 0);
INSERT INTO public.games VALUES (224, 128, 27, 0);
INSERT INTO public.games VALUES (225, 129, 453, 0);
INSERT INTO public.games VALUES (226, 129, 167, 0);
INSERT INTO public.games VALUES (227, 128, 276, 0);
INSERT INTO public.games VALUES (228, 128, 461, 0);
INSERT INTO public.games VALUES (229, 128, 148, 0);
INSERT INTO public.games VALUES (218, 127, 8, 9);
INSERT INTO public.games VALUES (272, 142, 105, 106);
INSERT INTO public.games VALUES (216, 126, 231, 232);
INSERT INTO public.games VALUES (273, 142, 977, 978);
INSERT INTO public.games VALUES (274, 143, 724, 725);
INSERT INTO public.games VALUES (275, 143, 879, 880);
INSERT INTO public.games VALUES (276, 142, 92, 95);
INSERT INTO public.games VALUES (232, 131, 740, 436);
INSERT INTO public.games VALUES (233, 131, 817, 0);
INSERT INTO public.games VALUES (234, 130, 283, 0);
INSERT INTO public.games VALUES (235, 130, 50, 0);
INSERT INTO public.games VALUES (236, 130, 340, 0);
INSERT INTO public.games VALUES (237, 132, 692, 693);
INSERT INTO public.games VALUES (219, 127, 18, 19);
INSERT INTO public.games VALUES (238, 132, 441, 442);
INSERT INTO public.games VALUES (239, 133, 663, 664);
INSERT INTO public.games VALUES (240, 133, 267, 268);
INSERT INTO public.games VALUES (241, 132, 577, 580);
INSERT INTO public.games VALUES (242, 132, 506, 507);
INSERT INTO public.games VALUES (221, 126, 618, 476);
INSERT INTO public.games VALUES (243, 132, 109, 110);
INSERT INTO public.games VALUES (244, 134, 96, 96);
INSERT INTO public.games VALUES (230, 130, 418, 384);
INSERT INTO public.games VALUES (245, 134, 482, 482);
INSERT INTO public.games VALUES (220, 126, 974, 507);
INSERT INTO public.games VALUES (246, 135, 347, 347);
INSERT INTO public.games VALUES (247, 135, 987, 987);
INSERT INTO public.games VALUES (248, 134, 520, 522);
INSERT INTO public.games VALUES (249, 134, 761, 761);
INSERT INTO public.games VALUES (250, 134, 304, 304);
INSERT INTO public.games VALUES (251, 136, 153, 154);
INSERT INTO public.games VALUES (252, 136, 243, 244);
INSERT INTO public.games VALUES (253, 137, 860, 861);
INSERT INTO public.games VALUES (254, 137, 28, 29);
INSERT INTO public.games VALUES (255, 136, 742, 745);
INSERT INTO public.games VALUES (256, 136, 533, 534);
INSERT INTO public.games VALUES (257, 136, 294, 295);
INSERT INTO public.games VALUES (258, 138, 365, 366);
INSERT INTO public.games VALUES (259, 138, 38, 39);
INSERT INTO public.games VALUES (260, 139, 749, 750);
INSERT INTO public.games VALUES (261, 139, 776, 777);
INSERT INTO public.games VALUES (262, 138, 941, 944);
INSERT INTO public.games VALUES (263, 138, 925, 926);
INSERT INTO public.games VALUES (264, 138, 201, 202);
INSERT INTO public.games VALUES (265, 140, 625, 626);
INSERT INTO public.games VALUES (266, 140, 233, 234);
INSERT INTO public.games VALUES (277, 142, 337, 338);
INSERT INTO public.games VALUES (278, 142, 54, 55);
INSERT INTO public.games VALUES (279, 144, 339, 340);
INSERT INTO public.games VALUES (280, 144, 723, 724);
INSERT INTO public.games VALUES (281, 145, 187, 188);
INSERT INTO public.games VALUES (282, 145, 987, 988);
INSERT INTO public.games VALUES (283, 144, 392, 395);
INSERT INTO public.games VALUES (284, 144, 96, 97);
INSERT INTO public.games VALUES (285, 144, 401, 402);
INSERT INTO public.games VALUES (286, 146, 757, 758);
INSERT INTO public.games VALUES (287, 146, 491, 492);
INSERT INTO public.games VALUES (288, 147, 612, 613);
INSERT INTO public.games VALUES (289, 147, 36, 37);
INSERT INTO public.games VALUES (290, 146, 293, 296);
INSERT INTO public.games VALUES (291, 146, 774, 775);
INSERT INTO public.games VALUES (292, 146, 519, 520);
INSERT INTO public.games VALUES (293, 148, 450, 451);
INSERT INTO public.games VALUES (294, 148, 696, 697);
INSERT INTO public.games VALUES (295, 149, 84, 85);
INSERT INTO public.games VALUES (296, 149, 735, 736);
INSERT INTO public.games VALUES (297, 148, 325, 328);
INSERT INTO public.games VALUES (298, 148, 182, 183);
INSERT INTO public.games VALUES (299, 148, 358, 359);
INSERT INTO public.games VALUES (300, 150, 606, 607);
INSERT INTO public.games VALUES (301, 150, 959, 960);
INSERT INTO public.games VALUES (302, 151, 859, 860);
INSERT INTO public.games VALUES (303, 151, 940, 941);
INSERT INTO public.games VALUES (304, 150, 471, 474);
INSERT INTO public.games VALUES (305, 150, 73, 74);
INSERT INTO public.games VALUES (306, 150, 631, 632);
INSERT INTO public.games VALUES (307, 152, 970, 971);
INSERT INTO public.games VALUES (308, 152, 885, 886);
INSERT INTO public.games VALUES (309, 153, 160, 161);
INSERT INTO public.games VALUES (310, 153, 708, 709);
INSERT INTO public.games VALUES (311, 152, 232, 235);
INSERT INTO public.games VALUES (312, 152, 565, 566);
INSERT INTO public.games VALUES (313, 152, 845, 846);
INSERT INTO public.games VALUES (314, 154, 140, 141);
INSERT INTO public.games VALUES (315, 154, 645, 646);
INSERT INTO public.games VALUES (316, 155, 69, 70);
INSERT INTO public.games VALUES (317, 155, 780, 781);
INSERT INTO public.games VALUES (318, 154, 455, 458);
INSERT INTO public.games VALUES (319, 154, 961, 962);
INSERT INTO public.games VALUES (320, 154, 750, 751);
INSERT INTO public.games VALUES (321, 156, 703, 704);
INSERT INTO public.games VALUES (322, 156, 588, 589);
INSERT INTO public.games VALUES (323, 157, 735, 736);
INSERT INTO public.games VALUES (324, 157, 95, 96);
INSERT INTO public.games VALUES (325, 156, 299, 302);
INSERT INTO public.games VALUES (326, 156, 339, 340);
INSERT INTO public.games VALUES (327, 156, 315, 316);
INSERT INTO public.games VALUES (328, 158, 239, 240);
INSERT INTO public.games VALUES (329, 158, 535, 536);
INSERT INTO public.games VALUES (330, 159, 507, 508);
INSERT INTO public.games VALUES (331, 159, 77, 78);
INSERT INTO public.games VALUES (332, 158, 939, 942);
INSERT INTO public.games VALUES (333, 158, 230, 231);
INSERT INTO public.games VALUES (334, 158, 469, 470);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (107, 'user_1714501904722');
INSERT INTO public.users VALUES (108, 'user_1714501914096');
INSERT INTO public.users VALUES (109, 'user_1714501914095');
INSERT INTO public.users VALUES (110, 'user_1714501981375');
INSERT INTO public.users VALUES (111, 'user_1714501981374');
INSERT INTO public.users VALUES (112, 'user_1714502001092');
INSERT INTO public.users VALUES (113, 'user_1714502001091');
INSERT INTO public.users VALUES (114, 'user_1714502003287');
INSERT INTO public.users VALUES (115, 'user_1714502003286');
INSERT INTO public.users VALUES (116, 'user_1714502015981');
INSERT INTO public.users VALUES (117, 'user_1714502015980');
INSERT INTO public.users VALUES (118, 'user_1714502042388');
INSERT INTO public.users VALUES (119, 'user_1714502042387');
INSERT INTO public.users VALUES (120, 'user_1714502067622');
INSERT INTO public.users VALUES (121, 'user_1714502067621');
INSERT INTO public.users VALUES (122, 'user_1714502079729');
INSERT INTO public.users VALUES (123, 'user_1714502079728');
INSERT INTO public.users VALUES (124, 'user_1714502138064');
INSERT INTO public.users VALUES (125, 'user_1714502138063');
INSERT INTO public.users VALUES (126, 'user_1714502151191');
INSERT INTO public.users VALUES (127, 'user_1714502151190');
INSERT INTO public.users VALUES (128, 'user_1714502319177');
INSERT INTO public.users VALUES (129, 'user_1714502319176');
INSERT INTO public.users VALUES (130, 'user_1714502357266');
INSERT INTO public.users VALUES (131, 'user_1714502357265');
INSERT INTO public.users VALUES (132, 'user_1714502484929');
INSERT INTO public.users VALUES (133, 'user_1714502484928');
INSERT INTO public.users VALUES (134, 'user_1714502526930');
INSERT INTO public.users VALUES (135, 'user_1714502526929');
INSERT INTO public.users VALUES (136, 'user_1714502675067');
INSERT INTO public.users VALUES (137, 'user_1714502675066');
INSERT INTO public.users VALUES (138, 'user_1714502713451');
INSERT INTO public.users VALUES (139, 'user_1714502713450');
INSERT INTO public.users VALUES (140, 'user_1714502733945');
INSERT INTO public.users VALUES (141, 'user_1714502733944');
INSERT INTO public.users VALUES (142, 'user_1714502745019');
INSERT INTO public.users VALUES (143, 'user_1714502745018');
INSERT INTO public.users VALUES (144, 'user_1714502757033');
INSERT INTO public.users VALUES (145, 'user_1714502757032');
INSERT INTO public.users VALUES (146, 'user_1714502834652');
INSERT INTO public.users VALUES (147, 'user_1714502834651');
INSERT INTO public.users VALUES (148, 'user_1714502850138');
INSERT INTO public.users VALUES (149, 'user_1714502850137');
INSERT INTO public.users VALUES (150, 'user_1714502858750');
INSERT INTO public.users VALUES (151, 'user_1714502858749');
INSERT INTO public.users VALUES (152, 'user_1714502898163');
INSERT INTO public.users VALUES (153, 'user_1714502898162');
INSERT INTO public.users VALUES (154, 'user_1714502906760');
INSERT INTO public.users VALUES (155, 'user_1714502906759');
INSERT INTO public.users VALUES (156, 'user_1714502926697');
INSERT INTO public.users VALUES (157, 'user_1714502926696');
INSERT INTO public.users VALUES (158, 'user_1714502936660');
INSERT INTO public.users VALUES (159, 'user_1714502936659');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 334, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 159, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

