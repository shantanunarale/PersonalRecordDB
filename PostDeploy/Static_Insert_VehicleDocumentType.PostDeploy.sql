-- This file contains SQL statements that will be executed after the build script.
INSERT INTO dbo.VehicleDocumentType(VehicleDocumentType, RequireExpirationReminder, VehicleDocumentDescription)
VALUES ('Insurance', 1, 'Vehicle Insurance.'),
        ('RC', 0, 'Vehicle Registration Certificate.'),
        ('PUC', 1, 'Pollution Under Control Certificate.'),
        ('Invoice', 0, 'Vehicle Invoice.'),
        ('Misc NR', 0, 'Non Reminder Miscellaneous Category.'),
        ('Misc R', 1, 'Reminder Miscellaneous Category.')