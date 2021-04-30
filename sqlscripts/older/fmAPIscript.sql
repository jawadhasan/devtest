CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);


DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE TABLE "AddressInfo" (
        "Country" text NULL,
        "City" text NULL,
        "Address" text NULL
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE TABLE "Companies" (
        "Id" uuid NOT NULL,
        "Name" text NOT NULL,
        "Type" integer NOT NULL,
        "ParentId" uuid NULL,
        "Email" text NULL,
        CONSTRAINT "PK_Companies" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_Companies_Companies_ParentId" FOREIGN KEY ("ParentId") REFERENCES "Companies" ("Id") ON DELETE RESTRICT
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE TABLE "Devices" (
        "Id" uuid NOT NULL,
        "Name" character varying(255) NOT NULL,
        "SerialNumber" text NOT NULL,
        "Location" text NULL,
        "Country" text NULL,
        "City" text NULL,
        "Type" text NULL,
        "Model" text NULL,
        "CompanyId" uuid NULL,
        CONSTRAINT "PK_Devices" PRIMARY KEY ("Id"),
        CONSTRAINT "AK_Devices_SerialNumber" UNIQUE ("SerialNumber"),
        CONSTRAINT "FK_Devices_Companies_CompanyId" FOREIGN KEY ("CompanyId") REFERENCES "Companies" ("Id") ON DELETE RESTRICT
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE TABLE "DeviceOwners" (
        "Id" uuid NOT NULL,
        "DeviceId" uuid NOT NULL,
        "OwnerId" uuid NOT NULL,
        "Relationship" integer NOT NULL,
        CONSTRAINT "PK_DeviceOwners" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_DeviceOwners_Devices_DeviceId" FOREIGN KEY ("DeviceId") REFERENCES "Devices" ("Id") ON DELETE CASCADE,
        CONSTRAINT "FK_DeviceOwners_Companies_OwnerId" FOREIGN KEY ("OwnerId") REFERENCES "Companies" ("Id") ON DELETE CASCADE
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE TABLE event_data (
        timestamp timestamp NOT NULL,
        serial_number Char(12) NOT NULL,
        operation_status text NULL,
        warning_status text NULL,
        "DeviceId" uuid NULL,
        CONSTRAINT "PK_event_data" PRIMARY KEY (serial_number, timestamp),
        CONSTRAINT "FK_event_data_Devices_DeviceId" FOREIGN KEY ("DeviceId") REFERENCES "Devices" ("Id") ON DELETE RESTRICT
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE TABLE periodic_data (
        timestamp timestamp NOT NULL,
        serial_number Char(12) NOT NULL,
        name text NULL,
        communication_connection_status boolean NOT NULL,
        ink_operating_time bigint NULL,
        print_count bigint NULL,
        cumulative_operation_time bigint NULL,
        ink_viscosity bigint NULL,
        ink_pressure double precision NULL,
        ambient_temperature bigint NULL,
        deflection_voltage double precision NULL,
        excitation_vref bigint NULL,
        excitation_frequency double precision NULL,
        ink_consumption bigint NULL,
        makeup_consumption bigint NULL,
        ink_filter_use_time bigint NULL,
        makeup_filter_use_time bigint NULL,
        recovery_filter_use_time bigint NULL,
        air_filter_use_time bigint NULL,
        circulation_filter_use_time bigint NULL,
        mgv_filter_use_time bigint NULL,
        pump_use_time bigint NULL,
        heating_unit_use_time bigint NULL,
        mv1_use_time bigint NULL,
        mv2_use_time bigint NULL,
        mv3_use_time bigint NULL,
        mv4_use_time bigint NULL,
        mv5_use_time bigint NULL,
        mv6_use_time bigint NULL,
        mv7_use_time bigint NULL,
        mv8_use_time bigint NULL,
        mv9_use_time bigint NULL,
        r_air_filter_use_time bigint NULL,
        type_name text NULL,
        ink_level smallint NOT NULL,
        makeup_level smallint NULL,
        ink_makeup_type bigint NULL,
        software_version text NULL,
        CONSTRAINT "PK_periodic_data" PRIMARY KEY (serial_number, timestamp),
        CONSTRAINT "FK_periodic_data_Devices_serial_number" FOREIGN KEY (serial_number) REFERENCES "Devices" ("SerialNumber") ON DELETE CASCADE
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    INSERT INTO "Companies" ("Id", "Email", "Name", "ParentId", "Type")
    VALUES ('874d30d6-076d-492f-bed3-3c85b8e00b1c', 'info@hitachi-eu.com', 'Hitachi EU', NULL, 1);
    INSERT INTO "Companies" ("Id", "Email", "Name", "ParentId", "Type")
    VALUES ('9cc7fd30-63ec-4ef1-a3c8-5cb11c9fdb72', 'info@nestle.com', 'Nestlé', NULL, 2);
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    INSERT INTO "Devices" ("Id", "City", "CompanyId", "Country", "Location", "Model", "Name", "SerialNumber", "Type")
    VALUES ('09335be1-b3d9-4d32-96fe-f65afc575e51', 'Dusseldorf', NULL, 'Germany', NULL, 'UX-D160W', 'Printer PLine 1', '06321803', NULL);
    INSERT INTO "Devices" ("Id", "City", "CompanyId", "Country", "Location", "Model", "Name", "SerialNumber", "Type")
    VALUES ('9ddea516-2cfa-44c4-bba5-c55e810a4eba', 'Berlin', NULL, 'Germany', NULL, 'UX-D140W', 'Printer PLine 2', '07321555', NULL);
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    INSERT INTO "DeviceOwners" ("Id", "DeviceId", "OwnerId", "Relationship")
    VALUES ('ebb8e41c-458e-4a01-a12a-03f039fa42df', '09335be1-b3d9-4d32-96fe-f65afc575e51', '9cc7fd30-63ec-4ef1-a3c8-5cb11c9fdb72', 0);
    INSERT INTO "DeviceOwners" ("Id", "DeviceId", "OwnerId", "Relationship")
    VALUES ('c2120d88-e34f-4787-a04b-6e227fe87d95', '9ddea516-2cfa-44c4-bba5-c55e810a4eba', '9cc7fd30-63ec-4ef1-a3c8-5cb11c9fdb72', 0);
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    INSERT INTO periodic_data (serial_number, timestamp, air_filter_use_time, ambient_temperature, circulation_filter_use_time, communication_connection_status, cumulative_operation_time, deflection_voltage, excitation_frequency, excitation_vref, heating_unit_use_time, ink_consumption, ink_filter_use_time, ink_makeup_type, ink_operating_time, ink_pressure, ink_level, ink_viscosity, makeup_consumption, makeup_filter_use_time, makeup_level, mgv_filter_use_time, mv1_use_time, mv2_use_time, mv3_use_time, mv4_use_time, mv5_use_time, mv6_use_time, mv7_use_time, mv8_use_time, mv9_use_time, name, print_count, pump_use_time, r_air_filter_use_time, recovery_filter_use_time, software_version, type_name)
    VALUES ('06321803', TIMESTAMP '2021-03-11 22:19:07.525689', 1, 2, 3, TRUE, 4, 1.7, 5.0, 6, 7, 8, 9, 10, 11, 12.0, 13, 14, 15, 16, 17, 18, 111, 112, 113, 114, 115, 116, 117, 118, 119, 'test', 200, 201, 202, 203, '1.0.0.0', 'UX-160W');
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE INDEX "IX_Companies_ParentId" ON "Companies" ("ParentId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE INDEX "IX_DeviceOwners_DeviceId" ON "DeviceOwners" ("DeviceId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE INDEX "IX_DeviceOwners_OwnerId" ON "DeviceOwners" ("OwnerId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE INDEX "IX_Devices_CompanyId" ON "Devices" ("CompanyId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    CREATE INDEX "IX_event_data_DeviceId" ON event_data ("DeviceId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210311221908_intialize') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20210311221908_intialize', '3.1.12');
    END IF;
END $$;
