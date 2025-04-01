CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(255) NOT NULL,              
    email VARCHAR(255) NOT NULL,             
    role VARCHAR(50) NOT NULL                
);

CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,   
    event_name VARCHAR(255) NOT NULL,         
    event_description TEXT,                   
    creation_date DATETIME NOT NULL,         
    deadline DATETIME NOT NULL,              
    creator_id INT,                          
    FOREIGN KEY (creator_id) REFERENCES users(user_id)
);

CREATE TABLE participations (
    participation_id INT AUTO_INCREMENT PRIMARY KEY,  
    user_id INT,                                      
    event_id INT,                                     
    participation_status VARCHAR(50),                 
    FOREIGN KEY (user_id) REFERENCES users(user_id),  
    FOREIGN KEY (event_id) REFERENCES events(event_id) 
);

CREATE TABLE input_fields (
    input_id INT AUTO_INCREMENT PRIMARY KEY,  
    event_id INT,                             
    input_name VARCHAR(255) NOT NULL,         
    input_type VARCHAR(50) NOT NULL,          
    FOREIGN KEY (event_id) REFERENCES events(event_id) 
);

CREATE TABLE responses (
    response_id INT AUTO_INCREMENT PRIMARY KEY,   
    participation_id INT,                        
    input_id INT,                                 
    response_value VARCHAR(255) NOT NULL,         
    FOREIGN KEY (participation_id) REFERENCES participations(participation_id), 
    FOREIGN KEY (input_id) REFERENCES input_fields(input_id) 
);
