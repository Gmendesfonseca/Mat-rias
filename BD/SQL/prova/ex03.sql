    CREATE TABLE client (
        client_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        phone VARCHAR(15),
        email VARCHAR(255)
    );

    CREATE TABLE vehicle (
        vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
        model VARCHAR(255) NOT NULL,
        brand VARCHAR(255) NOT NULL,
        year INT NOT NULL,
        client_id INT NOT NULL,
        FOREIGN KEY (client_id) REFERENCES client(client_id)
    );

    CREATE TABLE service (
        service_id INT AUTO_INCREMENT PRIMARY KEY,
        description VARCHAR(255) NOT NULL,
        price DECIMAL(10, 2) NOT NULL,
        service_date DATE NOT NULL,
        vehicle_id INT NOT NULL,
        FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id)
    );
