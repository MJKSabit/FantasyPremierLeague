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

 Date: 04/01/2022 19:49:39
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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE "C##FPL"."event";
CREATE TABLE "C##FPL"."event" (
  "type" VARCHAR2(5 BYTE) VISIBLE NOT NULL,
  "details" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for fixture
-- ----------------------------
DROP TABLE "C##FPL"."fixture";
CREATE TABLE "C##FPL"."fixture" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76621".nextval NOT NULL,
  "gw_id" NUMBER(2,0) VISIBLE,
  "home_club" NCHAR(3) VISIBLE NOT NULL,
  "away_club" NCHAR(3) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for fixture_event
-- ----------------------------
DROP TABLE "C##FPL"."fixture_event";
CREATE TABLE "C##FPL"."fixture_event" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76625".nextval NOT NULL,
  "fixture_id" NUMBER VISIBLE NOT NULL,
  "player_id" NUMBER VISIBLE NOT NULL,
  "event_type" VARCHAR2(5 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  "penalty_scored" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "penalty_missed" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "yellow_card" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "red_card" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "saves" NUMBER(2,0) VISIBLE DEFAULT 0 NOT NULL,
  "bonus_point" NUMBER(1,0) VISIBLE DEFAULT 0 NOT NULL,
  "selected_by" NUMBER(10,0) VISIBLE DEFAULT 0 NOT NULL,
  "price" NUMBER(3,1) VISIBLE DEFAULT 0 NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for league
-- ----------------------------
DROP TABLE "C##FPL"."league";
CREATE TABLE "C##FPL"."league" (
  "id" NUMBER VISIBLE DEFAULT "C##FPL"."ISEQ$$_76591".nextval NOT NULL,
  "owner" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "name" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "type" VARCHAR2(10 BYTE) VISIBLE NOT NULL,
  "invitation_code" VARCHAR2(6 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Table structure for point_system
-- ----------------------------
DROP TABLE "C##FPL"."point_system";
CREATE TABLE "C##FPL"."point_system" (
  "type" VARCHAR2(5 BYTE) VISIBLE NOT NULL,
  "position" NCHAR(3) VISIBLE NOT NULL,
  "point" NUMBER(2,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

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
-- Primary Key structure for table event
-- ----------------------------
ALTER TABLE "C##FPL"."event" ADD CONSTRAINT "SYS_C007925" PRIMARY KEY ("type");

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
-- Primary Key structure for table fixture_event
-- ----------------------------
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "SYS_C007951" PRIMARY KEY ("id");

-- ----------------------------
-- Checks structure for table fixture_event
-- ----------------------------
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "SYS_C007947" CHECK ("id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "SYS_C007948" CHECK ("fixture_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "SYS_C007949" CHECK ("player_id" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "SYS_C007950" CHECK ("event_type" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007962" CHECK ("penalty_scored" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007963" CHECK ("penalty_missed" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007964" CHECK ("yellow_card" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007965" CHECK ("red_card" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007966" CHECK ("saves" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007967" CHECK ("bonus_point" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007968" CHECK ("selected_by" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_stats" ADD CONSTRAINT "SYS_C007969" CHECK ("price" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "SYS_C007867" CHECK ("type" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "SYS_C007868" CHECK ("invitation_code" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."league" ADD CONSTRAINT "valid_league_type" CHECK ("type" in ('PUBLIC', 'PRIVATE')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
ALTER TABLE "C##FPL"."player" ADD CONSTRAINT "valid_player_position" CHECK ("position" in ('GKP', 'DEF', 'MID', 'ATK')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table point_system
-- ----------------------------
ALTER TABLE "C##FPL"."point_system" ADD CONSTRAINT "SYS_C007929" PRIMARY KEY ("type", "position");

-- ----------------------------
-- Checks structure for table point_system
-- ----------------------------
ALTER TABLE "C##FPL"."point_system" ADD CONSTRAINT "SYS_C007926" CHECK ("position" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."point_system" ADD CONSTRAINT "SYS_C007927" CHECK ("point" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."point_system" ADD CONSTRAINT "valid_player_position_in_point_system" CHECK ("position" in ('GKP', 'DEF', 'MID', 'ATK')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Foreign Keys structure for table fixture_event
-- ----------------------------
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "event_of_fixture" FOREIGN KEY ("fixture_id") REFERENCES "C##FPL"."fixture" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "event_of_player" FOREIGN KEY ("player_id") REFERENCES "C##FPL"."player" ("id") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##FPL"."fixture_event" ADD CONSTRAINT "event_type" FOREIGN KEY ("event_type") REFERENCES "C##FPL"."event" ("type") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Foreign Keys structure for table point_system
-- ----------------------------
ALTER TABLE "C##FPL"."point_system" ADD CONSTRAINT "event_type_in_point_system" FOREIGN KEY ("type") REFERENCES "C##FPL"."event" ("type") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
