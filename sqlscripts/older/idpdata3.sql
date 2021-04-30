--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2021-04-29 08:02:44

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

--
-- TOC entry 2880 (class 0 OID 216043)
-- Dependencies: 203
-- Data for Name: AspNetRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2882 (class 0 OID 216059)
-- Dependencies: 205
-- Data for Name: AspNetRoleClaims; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2881 (class 0 OID 216051)
-- Dependencies: 204
-- Data for Name: AspNetUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AspNetUsers" ("Id", "AccessFailedCount", "ConcurrencyStamp", "Email", "EmailConfirmed", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UserName") VALUES ('baef4590-c2dd-48cb-94ff-8650216849c6', 0, '808d2dc6-eabc-4315-a679-f5da297daa60', 'AliceSmith@email.com', true, true, NULL, 'ALICESMITH@EMAIL.COM', 'ALICE', 'AQAAAAEAACcQAAAAEOqiSfgDMBKL4i2I039J17UzpS+P8B06AaU6vBJ+pE5A0uTfLmpM5DAumaHg12zJRA==', NULL, false, '4MDMOY7NUGQF7QWQ3VXDZJRARK73WOS7', false, 'alice');
INSERT INTO public."AspNetUsers" ("Id", "AccessFailedCount", "ConcurrencyStamp", "Email", "EmailConfirmed", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UserName") VALUES ('e19c7c48-a0d4-4085-a9a7-342d218de768', 0, '8ec5dd4e-2c2a-4b98-b194-cb949db93779', 'BobSmith@email.com', true, true, NULL, 'BOBSMITH@EMAIL.COM', 'BOB', 'AQAAAAEAACcQAAAAEP9t651xzHYu2Vl0Nr/RR6Cs1uxrLNOXtZQrPhZg+Fv/PRPj52z2HdkpPkG+8bUfhg==', NULL, false, 'QW3WXPIB3AI6ONBU67UM75F5OGL2X6ED', false, 'bob');


--
-- TOC entry 2883 (class 0 OID 216072)
-- Dependencies: 206
-- Data for Name: AspNetUserClaims; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (1, 'name', 'Alice Smith', 'baef4590-c2dd-48cb-94ff-8650216849c6');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (2, 'given_name', 'Alice', 'baef4590-c2dd-48cb-94ff-8650216849c6');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (3, 'family_name', 'Smith', 'baef4590-c2dd-48cb-94ff-8650216849c6');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (4, 'website', 'http://alice.com', 'baef4590-c2dd-48cb-94ff-8650216849c6');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (5, 'website', 'http://bob.com', 'e19c7c48-a0d4-4085-a9a7-342d218de768');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (6, 'family_name', 'Smith', 'e19c7c48-a0d4-4085-a9a7-342d218de768');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (7, 'given_name', 'Bob', 'e19c7c48-a0d4-4085-a9a7-342d218de768');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (8, 'name', 'Bob Smith', 'e19c7c48-a0d4-4085-a9a7-342d218de768');
INSERT INTO public."AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") VALUES (9, 'location', 'somewhere', 'e19c7c48-a0d4-4085-a9a7-342d218de768');


--
-- TOC entry 2884 (class 0 OID 216085)
-- Dependencies: 207
-- Data for Name: AspNetUserLogins; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2885 (class 0 OID 216098)
-- Dependencies: 208
-- Data for Name: AspNetUserRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2886 (class 0 OID 216116)
-- Dependencies: 209
-- Data for Name: AspNetUserTokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2879 (class 0 OID 216038)
-- Dependencies: 202
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20180109192453_CreateIdentitySchema', '3.1.11');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20210216202226_CompanyTree', '3.1.11');


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 211
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AspNetRoleClaims_Id_seq"', 1, false);


--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 210
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AspNetUserClaims_Id_seq"', 9, true);


-- Completed on 2021-04-29 08:02:44

--
-- PostgreSQL database dump complete
--

