-- List of open or in-progress tickets
SELECT t.TicketID, c.ClientName, e.EngineerName, t.Status, t.IssueDescription
FROM Tickets t
JOIN Clients c ON t.ClientID = c.ClientID
JOIN Engineers e ON t.EngineerID = e.EngineerID
WHERE t.Status IN ('Open', 'In Progress');

-- Monthly resolved ticket count
SELECT MONTH(ResolutionDate) AS Month, COUNT(*) AS ResolvedTickets
FROM Tickets
WHERE Status = 'Resolved'
GROUP BY MONTH(ResolutionDate);

-- Tickets resolved per engineer
SELECT e.EngineerName, COUNT(*) AS ResolvedTickets
FROM Tickets t
JOIN Engineers e ON t.EngineerID = e.EngineerID
WHERE t.Status = 'Resolved'
GROUP BY e.EngineerName;

-- Average resolution time for all resolved tickets
SELECT ROUND(AVG(DATEDIFF(ResolutionDate, IssueDate)), 2) AS AvgResolutionDays
FROM Tickets
WHERE ResolutionDate IS NOT NULL;

-- Activity log for a specific client
SELECT c.ClientName, t.TicketID, a.ActionTaken, a.ActionDate
FROM ActivityLog a
JOIN Tickets t ON a.TicketID = t.TicketID
JOIN Clients c ON t.ClientID = c.ClientID
WHERE c.ClientName = 'Apex Infotech Pvt Ltd';
