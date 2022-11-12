-- agregando datos a proveedor

INSERT INTO don_jose.proveedores (nombreProveedor, fechaEntrega, tipoProducto, cantidad, totalCompra) VALUES(
    'don Pepe', '2021-12-01', 'snacks', 100, 60000
);

INSERT INTO don_jose.proveedores (nombreProveedor, fechaEntrega, tipoProducto, cantidad, totalCompra) VALUES(
    'don Javier', '2022-04-03', 'dulces', 100, 40000
);

INSERT INTO don_jose.proveedores (nombreProveedor, fechaEntrega, tipoProducto, cantidad, totalCompra) VALUES(
    'don Marco', '2022-06-03', 'helados', 30, 30000
);

INSERT INTO don_jose.proveedores (nombreProveedor, fechaEntrega, tipoProducto, cantidad, totalCompra) VALUES(
    'don Pepe', '2022-08-05', 'snacks', 100, 60000
);

INSERT INTO don_jose.proveedores (nombreProveedor, fechaEntrega, tipoProducto, cantidad, totalCompra) VALUES(
    'doña Juanita', '2022-11-02', 'articulos de limpieza', 30, 50000
);

INSERT INTO don_jose.proveedores (nombreProveedor, fechaEntrega, tipoProducto, cantidad, totalCompra) VALUES(
    'doña Elisa', '2022-12-04', 'Bebidas', 50, 125000
);

-- agreagando datos a productos

INSERT INTO don_jose.productos (nombreProducto, stock, proveedorID) VALUES(
    'papas fritas', 40, 4
);
INSERT INTO don_jose.productos (nombreProducto, stock, proveedorID) VALUES(
    'Lenguix', 10, 3
);
INSERT INTO don_jose.productos (nombreProducto, stock, proveedorID) VALUES(
    'Escobas', 10, 5
);
INSERT INTO don_jose.productos (nombreProducto, stock, proveedorID) VALUES(
    'coca-cola', 25, 6
);
INSERT INTO don_jose.productos (nombreProducto, stock, proveedorID) VALUES(
    'manqueque', 50, 2
);

-- agregando ventas (agrego cifras grandes para que no sea tan tedioso xd)

INSERT INTO don_jose.ventas (fechaVenta, totalVenta) VALUES(
    '2022-03-04', 300000
);
INSERT INTO don_jose.ventas (fechaVenta, totalVenta) VALUES(
    '2022-03-15', 200000
);
INSERT INTO don_jose.ventas (fechaVenta, totalVenta) VALUES(
    '2022-04-04', 350000
);
INSERT INTO don_jose.ventas (fechaVenta, totalVenta) VALUES(
    '2022-06-07', 800000
);
INSERT INTO don_jose.ventas (fechaVenta, totalVenta) VALUES(
    '2022-10-22', 1200000
);


-- agragando datos a tabla relacional

INSERT INTO don_jose.productos_ventas (productoID, ventaID) VALUES(
    2, 1
);
INSERT INTO don_jose.productos_ventas (productoID, ventaID) VALUES(
    3, 1
);
INSERT INTO don_jose.productos_ventas (productoID, ventaID) VALUES(
    1, 2
);
INSERT INTO don_jose.productos_ventas (productoID, ventaID) VALUES(
    14, 3
);
INSERT INTO don_jose.productos_ventas (productoID, ventaID) VALUES(
    6, 4
);
INSERT INTO don_jose.productos_ventas (productoID, ventaID) VALUES(
    5, 5
);

-- consultas join

SELECT don_jose.productos.nombreProducto, don_jose.proveedores.nombreProveedor
from don_jose.productos
INNER JOIN don_jose.proveedores ON productos.proveedorID = proveedores.proveedorID

-- calcular ganancias anuales


SELECT SUM(totalVenta)
FROM don_jose.ventas
where fechaVenta BETWEEN '2022-01-01' and '2022-12-31';

SELECT SUM(totalCompra)
from don_jose.proveedores
where fechaEntrega BETWEEN '2022-01-01' and '2022-12-31';

-- que reste a manito porque no se me opcurrió como hacer la resta sjdjsd





