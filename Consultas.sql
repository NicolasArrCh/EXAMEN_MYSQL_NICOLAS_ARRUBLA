Select c.CustomerId, c.FirstName, i.total
from Invoice i 
Join Customer c on c.CustomerId = i.InvoiceId
Order by i.total DESC;

SELECT t.UnitPrice, a.Name 
FROM Track t
JOIN Artist a on ArtistId = TrackId
Order by name DESC;

SELECT i.total, i.BillingCountry, t.name
from Invoice i
JOIN Track t on t.trackid = i.InvoiceId
ORDER by total DESC;

SELECT c.firstname, c.lastname, a.Title, il.UnitPrice
from Customer c 
join Album a on a.AlbumId = c.customerid
JOIN InvoiceLine il on il.InvoiceLineId = c.CustomerId 
order by il.InvoiceLineId DESC;

select i.billingcountry, i.total
from Invoice i 
where i.total = (select avg(Total))
order by BillingCountry DESC
limit 3;

SELECT g.name, i.Total 
from Genre g
join Invoice i on g.GenreId = i.InvoiceId
ORDER BY g.name ASC;

-- Encuentra los cinco empleados que realizaron más ventas de Rock.
select e.FirstName, g.name, t.Name
from Employee e
join Genre g on e.EmployeeId = g.GenreId
join Track t on e.EmployeeId = t.TrackId 
WHERE g.name = "Rock"
LIMIT 5;

-- Encuentra el cliente que ha realizado la compra más cara en el último año.
SELECT i.invoiceid, c.firstname
from customer
join invoice i on c.customerid = i.invoiceid



-- TotalGastoCliente(ClienteID, Anio): Calcula el gasto total de un cliente en un año específico.
DELIMITER $$
CREATE FUNCTION TotalGastoCliente(ClienteId, Anio) RETURNS ClienteId
BEGIN
	
    RETURN valor;
END$$
DELIMITER ;


CREATE EVENT recordatorio_fin_ano
ON SCHEDULE AT '2026-01-01 12:00:00'
DO
UPDATE Employee SET salario = salario + 100 WHERE puesto = 'Analista';

CREATE EVENT ReporteVentasMensual
ON SCHEDULE AT 1 MONTH
DO
	UPDATE Invoice set venta = 