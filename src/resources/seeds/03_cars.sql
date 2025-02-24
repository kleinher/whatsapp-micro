CREATE TABLE IF NOT EXISTS cars (
    id SERIAL PRIMARY KEY,
    licence_plate VARCHAR(20) NOT NULL,
    kilometers INTEGER NOT NULL,
    address_id INTEGER REFERENCES addresses(id),
    est_maintainance DATE,
    last_update TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    driver_id INTEGER REFERENCES drivers(id),
    in_maintenance BOOLEAN DEFAULT false,
    last_maintainance DATE,
    reminder_sent BOOLEAN DEFAULT false,
    reminder_sent_date TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO cars (
        licence_plate,
        kilometers,
        address_id,
        est_maintainance,
        last_update,
        driver_id,
        in_maintenance,
        last_maintainance,
        reminder_sent,
        reminder_sent_date,
        created_at,
        updated_at
    )
VALUES (
        'ABC1234',
        50000,
        5,
        '2025-05-15',
        CURRENT_TIMESTAMP,
        1,
        false,
        '2023-12-15',
        true,
        '2023-12-15',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        'XYZ9876',
        35000,
        6,
        '2025-04-20',
        CURRENT_TIMESTAMP,
        2,
        false,
        '2023-11-30',
        false,
        NULL,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        'DEF5678',
        62000,
        7,
        '2025-07-01',
        CURRENT_TIMESTAMP,
        NULL,
        true,
        '2024-01-10',
        false,
        NULL,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );