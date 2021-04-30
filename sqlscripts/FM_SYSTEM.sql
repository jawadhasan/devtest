--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2021-04-30 09:28:20

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
-- TOC entry 203 (class 1259 OID 290709)
-- Name: AddressInfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AddressInfo" (
    "Country" text,
    "City" text,
    "Address" text
);


ALTER TABLE public."AddressInfo" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 290715)
-- Name: Companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Companies" (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "Type" integer NOT NULL,
    "ParentId" uuid,
    "Email" text
);


ALTER TABLE public."Companies" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 290743)
-- Name: DeviceOwners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DeviceOwners" (
    "Id" uuid NOT NULL,
    "DeviceId" uuid NOT NULL,
    "OwnerId" uuid NOT NULL,
    "Relationship" integer NOT NULL
);


ALTER TABLE public."DeviceOwners" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 290728)
-- Name: Devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Devices" (
    "Id" uuid NOT NULL,
    "Name" character varying(255) NOT NULL,
    "SerialNumber" text NOT NULL,
    "Location" text,
    "Country" text,
    "City" text,
    "Type" text,
    "Model" text,
    "CompanyId" uuid
);


ALTER TABLE public."Devices" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 290704)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 290758)
-- Name: event_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_data (
    "SerialNumber" text NOT NULL,
    "OperationStatus" text,
    "WarningStatus" text,
    "DeviceId" uuid,
    "CommunicatedTime" timestamp with time zone DEFAULT '0001-01-01 01:00:00+01'::timestamp with time zone NOT NULL,
    "CommunicationConnectionStatus" text,
    "InkAlarmTime" integer,
    "Name" text,
    "TypeName" text
);


ALTER TABLE public.event_data OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 290771)
-- Name: hourly_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hourly_data (
    "SerialNumber" text NOT NULL,
    "Name" text,
    "InkOperatingTime" integer,
    "PrintCount" integer,
    "CumulativeOperationTime" integer,
    "InkViscosity" integer,
    "InkPressure" numeric(5,3),
    "AmbientTemperature" integer,
    "DeflectionVoltage" numeric(3,1),
    "ExcitationVref" integer,
    "ExcitationFrequency" numeric(4,1),
    "InkConsumption" integer,
    "MakeupConsumption" integer,
    "InkFilterUseTime" integer,
    "MakeupFilterUseTime" integer,
    "RecoveryFilterUseTime" integer,
    "AirFilterUseTime" integer,
    "CirculationFilterUseTime" integer,
    "MGVFilterUseTime" integer,
    "PumpUseTime" integer,
    "HeatingUnitUseTime" integer,
    "MV1UseTime" integer,
    "MV2UseTime" integer,
    "MV3UseTime" integer,
    "MV4UseTime" integer,
    "MV5UseTime" integer,
    "MV6UseTime" integer,
    "MV7UseTime" integer,
    "MV8UseTime" integer,
    "MV9UseTime" integer,
    "RAirFilterUseTime" integer,
    "TypeName" text,
    "InkResidualQuantityLevel" integer,
    "MakeupResidualQuantityLevel" integer,
    "SoftwareVersion" text,
    "CommunicatedTime" timestamp with time zone DEFAULT '0001-01-01 01:00:00+01'::timestamp with time zone NOT NULL,
    "AirFilterAlarmTime" integer,
    "CirculationFilterAlarmTime" integer,
    "CommunicationConnectionStatus" text,
    "HeatingUnitAlarmTime" integer,
    "InkAlarmTime" integer,
    "InkFilterAlarmTime" integer,
    "InkType" text,
    "MakeupFilterAlarmTime" integer,
    "MakeupInkType" text,
    "MGVFilterAlarmTime" integer,
    "MV1AlarmTime" integer,
    "MV2AlarmTime" integer,
    "MV3AlarmTime" integer,
    "MV4AlarmTime" integer,
    "MV5AlarmTime" integer,
    "MV6AlarmTime" integer,
    "MV7AlarmTime" integer,
    "MV8AlarmTime" integer,
    "MV9AlarmTime" integer,
    "PumpAlarmTime" integer,
    "RAirFilterAlarmTime" integer,
    "RecoveryFilterAlarmTime" integer
);


ALTER TABLE public.hourly_data OWNER TO postgres;

