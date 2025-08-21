SELECT 
    p.First_Name,
    p.Last_Name,
    a.City,
    a.State
FROM 
    Person p
LEFT JOIN 
    Address a
ON 
    p.Person_Id = a.Person_Id;