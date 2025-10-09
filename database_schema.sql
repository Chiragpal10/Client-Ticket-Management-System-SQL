CREATE TABLE Clients (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    ClientName VARCHAR(100),
    ContactEmail VARCHAR(100),
    ContactNumber VARCHAR(15),
    City VARCHAR(50)
);

CREATE TABLE Engineers (
    EngineerID INT PRIMARY KEY AUTO_INCREMENT,
    EngineerName VARCHAR(100),
    Department VARCHAR(50)
);

CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    EngineerID INT,
    IssueDescription TEXT,
    IssueDate DATE,
    Status VARCHAR(20),
    ResolutionDate DATE,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (EngineerID) REFERENCES Engineers(EngineerID)
);

CREATE TABLE ActivityLog (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    TicketID INT,
    ActionTaken VARCHAR(100),
    ActionDate DATETIME,
    FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID)
);
