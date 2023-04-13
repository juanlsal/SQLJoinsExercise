
 SELECT p.Name AS 'Product Name', c.Name AS 'Catergory Name'
 From categories AS c
 Inner Join products AS p
 ON c.CategoryID = p.CategoryID
 WHERE c.CategoryID = 1;

SELECT p.NAME, p.Price, r.Rating
FROM products AS p
JOIN reviews AS r
ON p.ProductID = r.productID
WHERE r.rating = 5;
 
SELECT SUM(s.Quantity) AS Total, e.FirstName AS "First Name", e.LastName AS "Last Name"
FROM sales AS s
Join employees AS e
ON s.EmployeeID = e.EmployeeID
Group By e.EmployeeID
ORDER BY Total DESC
Limit 2;

SELECT d.Name AS "Dept Name", c.Name AS "Category Name"
FROM departments as d
JOIN categories AS c
ON d.DepartmentID = c.DepartmentID
WHERE c.Name = "Appliances" or c.NAME = "Games";

SELECT * FROM products WHERE Products.NAME LIKE "%hotel California%";


SELECT p.Name, SUM(s.Quantity) AS "Total Sales", p.Price * SUM(s.Quantity) as "Total Price Sold"
from products AS P
Join sales As s
On p.ProductID = s.ProductID
where p.name like "%hotel california"
GROUP BY p.Name, p.Price;

Select p.Name, r.Reviewer, r.Rating , r.Comment
From products AS p
Join reviews AS r
ON p.ProductID = r.ProductID
Where r.Rating = 1 AND p.ProductID = 857;

Select e.EmployeeID as "Employee ID", e.FirstName as "First Name", e.LastName as "Last Name", p.Name, SUM(s.Quantity) as "Total Sold"
From sales as s
join employees as e
ON e.EmployeeID = s.EmployeeID
Join products as p
on p.ProductID = s.ProductID
Group By e.EmployeeID, p.ProductID;


