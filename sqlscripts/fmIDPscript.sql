﻿CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);


DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE TABLE "AspNetRoles" (
        "Id" text NOT NULL,
        "ConcurrencyStamp" text NULL,
        "Name" character varying(256) NULL,
        "NormalizedName" character varying(256) NULL,
        CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id")
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE TABLE "AspNetUsers" (
        "Id" text NOT NULL,
        "AccessFailedCount" integer NOT NULL,
        "ConcurrencyStamp" text NULL,
        "Email" character varying(256) NULL,
        "EmailConfirmed" boolean NOT NULL,
        "LockoutEnabled" boolean NOT NULL,
        "LockoutEnd" timestamp with time zone NULL,
        "NormalizedEmail" character varying(256) NULL,
        "NormalizedUserName" character varying(256) NULL,
        "PasswordHash" text NULL,
        "PhoneNumber" text NULL,
        "PhoneNumberConfirmed" boolean NOT NULL,
        "SecurityStamp" text NULL,
        "TwoFactorEnabled" boolean NOT NULL,
        "UserName" character varying(256) NULL,
        CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id")
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE TABLE "AspNetRoleClaims" (
        "Id" integer NOT NULL,
        "ClaimType" text NULL,
        "ClaimValue" text NULL,
        "RoleId" text NOT NULL,
        CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles" ("Id") ON DELETE CASCADE
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE TABLE "AspNetUserClaims" (
        "Id" integer NOT NULL,
        "ClaimType" text NULL,
        "ClaimValue" text NULL,
        "UserId" text NOT NULL,
        CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id") ON DELETE CASCADE
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE TABLE "AspNetUserLogins" (
        "LoginProvider" text NOT NULL,
        "ProviderKey" text NOT NULL,
        "ProviderDisplayName" text NULL,
        "UserId" text NOT NULL,
        CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey"),
        CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id") ON DELETE CASCADE
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE TABLE "AspNetUserRoles" (
        "UserId" text NOT NULL,
        "RoleId" text NOT NULL,
        CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId"),
        CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles" ("Id") ON DELETE CASCADE,
        CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id") ON DELETE CASCADE
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE TABLE "AspNetUserTokens" (
        "UserId" text NOT NULL,
        "LoginProvider" text NOT NULL,
        "Name" text NOT NULL,
        "Value" text NULL,
        CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name"),
        CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id") ON DELETE CASCADE
    );
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON "AspNetRoleClaims" ("RoleId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE UNIQUE INDEX "RoleNameIndex" ON "AspNetRoles" ("NormalizedName");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE INDEX "IX_AspNetUserClaims_UserId" ON "AspNetUserClaims" ("UserId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE INDEX "IX_AspNetUserLogins_UserId" ON "AspNetUserLogins" ("UserId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE INDEX "IX_AspNetUserRoles_RoleId" ON "AspNetUserRoles" ("RoleId");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE INDEX "EmailIndex" ON "AspNetUsers" ("NormalizedEmail");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    CREATE UNIQUE INDEX "UserNameIndex" ON "AspNetUsers" ("NormalizedUserName");
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20180109192453_CreateIdentitySchema') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20180109192453_CreateIdentitySchema', '3.1.11');
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210216202226_CompanyTree') THEN
    ALTER TABLE "AspNetUserClaims" ALTER COLUMN "Id" TYPE integer;
    ALTER TABLE "AspNetUserClaims" ALTER COLUMN "Id" SET NOT NULL;
    ALTER TABLE "AspNetUserClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210216202226_CompanyTree') THEN
    ALTER TABLE "AspNetRoleClaims" ALTER COLUMN "Id" TYPE integer;
    ALTER TABLE "AspNetRoleClaims" ALTER COLUMN "Id" SET NOT NULL;
    ALTER TABLE "AspNetRoleClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY;
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20210216202226_CompanyTree') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20210216202226_CompanyTree', '3.1.11');
    END IF;
END $$;
