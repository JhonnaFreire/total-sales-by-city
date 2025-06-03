SELECT 
    c.ciudad,
    CONCAT('$', FORMAT(SUM(v.total_venta), 0), ' COP') AS ventas_totales
FROM 
    clientes c
JOIN 
    ventas v ON c.id = v.cliente_id
GROUP BY 
    c.ciudad
ORDER BY 
    ventas_totales DESC;