--
-- TOC entry 2868 (class 0 OID 290709)
-- Dependencies: 203
-- Data for Name: AddressInfo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2869 (class 0 OID 290715)
-- Dependencies: 204
-- Data for Name: Companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Companies" ("Id", "Name", "Type", "ParentId", "Email") VALUES ('874d30d6-076d-492f-bed3-3c85b8e00b1c', 'Hitachi EU', 1, NULL, 'info@hitachi-eu.com');
INSERT INTO public."Companies" ("Id", "Name", "Type", "ParentId", "Email") VALUES ('9cc7fd30-63ec-4ef1-a3c8-5cb11c9fdb72', 'Nestlé', 2, NULL, 'info@nestle.com');


--
-- TOC entry 2871 (class 0 OID 290743)
-- Dependencies: 206
-- Data for Name: DeviceOwners; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DeviceOwners" ("Id", "DeviceId", "OwnerId", "Relationship") VALUES ('ebb8e41c-458e-4a01-a12a-03f039fa42df', '09335be1-b3d9-4d32-96fe-f65afc575e51', '9cc7fd30-63ec-4ef1-a3c8-5cb11c9fdb72', 0);
INSERT INTO public."DeviceOwners" ("Id", "DeviceId", "OwnerId", "Relationship") VALUES ('c2120d88-e34f-4787-a04b-6e227fe87d95', '9ddea516-2cfa-44c4-bba5-c55e810a4eba', '9cc7fd30-63ec-4ef1-a3c8-5cb11c9fdb72', 0);


--
-- TOC entry 2870 (class 0 OID 290728)
-- Dependencies: 205
-- Data for Name: Devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Devices" ("Id", "Name", "SerialNumber", "Location", "Country", "City", "Type", "Model", "CompanyId") VALUES ('9ddea516-2cfa-44c4-bba5-c55e810a4eba', 'Printer PLine 2', '20210421', NULL, 'Germany', 'Berlin', NULL, 'UX-D140W', NULL);
INSERT INTO public."Devices" ("Id", "Name", "SerialNumber", "Location", "Country", "City", "Type", "Model", "CompanyId") VALUES ('09335be1-b3d9-4d32-96fe-f65afc575e51', 'Printer PLine 1', '0', NULL, 'Germany', 'Dusseldorf', NULL, 'UX-D160W', NULL);


--
-- TOC entry 2867 (class 0 OID 290704)
-- Dependencies: 202
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20210311221908_intialize', '3.1.12');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20210430070110_IkuraSchemaChange', '3.1.12');


