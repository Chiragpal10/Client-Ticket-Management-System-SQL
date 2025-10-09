INSERT INTO Clients (ClientName, ContactEmail, ContactNumber, City)
VALUES
('Apex Infotech Pvt Ltd', 'support@apexinfotech.com', '9876543210', 'New Delhi'),
('Skyline Solutions', 'info@skylinesoft.in', '9898989898', 'Mumbai'),
('NextGen Systems', 'contact@nextgensys.in', '9090909090', 'Bangalore'),
('TechNova India', 'help@technova.in', '9812312312', 'Pune'),
('FutureTech Pvt Ltd', 'support@futuretech.com', '9123456789', 'Hyderabad');

INSERT INTO Engineers (EngineerName, Department)
VALUES
('Rahul Mehta', 'Remote Support'),
('Priya Sharma', 'Database Management'),
('Kunal Verma', 'Software Implementation'),
('Ananya Singh', 'Technical Support'),
('Vivek Patel', 'Customer Success');

INSERT INTO Tickets (ClientID, EngineerID, IssueDescription, IssueDate, Status, ResolutionDate)
VALUES
(1, 1, 'Database connection failed during installation.', '2025-10-01', 'Resolved', '2025-10-02'),
(2, 3, 'Software not syncing with attendance device.', '2025-10-03', 'In Progress', NULL),
(3, 2, 'Error while exporting client reports.', '2025-10-05', 'Open', NULL),
(4, 4, 'Login issue for admin panel after update.', '2025-10-04', 'Resolved', '2025-10-05'),
(5, 5, 'Need help with initial setup and configuration.', '2025-10-06', 'In Progress', NULL);

INSERT INTO ActivityLog (TicketID, ActionTaken, ActionDate)
VALUES
(1, 'Checked connection string and fixed SQL credentials.', '2025-10-01 14:30:00'),
(1, 'Verified successful data connection.', '2025-10-02 09:10:00'),
(2, 'Analyzed device communication logs.', '2025-10-03 15:00:00'),
(4, 'Reinstalled patch and reset admin credentials.', '2025-10-04 16:45:00'),
(5, 'Guided client for initial configuration steps.', '2025-10-06 10:15:00');
