CREATE TABLE [dbo].[PersonalVehicles] (
    [PersonalVehicleId]         INT           IDENTITY (1, 1) NOT NULL,
    [MemberId]                  INT           NULL,
    [VehicleRegistrationNumber] VARCHAR (50)  MASKED WITH (FUNCTION = 'default()') NOT NULL,
    [EngineNumber]              VARCHAR (50)  MASKED WITH (FUNCTION = 'default()') NOT NULL,
    [ChasisNumber]              VARCHAR (50)  MASKED WITH (FUNCTION = 'default()') NOT NULL,
    [IsElectric]                BIT           NULL,
    [VehicleImage]              VARCHAR (200) NULL,
    [VehicleType]               VARCHAR(20)   NOT NULL,
    PRIMARY KEY CLUSTERED ([PersonalVehicleId] ASC),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Members] ([MemberId]),
    CHECK ([VehicleType] IN ('Car', 'Scooter', 'Bike', 'Cycle', 'Misc')),
    UNIQUE NONCLUSTERED ([ChasisNumber] ASC),
    UNIQUE NONCLUSTERED ([EngineNumber] ASC),
    UNIQUE NONCLUSTERED ([VehicleRegistrationNumber] ASC)
);


GO

