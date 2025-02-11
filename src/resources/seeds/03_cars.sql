INSERT INTO cars (
        licencePlate,
        kilometers,
        addressId,
        estMaintainance,
        lastUpdate,
        driverId,
        inMaintenance,
        lastMaintainance,
        createdAt,
        updatedAt
    )
VALUES (
        'ABC1234',
        '50000',
        5,
        '2024-03-15',
        CURRENT_TIMESTAMP,
        1,
        false,
        '2023-12-15',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        'XYZ9876',
        '35000',
        6,
        '2024-02-20',
        CURRENT_TIMESTAMP,
        2,
        false,
        '2023-11-30',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        'DEF5678',
        '62000',
        7,
        '2024-04-01',
        CURRENT_TIMESTAMP,
        NULL,
        true,
        '2024-01-10',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );