--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

ALTER TABLE ONLY public.games DROP CONSTRAINT games_player_id_fkey;
ALTER TABLE ONLY public.players DROP CONSTRAINT players_username_key;
ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
ALTER TABLE public.players ALTER COLUMN player_id DROP DEFAULT;
ALTER TABLE public.games ALTER COLUMN game_id DROP DEFAULT;
DROP SEQUENCE public.players_player_id_seq;
DROP TABLE public.players;
DROP SEQUENCE public.games_game_id_seq;
DROP TABLE public.games;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    player_id integer NOT NULL,
    number_of_guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 952, 954);
INSERT INTO public.games VALUES (2, 2, 45, 47);
INSERT INTO public.games VALUES (3, 2, 465, 467);
INSERT INTO public.games VALUES (4, 2, 922, 924);
INSERT INTO public.games VALUES (5, 2, 969, 971);
INSERT INTO public.games VALUES (6, 1, 15, 919);
INSERT INTO public.games VALUES (7, 2, 82, 84);
INSERT INTO public.games VALUES (8, 2, 35, 37);
INSERT INTO public.games VALUES (9, 2, 634, 636);
INSERT INTO public.games VALUES (10, 2, 619, 621);
INSERT INTO public.games VALUES (11, 3, 584, 583);
INSERT INTO public.games VALUES (12, 2, 595, 597);
INSERT INTO public.games VALUES (13, 2, 532, 534);
INSERT INTO public.games VALUES (14, 2, 703, 705);
INSERT INTO public.games VALUES (15, 2, 399, 401);
INSERT INTO public.games VALUES (16, 2, 48, 50);
INSERT INTO public.games VALUES (17, 2, 521, 523);
INSERT INTO public.games VALUES (18, 3, 541, 540);
INSERT INTO public.games VALUES (19, 2, 817, 819);
INSERT INTO public.games VALUES (20, 2, 38, 40);
INSERT INTO public.games VALUES (21, 1, 11, 824);
INSERT INTO public.games VALUES (22, 2, 513, 515);
INSERT INTO public.games VALUES (23, 2, 656, 658);
INSERT INTO public.games VALUES (24, 2, 3, 5);
INSERT INTO public.games VALUES (25, 2, 484, 486);
INSERT INTO public.games VALUES (26, 3, 931, 930);
INSERT INTO public.games VALUES (27, 2, 304, 306);
INSERT INTO public.games VALUES (28, 2, 435, 437);
INSERT INTO public.games VALUES (29, 2, 859, 861);
INSERT INTO public.games VALUES (30, 2, 437, 439);
INSERT INTO public.games VALUES (31, 2, 783, 785);
INSERT INTO public.games VALUES (32, 2, 146, 148);
INSERT INTO public.games VALUES (33, 3, 162, 161);
INSERT INTO public.games VALUES (34, 2, 997, 999);
INSERT INTO public.games VALUES (35, 2, 833, 835);
INSERT INTO public.games VALUES (36, 10, 467, 466);
INSERT INTO public.games VALUES (37, 11, 595, 594);
INSERT INTO public.games VALUES (38, 10, 828, 825);
INSERT INTO public.games VALUES (39, 10, 139, 138);
INSERT INTO public.games VALUES (40, 10, 259, 258);
INSERT INTO public.games VALUES (41, 12, 782, 781);
INSERT INTO public.games VALUES (42, 13, 39, 38);
INSERT INTO public.games VALUES (43, 12, 134, 131);
INSERT INTO public.games VALUES (44, 12, 417, 416);
INSERT INTO public.games VALUES (45, 12, 195, 194);
INSERT INTO public.games VALUES (46, 14, 154, 153);
INSERT INTO public.games VALUES (47, 15, 735, 734);
INSERT INTO public.games VALUES (48, 14, 472, 469);
INSERT INTO public.games VALUES (49, 14, 498, 497);
INSERT INTO public.games VALUES (50, 14, 211, 210);
INSERT INTO public.games VALUES (51, 16, 843, 842);
INSERT INTO public.games VALUES (52, 17, 902, 901);
INSERT INTO public.games VALUES (53, 16, 489, 486);
INSERT INTO public.games VALUES (54, 16, 581, 580);
INSERT INTO public.games VALUES (55, 16, 390, 389);
INSERT INTO public.games VALUES (56, 18, 448, 447);
INSERT INTO public.games VALUES (57, 19, 830, 829);
INSERT INTO public.games VALUES (58, 18, 187, 184);
INSERT INTO public.games VALUES (59, 18, 545, 544);
INSERT INTO public.games VALUES (60, 18, 506, 505);
INSERT INTO public.games VALUES (61, 20, 413, 412);
INSERT INTO public.games VALUES (62, 21, 488, 487);
INSERT INTO public.games VALUES (63, 20, 37, 34);
INSERT INTO public.games VALUES (64, 20, 564, 563);
INSERT INTO public.games VALUES (65, 20, 315, 314);
INSERT INTO public.games VALUES (66, 22, 420, 419);
INSERT INTO public.games VALUES (67, 23, 846, 845);
INSERT INTO public.games VALUES (68, 22, 494, 491);
INSERT INTO public.games VALUES (69, 22, 196, 195);
INSERT INTO public.games VALUES (70, 22, 731, 730);
INSERT INTO public.games VALUES (71, 24, 102, 101);
INSERT INTO public.games VALUES (72, 25, 956, 955);
INSERT INTO public.games VALUES (73, 24, 517, 514);
INSERT INTO public.games VALUES (74, 24, 126, 125);
INSERT INTO public.games VALUES (75, 24, 263, 262);
INSERT INTO public.games VALUES (76, 26, 509, 508);
INSERT INTO public.games VALUES (77, 27, 89, 88);
INSERT INTO public.games VALUES (78, 26, 361, 358);
INSERT INTO public.games VALUES (79, 26, 539, 538);
INSERT INTO public.games VALUES (80, 26, 410, 409);
INSERT INTO public.games VALUES (81, 28, 996, 995);
INSERT INTO public.games VALUES (82, 29, 57, 56);
INSERT INTO public.games VALUES (83, 28, 583, 580);
INSERT INTO public.games VALUES (84, 28, 141, 140);
INSERT INTO public.games VALUES (85, 28, 828, 827);
INSERT INTO public.games VALUES (86, 30, 684, 683);
INSERT INTO public.games VALUES (87, 31, 703, 702);
INSERT INTO public.games VALUES (88, 30, 838, 835);
INSERT INTO public.games VALUES (89, 30, 12, 11);
INSERT INTO public.games VALUES (90, 30, 606, 605);
INSERT INTO public.games VALUES (91, 32, 872, 871);
INSERT INTO public.games VALUES (92, 33, 114, 113);
INSERT INTO public.games VALUES (93, 32, 796, 793);
INSERT INTO public.games VALUES (94, 32, 571, 570);
INSERT INTO public.games VALUES (95, 32, 466, 465);
INSERT INTO public.games VALUES (96, 34, 487, 486);
INSERT INTO public.games VALUES (97, 35, 959, 958);
INSERT INTO public.games VALUES (98, 34, 743, 740);
INSERT INTO public.games VALUES (99, 34, 654, 653);
INSERT INTO public.games VALUES (100, 34, 820, 819);
INSERT INTO public.games VALUES (101, 36, 446, 445);
INSERT INTO public.games VALUES (102, 37, 196, 195);
INSERT INTO public.games VALUES (103, 36, 271, 268);
INSERT INTO public.games VALUES (104, 36, 691, 690);
INSERT INTO public.games VALUES (105, 36, 181, 180);
INSERT INTO public.games VALUES (106, 38, 793, 792);
INSERT INTO public.games VALUES (107, 39, 642, 641);
INSERT INTO public.games VALUES (108, 38, 772, 769);
INSERT INTO public.games VALUES (109, 38, 644, 643);
INSERT INTO public.games VALUES (110, 38, 409, 408);
INSERT INTO public.games VALUES (111, 40, 744, 743);
INSERT INTO public.games VALUES (112, 41, 245, 244);
INSERT INTO public.games VALUES (113, 40, 762, 759);
INSERT INTO public.games VALUES (114, 40, 528, 527);
INSERT INTO public.games VALUES (115, 40, 260, 259);
INSERT INTO public.games VALUES (116, 1, 16, 109);
INSERT INTO public.games VALUES (117, 1, 11, 963);
INSERT INTO public.games VALUES (118, 42, 141, 140);
INSERT INTO public.games VALUES (119, 43, 326, 325);
INSERT INTO public.games VALUES (120, 42, 52, 49);
INSERT INTO public.games VALUES (121, 42, 694, 693);
INSERT INTO public.games VALUES (122, 42, 332, 331);
INSERT INTO public.games VALUES (123, 1, 6, 515);
INSERT INTO public.games VALUES (124, 44, 322, 321);
INSERT INTO public.games VALUES (125, 45, 44, 43);
INSERT INTO public.games VALUES (126, 44, 146, 143);
INSERT INTO public.games VALUES (127, 44, 942, 941);
INSERT INTO public.games VALUES (128, 44, 518, 517);
INSERT INTO public.games VALUES (157, 77, 559, 558);
INSERT INTO public.games VALUES (158, 78, 321, 320);
INSERT INTO public.games VALUES (159, 77, 570, 567);
INSERT INTO public.games VALUES (160, 77, 551, 550);
INSERT INTO public.games VALUES (161, 77, 376, 375);
INSERT INTO public.games VALUES (162, 79, 86, 85);
INSERT INTO public.games VALUES (163, 80, 944, 943);
INSERT INTO public.games VALUES (164, 79, 751, 748);
INSERT INTO public.games VALUES (165, 79, 843, 842);
INSERT INTO public.games VALUES (166, 79, 224, 223);
INSERT INTO public.games VALUES (167, 81, 776, 775);
INSERT INTO public.games VALUES (168, 82, 739, 738);
INSERT INTO public.games VALUES (169, 81, 206, 203);
INSERT INTO public.games VALUES (170, 81, 666, 665);
INSERT INTO public.games VALUES (171, 81, 926, 925);
INSERT INTO public.games VALUES (172, 83, 824, 823);
INSERT INTO public.games VALUES (173, 84, 82, 81);
INSERT INTO public.games VALUES (174, 83, 563, 560);
INSERT INTO public.games VALUES (175, 83, 936, 935);
INSERT INTO public.games VALUES (176, 83, 658, 657);
INSERT INTO public.games VALUES (177, 1, 22, 302);
INSERT INTO public.games VALUES (178, 85, 903, 902);
INSERT INTO public.games VALUES (179, 86, 26, 25);
INSERT INTO public.games VALUES (180, 85, 68, 65);
INSERT INTO public.games VALUES (181, 85, 90, 89);
INSERT INTO public.games VALUES (182, 85, 292, 291);
INSERT INTO public.games VALUES (183, 87, 41, 40);
INSERT INTO public.games VALUES (184, 88, 10, 9);
INSERT INTO public.games VALUES (185, 87, 922, 919);
INSERT INTO public.games VALUES (186, 87, 404, 403);
INSERT INTO public.games VALUES (187, 87, 699, 698);
INSERT INTO public.games VALUES (188, 89, 432, 431);
INSERT INTO public.games VALUES (189, 90, 965, 964);
INSERT INTO public.games VALUES (190, 89, 316, 313);
INSERT INTO public.games VALUES (191, 89, 137, 136);
INSERT INTO public.games VALUES (192, 89, 466, 465);
INSERT INTO public.games VALUES (193, 91, 736, 735);
INSERT INTO public.games VALUES (194, 92, 618, 617);
INSERT INTO public.games VALUES (195, 91, 868, 865);
INSERT INTO public.games VALUES (196, 91, 16, 15);
INSERT INTO public.games VALUES (197, 91, 802, 801);
INSERT INTO public.games VALUES (198, 93, 508, 507);
INSERT INTO public.games VALUES (199, 94, 374, 373);
INSERT INTO public.games VALUES (200, 93, 791, 788);
INSERT INTO public.games VALUES (201, 93, 432, 431);
INSERT INTO public.games VALUES (202, 93, 877, 876);
INSERT INTO public.games VALUES (203, 95, 554, 553);
INSERT INTO public.games VALUES (204, 96, 170, 169);
INSERT INTO public.games VALUES (205, 95, 464, 461);
INSERT INTO public.games VALUES (206, 95, 842, 841);
INSERT INTO public.games VALUES (207, 95, 539, 538);
INSERT INTO public.games VALUES (208, 1, 8, 189);
INSERT INTO public.games VALUES (209, 97, 370, 369);
INSERT INTO public.games VALUES (210, 98, 40, 39);
INSERT INTO public.games VALUES (211, 97, 636, 633);
INSERT INTO public.games VALUES (212, 97, 973, 972);
INSERT INTO public.games VALUES (213, 97, 107, 106);
INSERT INTO public.games VALUES (214, 1, 12, 409);
INSERT INTO public.games VALUES (215, 99, 836, 835);
INSERT INTO public.games VALUES (216, 100, 14, 13);
INSERT INTO public.games VALUES (217, 99, 726, 723);
INSERT INTO public.games VALUES (218, 99, 952, 951);
INSERT INTO public.games VALUES (219, 99, 989, 988);
INSERT INTO public.games VALUES (220, 101, 485, 484);
INSERT INTO public.games VALUES (221, 102, 920, 919);
INSERT INTO public.games VALUES (222, 101, 364, 361);
INSERT INTO public.games VALUES (223, 101, 293, 292);
INSERT INTO public.games VALUES (224, 101, 741, 740);
INSERT INTO public.games VALUES (225, 103, 455, 454);
INSERT INTO public.games VALUES (226, 104, 431, 430);
INSERT INTO public.games VALUES (227, 103, 467, 464);
INSERT INTO public.games VALUES (228, 103, 406, 405);
INSERT INTO public.games VALUES (229, 103, 153, 152);
INSERT INTO public.games VALUES (230, 105, 651, 650);
INSERT INTO public.games VALUES (231, 106, 612, 611);
INSERT INTO public.games VALUES (232, 105, 45, 42);
INSERT INTO public.games VALUES (233, 105, 316, 315);
INSERT INTO public.games VALUES (234, 105, 181, 180);
INSERT INTO public.games VALUES (235, 107, 958, 957);
INSERT INTO public.games VALUES (236, 108, 291, 290);
INSERT INTO public.games VALUES (237, 107, 431, 428);
INSERT INTO public.games VALUES (238, 107, 969, 968);
INSERT INTO public.games VALUES (239, 107, 905, 904);
INSERT INTO public.games VALUES (240, 109, 924, 923);
INSERT INTO public.games VALUES (241, 110, 813, 812);
INSERT INTO public.games VALUES (242, 109, 339, 336);
INSERT INTO public.games VALUES (243, 109, 889, 888);
INSERT INTO public.games VALUES (244, 109, 978, 977);
INSERT INTO public.games VALUES (245, 1, 11, 623);
INSERT INTO public.games VALUES (246, 111, 229, 228);
INSERT INTO public.games VALUES (247, 112, 639, 638);
INSERT INTO public.games VALUES (248, 111, 462, 459);
INSERT INTO public.games VALUES (249, 111, 556, 555);
INSERT INTO public.games VALUES (250, 111, 349, 348);
INSERT INTO public.games VALUES (251, 114, 104, 103);
INSERT INTO public.games VALUES (252, 114, 773, 772);
INSERT INTO public.games VALUES (253, 115, 144, 143);
INSERT INTO public.games VALUES (254, 115, 991, 990);
INSERT INTO public.games VALUES (255, 114, 627, 624);
INSERT INTO public.games VALUES (256, 114, 325, 324);
INSERT INTO public.games VALUES (257, 114, 183, 182);
INSERT INTO public.games VALUES (258, 116, 68, 67);
INSERT INTO public.games VALUES (259, 116, 496, 495);
INSERT INTO public.games VALUES (260, 117, 329, 328);
INSERT INTO public.games VALUES (261, 117, 423, 422);
INSERT INTO public.games VALUES (262, 116, 571, 568);
INSERT INTO public.games VALUES (263, 116, 43, 42);
INSERT INTO public.games VALUES (264, 116, 878, 877);
INSERT INTO public.games VALUES (265, 118, 753, 752);
INSERT INTO public.games VALUES (266, 118, 911, 910);
INSERT INTO public.games VALUES (267, 119, 810, 809);
INSERT INTO public.games VALUES (268, 119, 472, 471);
INSERT INTO public.games VALUES (269, 118, 280, 277);
INSERT INTO public.games VALUES (270, 118, 250, 249);
INSERT INTO public.games VALUES (271, 118, 465, 464);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (85, 'user_1675727689211', 4, 0);
INSERT INTO public.players VALUES (3, '1000', 7, 162);
INSERT INTO public.players VALUES (27, 'user_1675722436425', 1, 89);
INSERT INTO public.players VALUES (2, '2', 42, 120);
INSERT INTO public.players VALUES (4, 'user_1675721864436', 0, NULL);
INSERT INTO public.players VALUES (5, 'user_1675721864435', 0, NULL);
INSERT INTO public.players VALUES (6, 'user_1675721880677', 0, NULL);
INSERT INTO public.players VALUES (7, 'user_1675721880676', 0, NULL);
INSERT INTO public.players VALUES (8, 'user_1675721913785', 0, NULL);
INSERT INTO public.players VALUES (9, 'user_1675721913784', 0, NULL);
INSERT INTO public.players VALUES (101, 'user_1675728600143', 4, 0);
INSERT INTO public.players VALUES (41, 'user_1675722960640', 1, 245);
INSERT INTO public.players VALUES (11, 'user_1675721973670', 1, 595);
INSERT INTO public.players VALUES (26, 'user_1675722436426', 4, 361);
INSERT INTO public.players VALUES (88, 'user_1675727725583', 1, 0);
INSERT INTO public.players VALUES (10, 'user_1675721973671', 4, 139);
INSERT INTO public.players VALUES (114, 'user_1675729777520', 5, 104);
INSERT INTO public.players VALUES (13, 'user_1675722120466', 1, 39);
INSERT INTO public.players VALUES (29, 'user_1675722492009', 1, 57);
INSERT INTO public.players VALUES (40, 'user_1675722960641', 4, 260);
INSERT INTO public.players VALUES (87, 'user_1675727725584', 4, 0);
INSERT INTO public.players VALUES (12, 'user_1675722120467', 4, 134);
INSERT INTO public.players VALUES (28, 'user_1675722492010', 4, 141);
INSERT INTO public.players VALUES (15, 'user_1675722158254', 1, 735);
INSERT INTO public.players VALUES (14, 'user_1675722158255', 4, 154);
INSERT INTO public.players VALUES (104, 'user_1675728683117', 1, 0);
INSERT INTO public.players VALUES (17, 'user_1675722333618', 1, 902);
INSERT INTO public.players VALUES (31, 'user_1675722550707', 1, 703);
INSERT INTO public.players VALUES (43, 'user_1675723263110', 1, 326);
INSERT INTO public.players VALUES (90, 'user_1675727883467', 1, 965);
INSERT INTO public.players VALUES (30, 'user_1675722550708', 4, 12);
INSERT INTO public.players VALUES (16, 'user_1675722333619', 4, 390);
INSERT INTO public.players VALUES (42, 'user_1675723263111', 4, 141);
INSERT INTO public.players VALUES (19, 'user_1675722379475', 1, 830);
INSERT INTO public.players VALUES (103, 'user_1675728683118', 4, 0);
INSERT INTO public.players VALUES (33, 'user_1675722659314', 1, 114);
INSERT INTO public.players VALUES (18, 'user_1675722379476', 4, 187);
INSERT INTO public.players VALUES (21, 'user_1675722389657', 1, 488);
INSERT INTO public.players VALUES (89, 'user_1675727883468', 4, 137);
INSERT INTO public.players VALUES (32, 'user_1675722659315', 4, 466);
INSERT INTO public.players VALUES (45, 'user_1675723901042', 1, 44);
INSERT INTO public.players VALUES (20, 'user_1675722389658', 4, 315);
INSERT INTO public.players VALUES (23, 'user_1675722399562', 1, 846);
INSERT INTO public.players VALUES (35, 'user_1675722784157', 1, 959);
INSERT INTO public.players VALUES (106, 'user_1675728741285', 1, 0);
INSERT INTO public.players VALUES (44, 'user_1675723901043', 4, 146);
INSERT INTO public.players VALUES (22, 'user_1675722399563', 4, 196);
INSERT INTO public.players VALUES (34, 'user_1675722784158', 4, 487);
INSERT INTO public.players VALUES (25, 'user_1675722415114', 1, 956);
INSERT INTO public.players VALUES (24, 'user_1675722415115', 4, 102);
INSERT INTO public.players VALUES (37, 'user_1675722829602', 1, 196);
INSERT INTO public.players VALUES (92, 'user_1675727995575', 1, 618);
INSERT INTO public.players VALUES (78, 'user_1675726724184', 1, 321);
INSERT INTO public.players VALUES (36, 'user_1675722829603', 4, 181);
INSERT INTO public.players VALUES (105, 'user_1675728741286', 4, 0);
INSERT INTO public.players VALUES (91, 'user_1675727995576', 4, 16);
INSERT INTO public.players VALUES (39, 'user_1675722915017', 1, 642);
INSERT INTO public.players VALUES (77, 'user_1675726724185', 4, 376);
INSERT INTO public.players VALUES (38, 'user_1675722915018', 4, 409);
INSERT INTO public.players VALUES (80, 'user_1675726741005', 1, 944);
INSERT INTO public.players VALUES (94, 'user_1675728041461', 1, 0);
INSERT INTO public.players VALUES (108, 'user_1675728830775', 1, 0);
INSERT INTO public.players VALUES (93, 'user_1675728041462', 4, 0);
INSERT INTO public.players VALUES (79, 'user_1675726741006', 4, 224);
INSERT INTO public.players VALUES (96, 'user_1675728109402', 1, 0);
INSERT INTO public.players VALUES (82, 'user_1675726935663', 1, 739);
INSERT INTO public.players VALUES (107, 'user_1675728830776', 4, 0);
INSERT INTO public.players VALUES (95, 'user_1675728109403', 4, 0);
INSERT INTO public.players VALUES (81, 'user_1675726935664', 4, 206);
INSERT INTO public.players VALUES (117, 'user_1675729837338', 2, 329);
INSERT INTO public.players VALUES (84, 'user_1675727022608', 1, 82);
INSERT INTO public.players VALUES (98, 'user_1675728402081', 1, 0);
INSERT INTO public.players VALUES (83, 'user_1675727022609', 4, 563);
INSERT INTO public.players VALUES (110, 'user_1675728872008', 1, 0);
INSERT INTO public.players VALUES (86, 'user_1675727689210', 1, 0);
INSERT INTO public.players VALUES (97, 'user_1675728402082', 4, 0);
INSERT INTO public.players VALUES (109, 'user_1675728872009', 4, 0);
INSERT INTO public.players VALUES (100, 'user_1675728530338', 1, 0);
INSERT INTO public.players VALUES (1, 'grace', 10, 11);
INSERT INTO public.players VALUES (99, 'user_1675728530339', 4, 0);
INSERT INTO public.players VALUES (116, 'user_1675729837339', 5, 43);
INSERT INTO public.players VALUES (102, 'user_1675728600142', 1, 0);
INSERT INTO public.players VALUES (112, 'user_1675729581903', 1, 0);
INSERT INTO public.players VALUES (111, 'user_1675729581904', 4, 0);
INSERT INTO public.players VALUES (113, 'goby', 0, 0);
INSERT INTO public.players VALUES (115, 'user_1675729777519', 2, 144);
INSERT INTO public.players VALUES (119, 'user_1675729846322', 2, 472);
INSERT INTO public.players VALUES (118, 'user_1675729846323', 5, 250);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 271, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 119, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

