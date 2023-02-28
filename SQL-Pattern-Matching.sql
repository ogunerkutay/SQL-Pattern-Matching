--Like: This is a keyword used in SQL to filter data based on a pattern match. The pattern can contain wildcard characters that can represent any character or set of characters.

--Example 1: This query selects all the rows from the Customers table where the ContactName column contains the letters 'na' anywhere in the name. The '%' character is a wildcard that can match any number of characters.

Select * From Customers
Where ContactName like '%na%'

--Example 2: This query selects all the rows from the Customers table where the ContactName column starts with any character, followed by the letter 'd', and then followed by any number of characters. The '_' character is a wildcard that can match any single character.

Select * From Customers
Where ContactName like '_d%'

--Example 3: This query selects all the rows from the Customers table where the ContactName column starts with any character, followed by the letters 'au', then followed by any single character, and then followed by the letters 'a' and any number of characters.

Select * From Customers
Where ContactName like '_au_a%'

--Example 4: This query selects all the rows from the Customers table where the ContactName column starts with any of the letters 'A' through 'E'. The square brackets indicate a set of characters to match.

Select * From Customers
Where ContactName like '[A-E]%'
order by ContactName

--Example 5: This query is similar to Example 4 but uses a different syntax to match a set of characters.

Select * From Customers
Where ContactName like '[ABCDE]%'
order by ContactName

--Example 6: This query selects all the rows from the Customers table where the ContactName column does not start with any of the letters 'A' through 'T'. The '^' character negates the set of characters to match.

Select * From Customers
Where ContactName like '[^A-T]%'
order by ContactName

--Example 7: This query selects all the rows from the Customers table where the ContactName column starts with any single character, followed by a character in the set 'A' through 'K', followed by any single character, and then followed by any number of characters.

Select * From Customers
Where ContactName like '_[A-K]_[C-E]%'
order by ContactName

--Example 8: This query selects all the rows from the Orders table where the ShipCity column ends with the letters 'on'.

SELECT * FROM Orders
WHERE ShipCity LIKE '%on'

--Example 9: This query selects all the rows from the Products table where the ProductName column starts with 'Ch' and ends with 'ocolate'.

SELECT * FROM Products
WHERE ProductName LIKE 'Ch%ocolate'

--Example 10: This query selects all the rows from the Employees table where the LastName column starts with 'Smi' and the FirstName column ends with 'th'.

SELECT * FROM Employees
WHERE LastName LIKE 'Smi%' AND FirstName LIKE '%th'

--Example 11: This query selects all the rows from the Customers table where the ContactTitle column contains the word 'Manager' anywhere in the title.

SELECT * FROM Customers
WHERE ContactTitle LIKE '%Manager%'

--Example 12: This query selects all the rows from the Customers table where the Country column starts with 'U' and the City column contains the letters 'on' anywhere in the name.

SELECT * FROM Customers
WHERE Country LIKE 'U%' AND City LIKE '%on%'