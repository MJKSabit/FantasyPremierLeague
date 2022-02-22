/*
 Navicat Premium Data Transfer

 Source Server         : FPL
 Source Server Type    : Oracle
 Source Server Version : 190000
 Source Host           : localhost:1521
 Source Schema         : C##FPL

 Target Server Type    : Oracle
 Target Server Version : 190000
 File Encoding         : 65001

 Date: 22/02/2022 20:55:00
*/


-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE "C##FPL"."blog";
CREATE TABLE "C##FPL"."blog" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76585".nextval NOT NULL,
  "writer" VARCHAR2(20 BYTE) VISIBLE,
  "publication_date" TIMESTAMP(6) VISIBLE NOT NULL,
  "title" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "cover_image_url" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "content" LONG VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO "C##FPL"."blog" VALUES ('41', 'mortytheplatypus', TO_TIMESTAMP('2022-02-22 15:42:14.089000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'Project Evaluation', 'https://i.ibb.co/tZ5cyQV/20210324-021749.jpg', '**Tomorrow** is *project* evaluation
![](https://i.ibb.co/tZ5cyQV/20210324-021749.jpg)');
INSERT INTO "C##FPL"."blog" VALUES ('5', 'scout', TO_TIMESTAMP('2022-01-26 23:46:51.618000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'London is Red', 'https://i.ibb.co/sFvL8hb/Hero-Hamada.jpg', 'We all know that,  
**London is red**

This is crystal clear

Well as it seems, bottom upload is not working.

We''ll see.');
INSERT INTO "C##FPL"."blog" VALUES ('6', 'scout', TO_TIMESTAMP('2022-01-27 00:47:13.613000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), 'Murgi-r Fry khabo', 'https://i.ibb.co/sRsC2c8/vlcsnap-2021-10-03-02h27m35s064.jpg', '# amra murgir **FRY** khabo

onek Tasty

![](https://i.ibb.co/sRsC2c8/vlcsnap-2021-10-03-02h27m35s064.jpg)

What do you think?

Okay');

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE "C##FPL"."club";
CREATE TABLE "C##FPL"."club" (
  "short_name" NCHAR(3) VISIBLE NOT NULL,
  "name" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "logo_url" VARCHAR2(255 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of club
-- ----------------------------
INSERT INTO "C##FPL"."club" VALUES ('ARS', 'Arsenal', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Arsenal_FC.svg/292px-Arsenal_FC.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('AVL', 'Aston Villa', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Aston_Villa_FC_crest_%282016%29.svg/169px-Aston_Villa_FC_crest_%282016%29.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('BRE', 'Brentford', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/2a/Brentford_FC_crest.svg/240px-Brentford_FC_crest.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('BHA', 'Brighton and Hove Albion', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fd/Brighton_%26_Hove_Albion_logo.svg/316px-Brighton_%26_Hove_Albion_logo.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('BUR', 'Burnley', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Burnley_F.C._Logo.svg/290px-Burnley_F.C._Logo.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('CHE', 'Chelsea', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/209px-Chelsea_FC.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('CRY', 'Crystal Palace', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Crystal_Palace_FC_logo.svg/283px-Crystal_Palace_FC_logo.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('EVE', 'Everton', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7c/Everton_FC_logo.svg/312px-Everton_FC_logo.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('LEI', 'Leicester City', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/2d/Leicester_City_crest.svg/316px-Leicester_City_crest.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('LEE', 'Leeds United', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/54/Leeds_United_F.C._logo.svg/196px-Leeds_United_F.C._logo.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('LIV', 'Liverpool', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Liverpool_FC.svg/244px-Liverpool_FC.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('MCI', 'Manchester City', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/316px-Manchester_City_FC_badge.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('MUN', 'Manchester United', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/296px-Manchester_United_FC_crest.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('NEW', 'Newcastle United', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Newcastle_United_Logo.svg/300px-Newcastle_United_Logo.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('NOR', 'Norwich', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/Norwich_City.svg/299px-Norwich_City.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('SOU', 'Southampton', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c9/FC_Southampton.svg/296px-FC_Southampton.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('TOT', 'Tottenham Hotspur', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Tottenham_Hotspur.svg/115px-Tottenham_Hotspur.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('WAT', 'Watford', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/Watford.svg/299px-Watford.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('WHU', 'West Ham United', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/West_Ham_United_FC_logo.svg/169px-West_Ham_United_FC_logo.svg.png');
INSERT INTO "C##FPL"."club" VALUES ('WOL', 'Wolverhampton Wanderers', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/Wolverhampton_Wanderers.svg/316px-Wolverhampton_Wanderers.svg.png');

-- ----------------------------
-- Table structure for current_squad
-- ----------------------------
DROP TABLE "C##FPL"."current_squad";
CREATE TABLE "C##FPL"."current_squad" (
  "team_id" NUMBER VISIBLE NOT NULL,
  "player_id" NUMBER VISIBLE NOT NULL,
  "buying_price" NUMBER(3,1) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of current_squad
-- ----------------------------
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2163', '6.2');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2177', '6.3');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2181', '11.5');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2258', '10.5');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2366', '6');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2333', '13.1');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2337', '8.3');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2360', '11.9');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2400', '9.4');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2365', '6.8');
INSERT INTO "C##FPL"."current_squad" VALUES ('21', '2000', '6.9');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2022', '5.5');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2163', '6.2');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2258', '10.5');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2329', '6.6');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2330', '11.9');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2333', '13.1');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2358', '5.5');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2363', '8.6');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2365', '6.8');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2396', '11.6');
INSERT INTO "C##FPL"."current_squad" VALUES ('41', '2511', '12.1');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2366', '6');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2333', '13.1');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2334', '7.1');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2337', '8.3');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2360', '11.9');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2163', '6.2');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2396', '11.6');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2414', '12.5');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2513', '10.3');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2040', '4.5');
INSERT INTO "C##FPL"."current_squad" VALUES ('3', '2177', '6.3');

-- ----------------------------
-- Table structure for fixture
-- ----------------------------
DROP TABLE "C##FPL"."fixture";
CREATE TABLE "C##FPL"."fixture" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76621".nextval NOT NULL,
  "gw_id" NUMBER(2,0) VISIBLE,
  "home_club" NCHAR(3) VISIBLE NOT NULL,
  "away_club" NCHAR(3) VISIBLE NOT NULL,
  "result" VARCHAR2(7 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of fixture
-- ----------------------------
INSERT INTO "C##FPL"."fixture" VALUES ('1', '4', 'ARS', 'MUN', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('3', '3', 'ARS', 'MCI', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('83', NULL, 'AVL', 'MUN', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('84', '4', 'AVL', 'NEW', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('85', '4', 'BRE', 'CRY', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('86', '3', 'BRE', 'NEW', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('92', '1', 'TOT', 'MCI', '4-2');
INSERT INTO "C##FPL"."fixture" VALUES ('4', '3', 'CHE', 'ARS', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('41', '1', 'CHE', 'AVL', '3-0');
INSERT INTO "C##FPL"."fixture" VALUES ('87', '2', 'MCI', 'ARS', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('88', '2', 'EVE', 'CHE', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('89', '2', 'NOR', 'BRE', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('90', '1', 'BUR', 'LEE', '2-4');
INSERT INTO "C##FPL"."fixture" VALUES ('94', '1', 'LIV', 'MUN', '7-2');
INSERT INTO "C##FPL"."fixture" VALUES ('95', '1', 'WOL', 'BHA', '2-3');
INSERT INTO "C##FPL"."fixture" VALUES ('96', '1', 'SOU', 'CRY', '0-0');
INSERT INTO "C##FPL"."fixture" VALUES ('97', '1', 'WAT', 'NEW', '1-1');
INSERT INTO "C##FPL"."fixture" VALUES ('61', '1', 'BRE', 'LEI', '1-2');
INSERT INTO "C##FPL"."fixture" VALUES ('81', '3', 'TOT', 'AVL', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('91', '2', 'NEW', 'AVL', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('21', '1', 'EVE', 'ARS', '0-3');
INSERT INTO "C##FPL"."fixture" VALUES ('93', '1', 'WHU', 'NOR', '2-0');
INSERT INTO "C##FPL"."fixture" VALUES ('98', '2', 'MUN', 'WOL', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('99', '2', 'CRY', 'SOU', NULL);
INSERT INTO "C##FPL"."fixture" VALUES ('100', '2', 'TOT', 'WAT', NULL);

-- ----------------------------
-- Table structure for fixture_stats
-- ----------------------------
DROP TABLE "C##FPL"."fixture_stats";
CREATE TABLE "C##FPL"."fixture_stats" (
  "player_id" NUMBER VISIBLE NOT NULL,
  "fixture_id" NUMBER VISIBLE NOT NULL,
  "points" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "minutes_played" NUMBER(3,0) VISIBLE DEFAULT 0 NOT NULL,
  "goal_scored" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "goal_conceded" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "own_goal" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "penalty_missed" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "yellow_card" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "red_card" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "saves" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "bonus_point" NUMBER(1,0) VISIBLE DEFAULT 0 NOT NULL,
  "assist" NUMBER(3,0) VISIBLE DEFAULT 0 NOT NULL,
  "clean_sheet" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of fixture_stats
-- ----------------------------
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2452', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2453', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2454', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2455', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2456', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2457', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2458', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2459', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2460', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2461', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2462', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2463', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2464', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2465', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2466', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2467', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2468', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2469', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2470', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2471', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2472', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2473', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2474', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2475', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2476', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2477', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2478', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2580', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2581', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2582', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2583', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2584', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2585', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2586', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2587', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2588', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2589', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2590', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2591', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2592', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2593', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2594', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2595', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2596', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2597', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2598', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2599', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2600', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2601', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2602', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2603', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2604', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2605', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2606', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2607', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2608', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2609', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2610', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2321', '94', '2', '90', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2322', '94', '2', '90', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2325', '94', '4', '90', '0', '2', '0', '0', '1', '0', '0', '0', '1', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2328', '94', '12', '90', '1', '2', '0', '0', '0', '0', '0', '0', '2', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2329', '94', '7', '90', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2331', '94', '1', '90', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2333', '94', '26', '90', '3', '2', '0', '0', '0', '0', '0', '3', '2', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2334', '94', '9', '90', '0', '2', '0', '0', '0', '0', '0', '2', '2', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2337', '94', '8', '90', '0', '2', '0', '0', '0', '0', '0', '1', '2', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2389', '94', '-2', '90', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2396', '94', '10', '90', '1', '7', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2414', '94', '8', '90', '1', '7', '0', '0', '1', '0', '0', '0', '1', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2022', '41', '0', '90', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2031', '41', '1', '90', '0', '3', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2045', '41', '2', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2163', '41', '7', '90', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2177', '41', '13', '90', '1', '0', '0', '0', '0', '0', '0', '1', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2178', '41', '9', '90', '0', '0', '0', '0', '0', '0', '0', '3', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2165', '41', '3', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2169', '41', '6', '90', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2360', '92', '19', '90', '2', '0', '0', '0', '0', '0', '0', '3', '1', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2363', '92', '13', '90', '1', '0', '0', '0', '0', '0', '0', '2', '1', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2365', '92', '6', '90', '0', '2', '0', '0', '0', '0', '0', '2', '1', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2366', '92', '1', '90', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2511', '92', '9', '90', '1', '4', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2513', '92', '10', '90', '1', '4', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1989', '21', '14', '90', '3', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1990', '21', '3', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1991', '21', '6', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1984', '21', '6', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2000', '21', '9', '90', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2004', '21', '6', '90', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2357', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2358', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2359', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2361', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2362', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2364', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2367', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2368', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2369', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2370', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2371', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2372', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2373', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2374', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2375', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2376', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2377', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2378', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2379', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2380', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2381', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2382', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2383', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2384', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2385', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2386', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2387', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2507', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2508', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2509', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2510', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2512', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2514', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2515', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2516', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2517', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2518', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2519', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2520', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2521', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2522', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2523', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2524', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2525', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2526', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2527', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2528', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2529', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2530', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2531', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2532', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2533', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2534', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2535', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2536', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2537', '92', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2020', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2021', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2023', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2024', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2025', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2026', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2027', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2028', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2029', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2030', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2032', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2033', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2034', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2035', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2036', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2037', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2038', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2039', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2040', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2041', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2042', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2043', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2044', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2046', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2047', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2048', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2049', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2050', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2051', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2052', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2053', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2054', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2155', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2156', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2157', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2158', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2159', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2160', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2161', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2162', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2164', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2166', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2167', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2168', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2170', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2171', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2172', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2173', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2174', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2175', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2176', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2179', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2180', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2181', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2182', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2183', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2184', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2126', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2127', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2128', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2129', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2130', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2131', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2132', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2133', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2134', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2135', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2136', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2137', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2138', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2139', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2140', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2141', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2142', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2143', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2144', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2145', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2146', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2147', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2148', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2149', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2150', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2151', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2152', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2153', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2154', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2285', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2286', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2287', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2288', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2289', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2290', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2291', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2292', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2293', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2294', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2295', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2296', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2297', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2298', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2299', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2300', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2301', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2302', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2303', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2304', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2305', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2306', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2307', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2308', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2309', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2310', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2311', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2312', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2313', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2314', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2315', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2316', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2317', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2318', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2319', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2320', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2323', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2324', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2326', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2327', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2330', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2332', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2335', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2336', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2338', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2339', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2340', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2341', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2342', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2343', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2344', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2345', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2346', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2347', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2348', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2349', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2350', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2351', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2352', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2353', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2354', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2355', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2356', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2388', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2390', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2391', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2392', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2393', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2394', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2395', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2397', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2398', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2399', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2400', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2401', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2402', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2403', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2404', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2405', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2406', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2407', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2408', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2409', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2410', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2411', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2412', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2413', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2415', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2416', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2089', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2090', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2091', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2092', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2093', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2094', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2095', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2096', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2097', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2098', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2099', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2100', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2101', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2102', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2103', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2104', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2105', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2106', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2107', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2108', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2109', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2110', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2111', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2112', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2113', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2114', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2115', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2116', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2117', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2118', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2119', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2120', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2121', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2122', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2123', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2124', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2125', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2611', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2612', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2613', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2614', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2615', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2616', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2617', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2618', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2619', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2620', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2621', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2622', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2623', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2624', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2625', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2626', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2627', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2628', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2629', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2630', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2631', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2632', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2633', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2634', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2635', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2636', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2637', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2638', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2639', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2640', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2641', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2642', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2643', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2644', '95', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2185', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2186', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2187', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2188', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2189', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2190', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2191', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2192', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2193', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2194', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2195', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2196', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2432', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2197', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2198', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2199', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2200', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2201', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2202', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2203', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2204', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2205', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2206', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2207', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2208', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2209', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2210', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2211', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2212', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2213', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2214', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2479', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2480', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2481', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2482', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2483', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2484', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2485', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2486', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2487', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2488', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2489', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2490', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2491', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2492', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2493', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2494', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2495', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2496', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2497', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2498', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2499', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2500', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2501', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2502', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2503', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2504', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2505', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2506', '96', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2417', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2418', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2419', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2420', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2421', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2422', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2423', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2424', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2425', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2426', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2427', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2428', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2429', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2430', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2431', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2433', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2434', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2435', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2436', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2437', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2438', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2439', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2440', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2441', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2442', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2443', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2444', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2538', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2539', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2540', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2541', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2542', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2543', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2544', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2545', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2546', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2547', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2548', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2549', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2550', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2551', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2552', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2553', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2554', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2555', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2556', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2557', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2558', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2559', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2560', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2561', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2562', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2563', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2564', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2565', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2566', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2567', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2568', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2569', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2570', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2571', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2572', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2573', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2574', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2575', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2576', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2577', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2578', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2579', '97', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2055', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2056', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2057', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2058', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2059', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2060', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2061', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2062', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2063', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2064', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2065', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2066', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2067', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2068', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2069', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2070', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2071', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2072', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2073', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2074', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2075', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2076', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2077', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2078', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2079', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2080', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2081', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2082', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2083', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2084', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2085', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2086', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2087', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2088', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2253', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2254', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2255', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2256', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2257', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2258', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2259', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2260', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2261', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2262', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2263', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2264', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2265', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2266', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2267', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2268', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2269', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2270', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2271', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2272', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2273', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2274', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2275', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2276', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2277', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2278', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2279', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2280', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2281', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2282', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2283', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2284', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1985', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1986', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1987', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1988', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1992', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1993', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1994', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1995', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1996', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1997', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1998', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('1999', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2001', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2002', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2003', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2005', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2006', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2007', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2008', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2009', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2010', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2011', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2012', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2013', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2014', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2015', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2016', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2017', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2018', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2019', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2215', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2216', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2217', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2218', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2219', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2220', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2221', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2222', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2223', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2224', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2225', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2226', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2227', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2228', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2229', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2230', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2231', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2232', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2233', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2234', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2235', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2236', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2237', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2238', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2239', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2240', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2241', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2242', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2243', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2244', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2245', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2246', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2247', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2248', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2249', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2250', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2251', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2252', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2445', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2446', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2447', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2448', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2449', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2450', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "C##FPL"."fixture_stats" VALUES ('2451', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for gw
-- ----------------------------
DROP TABLE "C##FPL"."gw";
CREATE TABLE "C##FPL"."gw" (
  "id" NUMBER(2,0) VISIBLE NOT NULL,
  "deadline" TIMESTAMP(6) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of gw
-- ----------------------------
INSERT INTO "C##FPL"."gw" VALUES ('2', TO_TIMESTAMP('2022-02-13 18:27:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "C##FPL"."gw" VALUES ('3', TO_TIMESTAMP('2022-02-21 09:45:00.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "C##FPL"."gw" VALUES ('4', TO_TIMESTAMP('2022-02-28 11:59:59.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "C##FPL"."gw" VALUES ('1', TO_TIMESTAMP('2022-02-02 22:30:31.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for league
-- ----------------------------
DROP TABLE "C##FPL"."league";
CREATE TABLE "C##FPL"."league" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76591".nextval NOT NULL,
  "owner" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "name" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "invitation_code" VARCHAR2(6 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of league
-- ----------------------------
INSERT INTO "C##FPL"."league" VALUES ('2', 'example', 'Dante', '123456');

-- ----------------------------
-- Table structure for participation
-- ----------------------------
DROP TABLE "C##FPL"."participation";
CREATE TABLE "C##FPL"."participation" (
  "team_id" NUMBER VISIBLE NOT NULL,
  "league_id" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of participation
-- ----------------------------
INSERT INTO "C##FPL"."participation" VALUES ('3', '2');
INSERT INTO "C##FPL"."participation" VALUES ('21', '2');
INSERT INTO "C##FPL"."participation" VALUES ('41', '2');

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE "C##FPL"."player";
CREATE TABLE "C##FPL"."player" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76601".nextval NOT NULL,
  "name" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "position" NCHAR(3) VISIBLE NOT NULL,
  "availibility_status" VARCHAR2(50 BYTE) VISIBLE,
  "availibility_last_changed" TIMESTAMP(6) VISIBLE,
  "availibility_percentage" NUMBER(3,0) VISIBLE DEFAULT 100 NOT NULL,
  "price_current" NUMBER(3,1) VISIBLE NOT NULL,
  "price_last_changed" TIMESTAMP(6) VISIBLE,
  "price_change_amount" NUMBER(1,1) VISIBLE,
  "club" NCHAR(3) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO "C##FPL"."player" VALUES ('1984', 'Leno', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('2022-02-21 16:09:57.196000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1985', 'Rúnarsson', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1986', 'Willian', 'MID', 'NotAvail', TO_TIMESTAMP('2022-02-01 20:34:29.113000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '6', TO_TIMESTAMP('2022-02-21 16:08:47.263000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1987', 'Aubameyang', 'FWD', 'NotAvail', TO_TIMESTAMP('2022-02-02 19:00:11.194000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '9.6', TO_TIMESTAMP('2022-02-02 19:10:31.063000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1988', 'Cédric', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1989', 'Lacazette', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1990', 'Xhaka', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1991', 'Marí', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1992', 'Bellerín', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1993', 'Chambers', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1994', 'Kolasinac', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1995', 'Elneny', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1996', 'Maitland-Niles', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1997', 'Holding', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1998', 'Partey', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('1999', 'Tierney', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2000', 'Pépé', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2001', 'Torreira', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2002', 'Nketiah', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2003', 'Smith Rowe', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2004', 'Saka', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2005', 'Gabriel', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2006', 'Mavropanos', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2007', 'Guendouzi', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2008', 'Martinelli', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2009', 'Saliba', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2010', 'White', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2011', 'Tavares', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2012', 'Sambi Lokonga', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2013', 'Balogun', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2014', 'Nelson', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2015', 'Hein', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2016', 'Ødegaard', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2017', 'Ramsdale', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2018', 'Okonkwo', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2019', 'Tomiyasu', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'ARS');
INSERT INTO "C##FPL"."player" VALUES ('2020', 'Steer', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2021', 'Hourihane', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2022', 'Martínez', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2023', 'Engels', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2024', 'Traoré', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2025', 'Sanson', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2026', 'McGinn', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2027', 'Hause', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2028', 'Trézéguet', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2029', 'Mings', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2030', 'Targett', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2031', 'Watkins', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2032', 'Nakamba', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2033', 'El Ghazi', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2034', 'Buendía', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2035', 'Cash', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2036', 'Konsa', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2037', 'Guilbert', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2038', 'Wesley', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2039', 'Samatta', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2040', 'Davis', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2041', 'Douglas Luiz', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2042', 'Ramsey', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2043', 'Young', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2044', 'Tuanzebe', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2045', 'Ings', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2046', 'Bailey', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '6.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2047', 'Ramsey', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2048', 'Philogene-Bidace', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2049', 'Chukwuemeka', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2050', 'Archer', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2051', 'Sinisalo', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2052', 'Bogarde', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2053', 'Iroegbunam', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2054', 'Marschall', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'AVL');
INSERT INTO "C##FPL"."player" VALUES ('2055', 'Jansson', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2056', 'Nørgaard', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2057', 'Toney', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2058', 'Fosu', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2059', 'Raya', 'GKP', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2060', 'Canós', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2061', 'Dasilva', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2062', 'Henry', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2063', 'Janelt', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2064', 'Ghoddos', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2065', 'Jensen', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2066', 'Goode', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2067', 'Forss', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2068', 'Roerslev', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2069', 'Sørensen', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2070', 'Pinnock', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2071', 'Balcombe', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2072', 'Zamburek', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2073', 'Gunnarsson', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2074', 'Dervişoğlu', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2075', 'Mbeumo', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2076', 'Bidstrup', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2077', 'Onyeka', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2078', 'Ajer', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2079', 'Thompson', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2080', 'Baptiste', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2081', 'Wissa', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2082', 'Fernández', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2083', 'Stevens', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2084', 'Zanka', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2085', 'Maghoma', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2086', 'Cox', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2087', 'Haygarth', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2088', 'Young-Coombes', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BRE');
INSERT INTO "C##FPL"."player" VALUES ('2089', 'Lallana', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2090', 'Steele', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2091', 'Groß', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2092', 'Duffy', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2093', 'Pröpper', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2094', 'Burn', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2095', 'Dunk', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2096', 'March', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2097', 'Webster', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2098', 'Veltman', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2099', 'Maupay', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2100', 'Trossard', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2101', 'Ryan', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2102', 'Jahanbakhsh', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2103', 'Bernardo', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2104', 'Sánchez', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2105', 'Bissouma', 'MID', 'Suspended', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2106', 'Lamptey', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2107', 'Connolly', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2108', 'Alzate', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2109', 'Mac Allister', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2110', 'Moder', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2111', 'Welbeck', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2112', 'Mwepu', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2113', 'Scherpen', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2114', 'Andone', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2115', 'Zeqiri', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2116', 'Karbownik', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2117', 'Richards', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2118', 'Caicedo', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2119', 'Roberts', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2120', 'Cucurella', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2121', 'Locadia', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2122', 'Sarmiento', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2123', 'Turns', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2124', 'Leonard', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2125', 'Ferguson', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BHA');
INSERT INTO "C##FPL"."player" VALUES ('2126', 'Tarkowski', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2127', 'Bardsley', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2128', 'Pieters', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2129', 'Cork', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2130', 'Stephens', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2131', 'Long', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2132', 'Rodriguez', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2133', 'Barnes', 'FWD', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2134', 'Mee', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2135', 'Westwood', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2136', 'Gudmundsson', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2137', 'Wood', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2138', 'Lowton', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2139', 'Vydra', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2140', 'Pope', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2141', 'Taylor', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2142', 'Norris', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2143', 'Brownhill', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2144', 'Benson', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2145', 'Peacock-Farrell', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2146', 'McNeil', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2147', 'Collins', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2148', 'Hennessey', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2149', 'Richardson', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2150', 'Thomas', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2151', 'Dodgson', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2152', 'Lennon', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2153', 'Cornet', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2154', 'Roberts', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'BUR');
INSERT INTO "C##FPL"."player" VALUES ('2155', 'Azpilicueta', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2156', 'Giroud', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '6.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2157', 'Thiago Silva', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2158', 'Alonso', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2159', 'Jorginho', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2160', 'Barkley', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2161', 'Kovacic', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2162', 'Batshuayi', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2163', 'Rüdiger', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2164', 'Arrizabalaga', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2165', 'Kanté', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2166', 'Ziyech', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '7.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2167', 'Loftus-Cheek', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2168', 'Christensen', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2169', 'Werner', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '8.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2170', 'Chilwell', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2171', 'Abraham', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '6.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2172', 'Pulisic', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2173', 'Mount', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2174', 'Ampadu', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2175', 'Hudson-Odoi', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2176', 'Havertz', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2177', 'James', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2178', 'Mendy', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2179', 'Sarr', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2180', 'Chalobah', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2181', 'Lukaku', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '11.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2182', 'Emerson', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2183', 'Saúl', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2184', 'Bettinelli', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CHE');
INSERT INTO "C##FPL"."player" VALUES ('2185', 'Gallagher', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2186', 'Guaita', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2187', 'Tomkins', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2188', 'McArthur', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2189', 'Benteke', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2190', 'Kouyaté', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2191', 'Kelly', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2192', 'Milivojevic', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2193', 'Ayew', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2194', 'Zaha', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2195', 'Schlupp', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2196', 'Butland', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2197', 'Riedewald', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2198', 'Jach', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2199', 'Mateta', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2200', 'Eze', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2201', 'Ferguson', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2202', 'Mitchell', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2203', 'Hughes', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2204', 'Olise', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2205', 'Ward', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2206', 'Guéhi', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2207', 'Andersen', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2208', 'Clyne', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2209', 'Hannam', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2210', 'Rak-Sakyi', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2211', 'Street', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2212', 'Banks', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2213', 'Matthews', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2214', 'Edouard', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'CRY');
INSERT INTO "C##FPL"."player" VALUES ('2215', 'Delph', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2216', 'Sigurdsson', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '6.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2217', 'Coleman', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2218', 'James', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '6.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2219', 'Bernard', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2220', 'Digne', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2221', 'Keane', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2222', 'Pickford', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2223', 'Allan', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2224', 'André Gomes', 'MID', 'NotAvail', TO_TIMESTAMP('2022-02-21 16:10:58.364000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '25', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2225', 'Doucouré', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2226', 'Iwobi', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2227', 'Mina', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2228', 'Davies', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2229', 'Calvert-Lewin', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '7.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2230', 'Holgate', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2231', 'Godfrey', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2232', 'Richarlison', 'FWD', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '7.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2233', 'Virgínia', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2234', 'Begović', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.1', TO_TIMESTAMP('2022-02-21 16:07:27.203000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2235', 'Townsend', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2236', 'Gray', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2237', 'Kenny', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2238', 'Gordon', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2239', 'Gbamin', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2240', 'Branthwaite', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2241', 'Broadhead', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2242', 'Kean', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2243', 'Nkounkou', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2244', 'Lonergan', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2245', 'Rondón', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2246', 'Simms', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2247', 'Dobbin', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2248', 'Whitaker', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2249', 'Tyrer', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2250', 'Tosun', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2251', 'Welch', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2252', 'Onyango', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'EVE');
INSERT INTO "C##FPL"."player" VALUES ('2253', 'Schmeichel', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2254', 'Evans', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2255', 'Albrighton', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2256', 'Mendy', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2257', 'Ward', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2258', 'Vardy', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '10.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2259', 'Praet', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2260', 'Pereira', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2261', 'Amartey', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2262', 'Castagne', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2263', 'Tielemans', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2264', 'Pérez', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2265', 'Maddison', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2266', 'Iheanacho', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '6.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2267', 'Choudhury', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2268', 'Barnes', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2269', 'Ndidi', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2270', 'Söyüncü', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2271', 'Justin', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2272', 'Thomas', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2273', 'Fofana', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2274', 'Vestergaard', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2275', 'Daka', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2276', 'Soumaré', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2277', 'Bertrand', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2278', 'Dewsbury-Hall', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2279', 'Jakupovic', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2280', 'Lookman', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2281', 'Daley-Campbell', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2282', 'Nelson', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2283', 'Brunt', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2284', 'McAteer', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEI');
INSERT INTO "C##FPL"."player" VALUES ('2285', 'Hernández', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2286', 'Casilla', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2287', 'Cooper', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2288', 'Ayling', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2289', 'Klich', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2290', 'Rodrigo', 'FWD', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '6.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2291', 'Dallas', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2292', 'Bamford', 'FWD', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '7.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2293', 'Llorente', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2294', 'Phillips', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2295', 'Costa', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2296', 'Roberts', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2297', 'Koch', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2298', 'Poveda', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2299', 'Raphinha', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2300', 'Shackleton', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2301', 'Struijk', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2302', 'Meslier', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2303', 'Harrison', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2304', 'James', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2305', 'Firpo', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2306', 'Klaesson', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2307', 'Greenwood', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2308', 'Summerville', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2309', 'Forshaw', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2310', 'Drameh', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2311', 'Cresswell', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2312', 'McCarron', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2313', 'Gelhardt', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2314', 'Kenneh', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2315', 'McKinstry', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2316', 'Hjelde', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2317', 'Bate', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2318', 'Jenkins', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2319', 'Moore', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2320', 'Gray', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LEE');
INSERT INTO "C##FPL"."player" VALUES ('2321', 'Milner', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2322', 'Henderson', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2323', 'Adrián', 'GKP', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2324', 'Matip', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2325', 'Thiago', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2326', 'Shaqiri', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2327', 'Chamberlain', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2328', 'Firmino', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2329', 'van Dijk', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '6.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2330', 'Mané', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '11.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2331', 'Alisson', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2332', 'Fabinho', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2333', 'Salah', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '13.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2334', 'Robertson', 'DEF', 'Suspended', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '7.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2335', 'Origi', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2336', 'Minamino', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2337', 'Alexander-Arnold', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2338', 'Gomez', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2339', 'Keita', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2340', 'Jota', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2341', 'Phillips', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2342', 'Kelleher', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2343', 'Konaté', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2344', 'Jones', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2345', 'Tsimikas', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2346', 'N.Williams', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2347', 'R.Williams', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2348', 'Davies', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2349', 'Elliott', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2350', 'Woodburn', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2351', 'Morton', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2352', 'Gordon', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2353', 'Bradley', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2354', 'Beck', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2355', 'Pitaluga', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2356', 'Quansah', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'LIV');
INSERT INTO "C##FPL"."player" VALUES ('2357', 'Grealish', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2358', 'Walker', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2359', 'Gündogan', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2360', 'De Bruyne', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '11.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2361', 'Stones', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2362', 'Mendy', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2363', 'Mahrez', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2364', 'Sterling', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '10.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2365', 'Cancelo', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2366', 'Ederson', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2367', 'Aké', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2368', 'Laporte', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2369', 'Steffen', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2370', 'Bernardo', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2371', 'Dias', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2372', 'Jesus', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2373', 'Zinchenko', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2374', 'Foden', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2375', 'Rodrigo', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2376', 'Torres', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '6.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2377', 'Fernandinho', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2378', 'Palmer', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2379', 'Edozie', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2380', 'Doyle', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2381', 'Carson', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2382', 'Mbete', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2383', 'Wilson-Esbrand', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2384', 'Lavia', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2385', 'Slicker', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2386', 'McAtee', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2387', 'Egan-Riley', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MCI');
INSERT INTO "C##FPL"."player" VALUES ('2388', 'Cavani', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '8.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2389', 'de Gea', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2390', 'Matic', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2391', 'Pogba', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '7.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2392', 'Maguire', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2393', 'Fred', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2394', 'Shaw', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2395', 'Lingard', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2396', 'Fernandes', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '11.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2397', 'Martial', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '7.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2398', 'Telles', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2399', 'Henderson', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2400', 'Rashford', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '9.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2401', 'van de Beek', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2402', 'Lindelöf', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2403', 'McTominay', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2404', 'Bailly', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2405', 'Wan-Bissaka', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2406', 'Greenwood', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2407', 'Mata', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2408', 'Sancho', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '8.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2409', 'Heaton', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2410', 'Dalot', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2411', 'Pereira', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2412', 'Elanga', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2413', 'Varane', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2414', 'Ronaldo', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '12.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2415', 'Jones', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2416', 'Diallo', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'MUN');
INSERT INTO "C##FPL"."player" VALUES ('2417', 'Willock', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2418', 'Shelvey', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2419', 'Ritchie', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2420', 'Clark', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2421', 'Darlow', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2422', 'Dubravka', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2423', 'Wilson', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2424', 'Hendrick', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2425', 'Fraser', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2426', 'Lascelles', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2427', 'Gayle', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2428', 'Dummett', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2429', 'Manquillo', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2430', 'Krafth', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2431', 'Murphy', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2432', 'Schär', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2433', 'Hayden', 'MID', 'Suspended', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2434', 'Saint-Maximin', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2435', 'Almirón', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2436', 'S.Longstaff', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2437', 'Joelinton', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2438', 'Lewis', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2439', 'M.Longstaff', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2440', 'Fernández', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2441', 'Woodman', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2442', 'Gillespie', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2443', 'White', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2444', 'Anderson', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NEW');
INSERT INTO "C##FPL"."player" VALUES ('2445', 'Gilmour', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2446', 'Williams', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2447', 'McGovern', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2448', 'Krul', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2449', 'Pukki', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2450', 'Stiepermann', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2451', 'Rupp', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2452', 'McLean', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2453', 'Hanley', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2454', 'Hernández', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2455', 'Byram', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2456', 'Hugill', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2457', 'Dowell', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2458', 'Zimmermann', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2459', 'Cantwell', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2460', 'Aarons', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2461', 'Sørensen', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2462', 'Placheta', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2463', 'Idah', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2464', 'Martin', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2465', 'Omobamidele', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2466', 'Gunn', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2467', 'Rashica', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2468', 'Gibson', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2469', 'Giannoulis', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2470', 'Lees-Melou', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2471', 'Mumba', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2472', 'Sargent', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2473', 'Tzolis', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2474', 'Kabak', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2475', 'Normann', 'MID', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2476', 'Tomkinson', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2477', 'Rowe', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2478', 'Dickson-Peters', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'NOR');
INSERT INTO "C##FPL"."player" VALUES ('2479', 'Walcott', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2480', 'Forster', 'GKP', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2481', 'McCarthy', 'GKP', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2482', 'Romeu', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2483', 'Redmond', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2484', 'Stephens', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2485', 'S.Armstrong', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2486', 'Ward-Prowse', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2487', 'Walker-Peters', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2488', 'Bednarek', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2489', 'Nlundulu', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2490', 'Adams', 'FWD', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '6.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2491', 'Tella', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2492', 'Smallbone', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2493', 'Obafemi', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2494', 'Diallo', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2495', 'Djenepo', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2496', 'Salisu', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2497', 'Perraud', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2498', 'Livramento', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2499', 'Elyounoussi', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2500', 'Broja', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2501', 'Long', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2502', 'A.Armstrong', 'FWD', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2503', 'Valery', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2504', 'Lyanco', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2505', 'Lewis', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2506', 'Caballero', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'SOU');
INSERT INTO "C##FPL"."player" VALUES ('2507', 'Hart', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2508', 'Lloris', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2509', 'Alderweireld', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2510', 'Lamela', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2511', 'Kane', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '12.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2512', 'Aurier', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2513', 'Son', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '10.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2514', 'Doherty', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2515', 'Dier', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2516', 'Lucas Moura', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2517', 'Dele', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2518', 'Davies', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2519', 'Højbjerg', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2520', 'Winks', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2521', 'Sánchez', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2522', 'Sessegnon', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2523', 'Bergwijn', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2524', 'Reguilón', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2525', 'Tanganga', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2526', 'Lo Celso', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2527', 'Skipp', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2528', 'Rodon', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2529', 'Ndombele', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2530', 'Gollini', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2531', 'Bryan', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2532', 'Romero', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2533', 'Scarlett', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2534', 'Emerson Royal', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2535', 'Markanday', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2536', 'Omole', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2537', 'Austin', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'TOT');
INSERT INTO "C##FPL"."player" VALUES ('2538', 'Sissoko', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2539', 'Foster', 'GKP', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2540', 'Rose', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2541', 'Gosling', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2542', 'Cathcart', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2543', 'Deeney', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2544', 'Cleverley', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2545', 'Femenía', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2546', 'Gray', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2547', 'Kabasele', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2548', 'Chalobah', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2549', 'Troost-Ekong', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2550', 'Perica', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2551', 'Bachmann', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2552', 'Masina', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2553', 'Sema', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2554', 'Zinckernagel', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2555', 'Success', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2556', 'Dele-Bashiru', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2557', 'Fletcher', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2558', 'Sierralta', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2559', 'Quina', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2560', 'Navarro', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2561', 'Sarr', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2562', 'Ngakia', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2563', 'Wilmot', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2564', 'Hungbo', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2565', 'Louza', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2566', 'João Pedro', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2567', 'Baah', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2568', 'Dennis', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2569', 'Pollock', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2570', 'Etebo', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2571', 'King', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2572', 'Mebude', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2573', 'Cucho', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2574', 'Kucka', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2575', 'Tufan', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2576', 'Elliot', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2577', 'Nkoulou', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2578', 'Morris', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2579', 'Angelini', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WAT');
INSERT INTO "C##FPL"."player" VALUES ('2580', 'Zouma', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2581', 'Noble', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2582', 'Randolph', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2583', 'Fabianski', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2584', 'Ogbonna', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2585', 'Reid', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2586', 'Cresswell', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2587', 'Yarmolenko', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2588', 'Antonio', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2589', 'Dawson', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2590', 'Fredericks', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2591', 'Lanzini', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2592', 'Masuaku', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2593', 'Coufal', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2594', 'Benrahma', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2595', 'Bowen', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2596', 'Rice', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2597', 'Soucek', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2598', 'Fornals', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2599', 'Diop', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2600', 'Johnson', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2601', 'Areola', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2602', 'Alves', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2603', 'Coventry', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2604', 'Baptiste', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2605', 'Vlasic', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2606', 'Kral', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2607', 'Ashby', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2608', 'Perkins', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2609', 'Alese', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2610', 'Oko-Flex', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WHU');
INSERT INTO "C##FPL"."player" VALUES ('2611', 'Moutinho', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2612', 'Patrício', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2613', 'Boly', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2614', 'Coady', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2615', 'Jiménez', 'FWD', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '7.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2616', 'Saïss', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2617', 'Marçal', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.2', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2618', 'Jonny', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2619', 'Dendoncker', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2620', 'Traoré', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.7', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.2', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2621', 'Neves', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2622', 'Semedo', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.8', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2623', 'Podence', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2624', 'Kilman', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2625', 'Gibbs-White', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2626', 'Neto', 'MID', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '6.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2627', 'Otasowie', 'MID', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2628', 'Hoever', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '3.9', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2629', 'Söndergaard', 'GKP', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2630', 'Fabio Silva', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2631', 'Mosquera', 'DEF', 'Injured', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '50', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2632', 'Ruddy', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2633', 'Trincão', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.6', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2634', 'Ait Nouri', 'DEF', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '4.3', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '-0.2', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2635', 'Sá', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '5.1', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0.1', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2636', 'Cutrone', 'FWD', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2637', 'Cundle', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2638', 'Campbell', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2639', 'Marques', 'DEF', 'NotAvail', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2640', 'Hwang', 'FWD', 'Doubtful', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '75', '5.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2641', 'Moulden', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2642', 'Storer', 'GKP', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2643', 'Bueno', 'DEF', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');
INSERT INTO "C##FPL"."player" VALUES ('2644', 'Jordão', 'MID', 'Available', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '100', '4.5', TO_TIMESTAMP('0001-01-01 00:00:04.000000', 'SYYYY-MM-DD HH24:MI:SS:FF6'), '0', 'WOL');

-- ----------------------------
-- Table structure for prev_gw_sqad
-- ----------------------------
DROP TABLE "C##FPL"."prev_gw_sqad";
CREATE TABLE "C##FPL"."prev_gw_sqad" (
  "team_id" NUMBER VISIBLE NOT NULL,
  "player_id" NUMBER VISIBLE NOT NULL,
  "gw_id" NUMBER(2,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of prev_gw_sqad
-- ----------------------------
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2040', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2163', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2177', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2333', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2334', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2337', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2360', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2366', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2396', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2414', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('3', '2513', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2000', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2163', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2177', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2181', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2258', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2333', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2337', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2360', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2365', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2366', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('21', '2400', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2022', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2163', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2258', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2329', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2330', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2333', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2358', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2363', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2365', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2396', '1');
INSERT INTO "C##FPL"."prev_gw_sqad" VALUES ('41', '2511', '1');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE "C##FPL"."settings";
CREATE TABLE "C##FPL"."settings" (
  "key" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "value" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO "C##FPL"."settings" VALUES ('CURRENT_GW', '2');
INSERT INTO "C##FPL"."settings" VALUES ('TRANSFER_GW', '0');
INSERT INTO "C##FPL"."settings" VALUES ('POINT_STATUS', '2');
INSERT INTO "C##FPL"."settings" VALUES ('POINTS_GW', '1');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE "C##FPL"."team";
CREATE TABLE "C##FPL"."team" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76588".nextval NOT NULL,
  "owner" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "team_name" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "team_balance" NUMBER(4,1) VISIBLE DEFAULT 100.0 NOT NULL,
  "total_points" NUMBER(4,0) VISIBLE DEFAULT 0 NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO "C##FPL"."team" VALUES ('41', 'username2', 'USER II', '1.6', '78');
INSERT INTO "C##FPL"."team" VALUES ('21', 'username1', 'Hundurus FC', '3.1', '90');
INSERT INTO "C##FPL"."team" VALUES ('3', 'example', 'Dawn FC', '2.2', '115');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE "C##FPL"."user";
CREATE TABLE "C##FPL"."user" (
  "username" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "name" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "email" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "hashed_password" VARCHAR2(128 BYTE) VISIBLE NOT NULL,
  "favourite_club" NCHAR(3) VISIBLE NOT NULL,
  "user_type" VARCHAR2(10 BYTE) VISIBLE NOT NULL,
  "disabled" NUMBER VISIBLE DEFAULT 0 NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "C##FPL"."user"."username" IS 'Username of a user';
COMMENT ON COLUMN "C##FPL"."user"."name" IS 'Full Name of User';
COMMENT ON COLUMN "C##FPL"."user"."email" IS 'User Email';
COMMENT ON COLUMN "C##FPL"."user"."hashed_password" IS 'bCrypt Hashed Password';
COMMENT ON COLUMN "C##FPL"."user"."favourite_club" IS 'Three letters of favourite club';
COMMENT ON COLUMN "C##FPL"."user"."user_type" IS 'User Access Type';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "C##FPL"."user" VALUES ('admin', 'Administrator', 'sabit.jehadul.karim@gmail.com', '$2a$10$uR0aOvmxFMPTnFYNBzu0oebC2zBoOT9tB5dgnwqFub9uzA3tsVaXy', 'ARS', 'ADMIN', '0');
INSERT INTO "C##FPL"."user" VALUES ('example', 'example', 'example@example.com', '$2a$10$R0JRiqSSYkHC0Pu1mjVr2.7U8WVQhPwV3Qlbi83BPKDbHgO8HkWhu', 'BRE', 'USER', '0');
INSERT INTO "C##FPL"."user" VALUES ('agentmorty', 'Agent Morty 23', 'agentmorty23@gmail.com', '$2a$10$0i9MZ5F./eD8d0fdlIImW.zIe3tYKk.e/wKnfZ2ni2c/3VkNjqvDa', 'NOR', 'USER', '0');
INSERT INTO "C##FPL"."user" VALUES ('scout', 'Md. Jehadul Karim', 'mjksabit@gmail.com', '$2a$10$yfuwl6O5dQwfBIcWQcx71ub3Do.tsRfQR9/txD7N9zC5JzSQP8OC.', 'ARS', 'SCOUT', '0');
INSERT INTO "C##FPL"."user" VALUES ('mortytheplatypus', 'Al Amru Bil Maruf', 'alamrubilmaruf412@gmail.com', '$2a$10$NSv76dtC4.KTNxNgTfpnauO06EV1NEduU0j0P/hOrsdli4zVYB3X2', 'CHE', 'SCOUT', '0');
INSERT INTO "C##FPL"."user" VALUES ('username2', 'User Name 2', 'username2@gmail.com', '$2a$10$lxJ.Cami0xDGwsdkIs6/0uTd2I0py8oNeNKk6HMGtt0ffFQpfKrrS', 'CHE', 'USER', '0');
INSERT INTO "C##FPL"."user" VALUES ('morty', 'Morty Smith', 'mortysmith@gmail.com', '$2a$10$UWsAAHAk2fF9sm6XvHD0TuX0UqM/7.GmqbXoJkARea6mubO5ga2VW', 'NEW', 'USER', '0');
INSERT INTO "C##FPL"."user" VALUES ('username1', 'User Name', 'username1@gmail.com', '$2a$10$HRfK/OBt2kZScDMink6Dl.0LaAaHXoHA3fPVfZb9okud4CdFoFJxG', 'EVE', 'USER', '0');

-- ----------------------------
-- View structure for fixture_list
-- ----------------------------
CREATE OR REPLACE VIEW "C##FPL"."fixture_list" AS SELECT 
    "id", 
    "gw_id", 
    "home_club", 
    "away_club", 
    H."name" "home_full_name", 
    H."logo_url" "home_logo_url", 
    A."name" "away_full_name", 
    A."logo_url" "away_logo_url",
    "result" 
  FROM "C##FPL"."fixture" 
  JOIN "club" H ON ("home_club" = H."short_name") 
  JOIN "club" A ON ("away_club" = A."short_name");

-- ----------------------------
-- View structure for fixture_player_list_view
-- ----------------------------
CREATE OR REPLACE VIEW "C##FPL"."fixture_player_list_view" AS SELECT F."id" "fixture_id", P."id", P."name", P."position", C."name" "club_name", C."logo_url" FROM "player" P JOIN "fixture" F ON (P."club" = F."home_club" OR P."club" = F."away_club") JOIN "club" C ON (P."club" = C."short_name");

-- ----------------------------
-- View structure for player_list_view
-- ----------------------------
CREATE OR REPLACE VIEW "C##FPL"."player_list_view" AS SELECT P."id", P."name", P."position", P."club", C."name" "club_name", P."price_current", P."availibility_status", P."availibility_percentage", C."logo_url" FROM "C##FPL"."player" P JOIN "C##FPL"."club" C ON (P."club" = C."short_name") WITH READ ONLY CONSTRAINTS "SYS_C008182";

-- ----------------------------
-- View structure for player_stats
-- ----------------------------
CREATE OR REPLACE VIEW "C##FPL"."player_stats" AS SELECT 
	P."id", P."name", P."position", P."price_current" "price", P."club", C."name" "club_name", C."logo_url", 
	(SELECT NVL(SUM("points"), 0) FROM "fixture_stats" WHERE P."id" = "player_id") "points",
	(SELECT NVL(SUM("minutes_played"), 0) FROM "fixture_stats" WHERE P."id" = "player_id") "minutes_played",
	(SELECT NVL(SUM("goal_scored"), 0) FROM "fixture_stats" WHERE P."id" = "player_id") "goal_scored",
	(SELECT NVL(SUM("assist"), 0) FROM "fixture_stats" WHERE P."id" = "player_id") "assist",
	(SELECT NVL(SUM("clean_sheet"), 0) FROM "fixture_stats" WHERE P."id" = "player_id") "clean_sheet",
	(SELECT NVL(SUM("bonus_point"), 0) FROM "fixture_stats" WHERE P."id" = "player_id") "bonus_point"
FROM "player" P 
JOIN "club" C ON (P."club" = C."short_name");

-- ----------------------------
-- Function structure for UPDATE_GW
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##FPL"."UPDATE_GW" AS
BEGIN
	
	FOR L_GW IN 1..38 LOOP
		INSERT INTO GW VALUES (L_GW, CURRENT_TIMESTAMP);
	END LOOP;
	COMMIT;
END;

BEGIN
	UPDATE_GW
END;
/

-- ----------------------------
-- Sequence structure for ISEQ$$_76585
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76585";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76585" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_76588
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76588";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76588" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_76591
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76591";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76591" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_76598
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76598";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76598" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_76601
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76601";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76601" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_76618
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76618";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76618" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_76621
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76621";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76621" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_76625
-- ----------------------------
DROP SEQUENCE "C##FPL"."ISEQ$$_76625";
CREATE SEQUENCE "C##FPL"."ISEQ$$_76625" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table blog
-- ----------------------------
ALTER TABLE "C##FPL"."blog" ADD CONSTRAINT "SYS_C007854" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table blog
-- ----------------------------
ALTER TABLE "C##FPL"."blog" ADD CONSTRAINT "SYS_C007849" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."blog" ADD CONSTRAINT "SYS_C007850" CHECK ("publication_date" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."blog" ADD CONSTRAINT "SYS_C007851" CHECK ("title" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."blog" ADD CONSTRAINT "SYS_C007852" CHECK ("cover_image_url" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."blog" ADD CONSTRAINT "SYS_C007853" CHECK ("content" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table club
-- ----------------------------
ALTER TABLE "C##FPL"."club" ADD CONSTRAINT "SYS_C007879" PRIMARY KEY ("short_name");

-- ----------------------------
-- Checks structure for table club
-- ----------------------------
ALTER TABLE "C##FPL"."club" ADD CONSTRAINT "SYS_C007877" CHECK ("name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."club" ADD CONSTRAINT "SYS_C007878" CHECK ("logo_url" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table current_squad
-- ----------------------------
ALTER TABLE "C##FPL"."current_squad" ADD CONSTRAINT "SYS_C007898" PRIMARY KEY ("team_id", "player_id");

-- ----------------------------
-- Checks structure for table current_squad
-- ----------------------------
ALTER TABLE "C##FPL"."current_squad" ADD CONSTRAINT "SYS_C007895" CHECK ("team_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."current_squad" ADD CONSTRAINT "SYS_C007896" CHECK ("player_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."current_squad" ADD CONSTRAINT "SYS_C007897" CHECK ("buying_price" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table current_squad
-- ----------------------------
CREATE TRIGGER "C##FPL"."update_squad_buying_price" BEFORE UPDATE ON "C##FPL"."current_squad" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	C_PRICE NUMBER;
BEGIN
	SELECT P."price_current" INTO C_PRICE FROM "player" P WHERE P."id" = :NEW."player_id";
	:NEW."buying_price" := C_PRICE;
END;
/

-- ----------------------------
-- Primary Key structure for table fixture
-- ----------------------------
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "SYS_C007942" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table fixture
-- ----------------------------
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "fixture_clubs" UNIQUE ("home_club", "away_club") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table fixture
-- ----------------------------
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "SYS_C007939" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "SYS_C007940" CHECK ("home_club" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "SYS_C007941" CHECK ("away_club" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table fixture_stats
-- ----------------------------
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007970" PRIMARY KEY ("player_id", "fixture_id");

-- ----------------------------
-- Checks structure for table fixture_stats
-- ----------------------------
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007955" CHECK ("player_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007956" CHECK ("fixture_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007957" CHECK ("points" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007958" CHECK ("minutes_played" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007959" CHECK ("goal_scored" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007960" CHECK ("goal_conceded" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007961" CHECK ("own_goal" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007963" CHECK ("penalty_missed" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007964" CHECK ("yellow_card" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007965" CHECK ("red_card" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007966" CHECK ("saves" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007967" CHECK ("bonus_point" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C008220" CHECK ("assist" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C008222" CHECK ("clean_sheet" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table gw
-- ----------------------------
ALTER TABLE "C##FPL"."gw" ADD CONSTRAINT "SYS_C007904" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table gw
-- ----------------------------
ALTER TABLE "C##FPL"."gw" ADD CONSTRAINT "SYS_C007901" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."gw" ADD CONSTRAINT "SYS_C007902" CHECK ("deadline" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."gw" ADD CONSTRAINT "valid_gw_number" CHECK ("id" BETWEEN 1 AND 38) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table league
-- ----------------------------
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "SYS_C007870" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table league
-- ----------------------------
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "SYS_C007864" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "SYS_C007865" CHECK ("owner" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "SYS_C007866" CHECK ("name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "SYS_C007868" CHECK ("invitation_code" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table participation
-- ----------------------------
ALTER TABLE "C##FPL"."participation" ADD CONSTRAINT "SYS_C007874" PRIMARY KEY ("team_id", "league_id");

-- ----------------------------
-- Checks structure for table participation
-- ----------------------------
ALTER TABLE "C##FPL"."participation" ADD CONSTRAINT "SYS_C007872" CHECK ("team_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."participation" ADD CONSTRAINT "SYS_C007873" CHECK ("league_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table player
-- ----------------------------
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "SYS_C007893" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table player
-- ----------------------------
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "SYS_C007887" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "SYS_C007888" CHECK ("name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "SYS_C007889" CHECK ("position" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "SYS_C007890" CHECK ("availibility_percentage" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "SYS_C007891" CHECK ("price_current" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "valid_player_position" CHECK ("position" in ('GKP', 'DEF', 'MID', 'FWD')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table player
-- ----------------------------
CREATE TRIGGER "C##FPL"."last_update_trigger" BEFORE UPDATE ON "C##FPL"."player" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
BEGIN

    IF :NEW."availibility_status" != :OLD."availibility_status" OR 
        :NEW."availibility_percentage" != :OLD."availibility_percentage" THEN
        :NEW."availibility_last_changed" := CURRENT_TIMESTAMP;
    END IF;

    IF :NEW."price_current" != :OLD."price_current" THEN
            :NEW."price_last_changed" := CURRENT_TIMESTAMP;
            :NEW."price_change_amount" := :NEW."price_current" - :OLD."price_current";
    END IF;

END;

-- CREATE OR REPLACE TRIGGER "update_squad_buying_price"
-- 	BEFORE UPDATE ON "current_squad"
-- 	FOR EACH ROW
-- DECLARE
-- 	C_PRICE NUMBER;
-- BEGIN
-- 	SELECT P."price_current" INTO C_PRICE FROM "player" P WHERE P."id" = :NEW."player_id";
-- 	:NEW."buying_price" := C_PRICE;
-- END;
/

-- ----------------------------
-- Primary Key structure for table prev_gw_sqad
-- ----------------------------
ALTER TABLE "C##FPL"."prev_gw_sqad" ADD CONSTRAINT "SYS_C007917" PRIMARY KEY ("team_id", "player_id", "gw_id");

-- ----------------------------
-- Checks structure for table prev_gw_sqad
-- ----------------------------
ALTER TABLE "C##FPL"."prev_gw_sqad" ADD CONSTRAINT "SYS_C007914" CHECK ("team_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."prev_gw_sqad" ADD CONSTRAINT "SYS_C007915" CHECK ("player_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."prev_gw_sqad" ADD CONSTRAINT "SYS_C007916" CHECK ("gw_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table settings
-- ----------------------------
ALTER TABLE "C##FPL"."settings" ADD CONSTRAINT "SYS_C008205" PRIMARY KEY ("key");

-- ----------------------------
-- Checks structure for table settings
-- ----------------------------
ALTER TABLE "C##FPL"."settings" ADD CONSTRAINT "SYS_C008204" CHECK ("key" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table team
-- ----------------------------
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "SYS_C007862" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table team
-- ----------------------------
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "SYS_C007856" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "SYS_C007857" CHECK ("owner" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "SYS_C007858" CHECK ("team_name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "SYS_C007859" CHECK ("team_balance" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "SYS_C007860" CHECK ("total_points" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "team_balance_non_negative" CHECK ("team_balance" >= 0) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007847" PRIMARY KEY ("username");

-- ----------------------------
-- Uniques structure for table user
-- ----------------------------
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "user_unique_email" UNIQUE ("email") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table user
-- ----------------------------
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007838" CHECK ("username" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007839" CHECK ("name" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007840" CHECK ("email" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007841" CHECK ("hashed_password" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007842" CHECK ("favourite_club" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007843" CHECK ("user_type" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "SYS_C007844" CHECK ("disabled" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "disabled_boolean" CHECK ("disabled" in (0, 1)) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."user" ADD CONSTRAINT "valid_user_type" CHECK ("user_type" in ('ADMIN', 'USER', 'SCOUT')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table blog
-- ----------------------------
ALTER TABLE "C##FPL"."blog" ADD CONSTRAINT "user_blog_writer" FOREIGN KEY ("writer") REFERENCES "C##FPL"."user" ("username") ON DELETE SET NULL NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table current_squad
-- ----------------------------
ALTER TABLE "C##FPL"."current_squad" ADD CONSTRAINT "current_squad_of_team" FOREIGN KEY ("team_id") REFERENCES "C##FPL"."team" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."current_squad" ADD CONSTRAINT "player_in_current_squad" FOREIGN KEY ("player_id") REFERENCES "C##FPL"."player" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table fixture
-- ----------------------------
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "away_club_fixture" FOREIGN KEY ("away_club") REFERENCES "C##FPL"."club" ("short_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "fixture_of_gw" FOREIGN KEY ("gw_id") REFERENCES "C##FPL"."gw" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture" ADD CONSTRAINT "home_club_fixture" FOREIGN KEY ("home_club") REFERENCES "C##FPL"."club" ("short_name") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table fixture_stats
-- ----------------------------
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "stat_of_player" FOREIGN KEY ("player_id") REFERENCES "C##FPL"."player" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "stat_of_prev_fixture" FOREIGN KEY ("fixture_id") REFERENCES "C##FPL"."fixture" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table league
-- ----------------------------
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "league_has_owner" FOREIGN KEY ("owner") REFERENCES "C##FPL"."user" ("username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table participation
-- ----------------------------
ALTER TABLE "C##FPL"."participation" ADD CONSTRAINT "participate_in_league" FOREIGN KEY ("league_id") REFERENCES "C##FPL"."league" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."participation" ADD CONSTRAINT "participation_of_team" FOREIGN KEY ("team_id") REFERENCES "C##FPL"."team" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table player
-- ----------------------------
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "player_of_club" FOREIGN KEY ("club") REFERENCES "C##FPL"."club" ("short_name") ON DELETE SET NULL NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table prev_gw_sqad
-- ----------------------------
ALTER TABLE "C##FPL"."prev_gw_sqad" ADD CONSTRAINT "player_in_prev_squad" FOREIGN KEY ("player_id") REFERENCES "C##FPL"."player" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."prev_gw_sqad" ADD CONSTRAINT "prev_squad_of_team" FOREIGN KEY ("team_id") REFERENCES "C##FPL"."team" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."prev_gw_sqad" ADD CONSTRAINT "squad_of_prev_gw" FOREIGN KEY ("gw_id") REFERENCES "C##FPL"."gw" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table team
-- ----------------------------
ALTER TABLE "C##FPL"."team" ADD CONSTRAINT "team_has_owner" FOREIGN KEY ("owner") REFERENCES "C##FPL"."user" ("username") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
