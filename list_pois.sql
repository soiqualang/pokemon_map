-- Adminer 4.6.3 PostgreSQL dump

DROP TABLE IF EXISTS "list_pois";
DROP SEQUENCE IF EXISTS list_pois_id_seq;
CREATE SEQUENCE list_pois_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."list_pois" (
    "id" integer DEFAULT nextval('list_pois_id_seq') NOT NULL,
    "geom" geometry(Point,4326),
    "name" character varying(255),
    "title" character varying(255),
    "des" character varying,
    "img" character varying(255),
    "pokemon_ver" integer,
    CONSTRAINT "list_pois_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "sidx_list_pois_geom" ON "public"."list_pois" USING btree ("geom");

INSERT INTO "list_pois" ("id", "geom", "name", "title", "des", "img", "pokemon_ver") VALUES
(1,	'0101000020E61000001D3FFB16933F6040936865D669A94040',	'Littleroot Town',	'Littleroot Town',	'Basking amid vibrant nature, this simple town is not shaded with any one hue. ',	NULL,	NULL),
(2,	'0101000020E6100000D9889E0DB63E6040B41A4B2152B04040',	'Professor Birch''s Lab',	'Professor Birch''s Lab',	'In the southwest corner of town is Professor Birch''s Laboratory. Here, Pokémon Trainers just beginning their quest can receive either a Treecko, Torchic, or Mudkip from Professor Birch. Instead of obtaining the player''s starter Pokémon here, the player must gain it on Route 101 while saving Professor Birch during the storyline. Professor Birch''s assistant often looks after the laboratory by himself because Professor Birch likes doing field work instead of being inside his laboratory. Professor Birch''s house is also located in the northeast (if player character is male) or northwest (if player character is female). In Pokémon Omega Ruby and Alpha Sapphire, the player can use the cardboard boxes in Birch''s lab to change Rotom''s form. ',	NULL,	NULL),
(3,	'0101000020E61000002CB223CE1B416040886C21A2EDAB4040',	'Rival''s house',	'Rival''s house',	'Brendan lives in the house on the left, while May lives in the house on the right. The rival''s house is similar to the player''s house. As the rival is the son/daughter of Prof. Birch, it is also his residence. ',	NULL,	NULL),
(4,	'0101000020E6100000D9EFD76E424160400887F733C0AF4040',	'Player''s house',	'Player''s house',	'This is the house where the player lives before beginning his/her journey. The game begins with him or her moving into Littleroot from the Johto region. The male character lives in the house on the left, while the female character lives in the house on the right. The player''s Mom lives here, while Norman, the player''s father, drops by and stays a while. After the player obtains his/her starter Pokémon on Route 101, going home and talking to his/her mother will fully restore all of the player''s Pokémon, just like a Pokémon Center.

There are two levels, the first being a living room and kitchen area, while upstairs on the second level is where the player''s bedroom is located. It contains a clock that the player must set at the start of the game to keep track of the time, a Nintendo GameCube with a Game Boy Advance hooked up to it as a controller, and a PC to store items and Pokémon. The rug can be decorated with Poké Dolls.

The TV found here is the only one in Hoenn to detail the current broadcast, specifically a movie on TV wherein two men are dancing on a big piano keyboard. ',	NULL,	NULL);

-- 2019-02-05 00:18:21.702657+07