--
-- TOC entry 2872 (class 0 OID 290758)
-- Dependencies: 207
-- Data for Name: event_data; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2873 (class 0 OID 290771)
-- Dependencies: 208
-- Data for Name: hourly_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 25, 41646, 205, 0, 9.000, 26, 5.4, 11, 68.9, 2, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 5, 'UX-D161W', 3, 3, '0.58', '2021-04-21 18:00:00+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 26, 49310, 206, 0, 9.000, 26, 5.4, 11, 68.9, 3, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 6, 'UX-D161W', 3, 3, '0.58', '2021-04-21 19:00:00+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 24, 33983, 204, 0, 9.000, 26, 5.4, 11, 68.9, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 4, 'UX-D161W', 3, 3, '0.58', '2021-04-21 17:00:00+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 22, 18656, 202, 0, 9.000, 26, 5.4, 11, 68.9, 1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 2, 'UX-D161W', 3, 3, '0.58', '2021-04-21 15:00:00+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 21, 10992, 201, 0, 9.000, 26, 5.4, 11, 68.9, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 'UX-D161W', 3, 3, '0.58', '2021-04-21 14:00:00+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 23, 26319, 203, 0, 9.000, 26, 5.4, 11, 68.9, 1, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 3, 'UX-D161W', 3, 3, '0.58', '2021-04-21 16:00:00+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 10, 5808, 100, 0, 10.000, 26, 0.0, 11, 68.9, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UX-D161W', 3, 3, '0.58', '2021-04-21 12:17:55+02', 2400, 10000, 'Offline', 16000, 9392, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 20, 3329, 200, 0, 10.000, 26, 5.4, 11, 68.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UX-D161W', 3, 3, '0.58', '2021-04-21 13:00:00+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);
INSERT INTO public.hourly_data ("SerialNumber", "Name", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "SoftwareVersion", "CommunicatedTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "CommunicationConnectionStatus", "HeatingUnitAlarmTime", "InkAlarmTime", "InkFilterAlarmTime", "InkType", "MakeupFilterAlarmTime", "MakeupInkType", "MGVFilterAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "PumpAlarmTime", "RAirFilterAlarmTime", "RecoveryFilterAlarmTime") VALUES ('20210421', 'IJPUX', 20, 1000, 200, 0, 10.000, 26, 0.0, 11, 68.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UX-D161W', 3, 3, '0.58', '2021-04-21 12:41:17+02', 2400, 10000, 'Online', 16000, 1200, 2400, '1072K', 10000, 'S1018', 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 10000, 4800, 1200);


--
-- TOC entry 2722 (class 2606 OID 290737)
-- Name: Devices AK_Devices_SerialNumber; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "AK_Devices_SerialNumber" UNIQUE ("SerialNumber");


--
-- TOC entry 2720 (class 2606 OID 290722)
-- Name: Companies PK_Companies; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "PK_Companies" PRIMARY KEY ("Id");


--
-- TOC entry 2729 (class 2606 OID 290747)
-- Name: DeviceOwners PK_DeviceOwners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceOwners"
    ADD CONSTRAINT "PK_DeviceOwners" PRIMARY KEY ("Id");


--
-- TOC entry 2725 (class 2606 OID 290735)
-- Name: Devices PK_Devices; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "PK_Devices" PRIMARY KEY ("Id");


--
-- TOC entry 2717 (class 2606 OID 290708)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- TOC entry 2732 (class 2606 OID 290991)
-- Name: event_data PK_event_data; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_data
    ADD CONSTRAINT "PK_event_data" PRIMARY KEY ("SerialNumber", "CommunicatedTime");


--
-- TOC entry 2734 (class 2606 OID 290993)
-- Name: hourly_data PK_hourly_data; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hourly_data
    ADD CONSTRAINT "PK_hourly_data" PRIMARY KEY ("SerialNumber", "CommunicatedTime");


--
-- TOC entry 2718 (class 1259 OID 290784)
-- Name: IX_Companies_ParentId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Companies_ParentId" ON public."Companies" USING btree ("ParentId");


--
-- TOC entry 2726 (class 1259 OID 290785)
-- Name: IX_DeviceOwners_DeviceId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_DeviceOwners_DeviceId" ON public."DeviceOwners" USING btree ("DeviceId");


--
-- TOC entry 2727 (class 1259 OID 290786)
-- Name: IX_DeviceOwners_OwnerId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_DeviceOwners_OwnerId" ON public."DeviceOwners" USING btree ("OwnerId");


--
-- TOC entry 2723 (class 1259 OID 290787)
-- Name: IX_Devices_CompanyId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Devices_CompanyId" ON public."Devices" USING btree ("CompanyId");


--
-- TOC entry 2730 (class 1259 OID 290788)
-- Name: IX_event_data_DeviceId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_event_data_DeviceId" ON public.event_data USING btree ("DeviceId");


--
-- TOC entry 2735 (class 2606 OID 290723)
-- Name: Companies FK_Companies_Companies_ParentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "FK_Companies_Companies_ParentId" FOREIGN KEY ("ParentId") REFERENCES public."Companies"("Id") ON DELETE RESTRICT;


--
-- TOC entry 2738 (class 2606 OID 290753)
-- Name: DeviceOwners FK_DeviceOwners_Companies_OwnerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceOwners"
    ADD CONSTRAINT "FK_DeviceOwners_Companies_OwnerId" FOREIGN KEY ("OwnerId") REFERENCES public."Companies"("Id") ON DELETE CASCADE;


--
-- TOC entry 2737 (class 2606 OID 290748)
-- Name: DeviceOwners FK_DeviceOwners_Devices_DeviceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceOwners"
    ADD CONSTRAINT "FK_DeviceOwners_Devices_DeviceId" FOREIGN KEY ("DeviceId") REFERENCES public."Devices"("Id") ON DELETE CASCADE;


--
-- TOC entry 2736 (class 2606 OID 290738)
-- Name: Devices FK_Devices_Companies_CompanyId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "FK_Devices_Companies_CompanyId" FOREIGN KEY ("CompanyId") REFERENCES public."Companies"("Id") ON DELETE RESTRICT;


--
-- TOC entry 2739 (class 2606 OID 290766)
-- Name: event_data FK_event_data_Devices_DeviceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_data
    ADD CONSTRAINT "FK_event_data_Devices_DeviceId" FOREIGN KEY ("DeviceId") REFERENCES public."Devices"("Id") ON DELETE RESTRICT;


--
-- TOC entry 2740 (class 2606 OID 290994)
-- Name: hourly_data FK_hourly_data_Devices_SerialNumber; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hourly_data
    ADD CONSTRAINT "FK_hourly_data_Devices_SerialNumber" FOREIGN KEY ("SerialNumber") REFERENCES public."Devices"("SerialNumber") ON DELETE CASCADE;


-- Completed on 2021-04-30 09:28:20

--
-- PostgreSQL database dump complete
--

