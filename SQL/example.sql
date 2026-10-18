select MAX(UnitPrice) AS maximum_price, CategoryID
from Products
Group BY CategoryID;