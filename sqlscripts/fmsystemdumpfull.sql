--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2021-04-29 10:58:43 UTC

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
-- TOC entry 202 (class 1259 OID 16385)
-- Name: event_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_data (
    "Name" text,
    "CommunicatedTime" timestamp with time zone,
    "CommunicationConnectionStatus" text,
    "OperationStatus" text,
    "WarningStatus" text,
    "TypeName" text,
    "SerialNumber" text,
    "InkAlarmTime" integer
);


ALTER TABLE public.event_data OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16391)
-- Name: hourly_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hourly_data (
    "Name" text,
    "CommunicatedTime" timestamp with time zone,
    "CommunicationConnectionStatus" text,
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
    "SerialNumber" text,
    "InkResidualQuantityLevel" integer,
    "MakeupResidualQuantityLevel" integer,
    "InkType" text,
    "MakeupInkType" text,
    "SoftwareVersion" text,
    "InkAlarmTime" integer,
    "InkFilterAlarmTime" integer,
    "MakeupFilterAlarmTime" integer,
    "RecoveryFilterAlarmTime" integer,
    "AirFilterAlarmTime" integer,
    "CirculationFilterAlarmTime" integer,
    "MGVFilterAlarmTime" integer,
    "PumpAlarmTime" integer,
    "HeatingUnitAlarmTime" integer,
    "MV1AlarmTime" integer,
    "MV2AlarmTime" integer,
    "MV3AlarmTime" integer,
    "MV4AlarmTime" integer,
    "MV5AlarmTime" integer,
    "MV6AlarmTime" integer,
    "MV7AlarmTime" integer,
    "MV8AlarmTime" integer,
    "MV9AlarmTime" integer,
    "RAirFilterAlarmTime" integer
);


ALTER TABLE public.hourly_data OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16397)
-- Name: test_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_data (
    name text,
    communicated_time timestamp with time zone,
    "excitation_v_ref." text
);


ALTER TABLE public.test_data OWNER TO postgres;

--
-- TOC entry 3691 (class 0 OID 16385)
-- Dependencies: 202
-- Data for Name: event_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-21 10:42:00+00', 'Online', 'Deflection Voltage Fault', 'Ink Pressure Low', 'UX-D161W', '20210421', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-22 09:01:00+00', 'Online', 'Deflection Voltage Fault', 'Ink Pressure Low', 'UX-D161W', '20210421', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-21 17:15:00+00', 'Online', 'Deflection Voltage Leakage', 'Print Controller Cooling Fan Fault', 'UX-D161W', '20210421', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-21 17:15:00+00', 'Online', 'Deflection Voltage Leakage', 'Print Controller Cooling Fan Fault', 'UX-D161W', '20210421', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-23 10:00:00+00', 'Online', 'Deflection Voltage Fault', 'Ink Pressure Low', 'UX-D161W', '20210421', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-26 11:37:00+00', 'Online', 'Deflection Voltage Fault', 'Ink Pressure Low', 'UX-D161W', '20210330', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-26 15:50:00+00', 'Online', 'Deflection Voltage Fault', 'Ink Pressure Low', 'UX-D161W', '20210330', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-26 15:55:00+00', 'Online', 'Deflection Voltage Leakage', 'Internal Communication Error M', 'UX-D161W', '20210330', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-26 16:22:00+00', 'Online', 'Ink Replenishment Time-out', 'Main Ink Tank Too Full', 'UX-D161W', '20210330', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-26 16:23:00+00', 'Online', 'Main Ink Tank Too Full', 'Ink Pressure Low', 'UX-D161W', '20210330', 1200);
INSERT INTO public.event_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "OperationStatus", "WarningStatus", "TypeName", "SerialNumber", "InkAlarmTime") VALUES ('IJPUX', '2021-04-26 16:28:00+00', 'Online', 'Main Ink Tank Too Full', 'Ink Pressure Low', 'UX-D161W', '20210330', 1200);


--
-- TOC entry 3692 (class 0 OID 16391)
-- Dependencies: 203
-- Data for Name: hourly_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 16:00:00+00', 'Online', 25, 41646, 205, 0, 9.000, 26, 5.4, 11, 68.9, 2, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 5, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 17:00:00+00', 'Online', 26, 49310, 206, 0, 9.000, 26, 5.4, 11, 68.9, 3, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 6, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 15:00:00+00', 'Online', 24, 33983, 204, 0, 9.000, 26, 5.4, 11, 68.9, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 4, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 13:00:00+00', 'Online', 22, 18656, 202, 0, 9.000, 26, 5.4, 11, 68.9, 1, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 2, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 12:00:00+00', 'Online', 21, 10992, 201, 0, 9.000, 26, 5.4, 11, 68.9, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 14:00:00+00', 'Online', 23, 26319, 203, 0, 9.000, 26, 5.4, 11, 68.9, 1, 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 3, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 10:17:55+00', 'Offline', 10, 5808, 100, 0, 10.000, 26, 0.0, 11, 68.9, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 9392, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 11:00:00+00', 'Online', 20, 3329, 200, 0, 10.000, 26, 5.4, 11, 68.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 10:41:17+00', 'Online', 20, 1000, 200, 0, 10.000, 26, 0.0, 11, 68.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UX-D161W', '20210421', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);
INSERT INTO public.hourly_data ("Name", "CommunicatedTime", "CommunicationConnectionStatus", "InkOperatingTime", "PrintCount", "CumulativeOperationTime", "InkViscosity", "InkPressure", "AmbientTemperature", "DeflectionVoltage", "ExcitationVref", "ExcitationFrequency", "InkConsumption", "MakeupConsumption", "InkFilterUseTime", "MakeupFilterUseTime", "RecoveryFilterUseTime", "AirFilterUseTime", "CirculationFilterUseTime", "MGVFilterUseTime", "PumpUseTime", "HeatingUnitUseTime", "MV1UseTime", "MV2UseTime", "MV3UseTime", "MV4UseTime", "MV5UseTime", "MV6UseTime", "MV7UseTime", "MV8UseTime", "MV9UseTime", "RAirFilterUseTime", "TypeName", "SerialNumber", "InkResidualQuantityLevel", "MakeupResidualQuantityLevel", "InkType", "MakeupInkType", "SoftwareVersion", "InkAlarmTime", "InkFilterAlarmTime", "MakeupFilterAlarmTime", "RecoveryFilterAlarmTime", "AirFilterAlarmTime", "CirculationFilterAlarmTime", "MGVFilterAlarmTime", "PumpAlarmTime", "HeatingUnitAlarmTime", "MV1AlarmTime", "MV2AlarmTime", "MV3AlarmTime", "MV4AlarmTime", "MV5AlarmTime", "MV6AlarmTime", "MV7AlarmTime", "MV8AlarmTime", "MV9AlarmTime", "RAirFilterAlarmTime") VALUES ('IJPUX', '2021-04-21 10:35:35+00', 'Offline', 0, 0, 0, 0, 10.000, 26, 0.0, 11, 68.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UX-D161W', '0', 3, 3, '1072K', 'S1018', '0.58', 1200, 2400, 10000, 1200, 2400, 10000, 16000, 10000, 16000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 16000, 4800);


--
-- TOC entry 3693 (class 0 OID 16397)
-- Dependencies: 204
-- Data for Name: test_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.test_data (name, communicated_time, "excitation_v_ref.") VALUES ('IJPUX', '2021-03-22 18:56:00+00', 'Online');


-- Completed on 2021-04-29 10:58:54 UTC

--
-- PostgreSQL database dump complete
--
