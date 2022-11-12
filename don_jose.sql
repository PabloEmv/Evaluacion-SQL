
create SCHEMA IF NOT EXISTS don_jose;

CREATE TABLE don_jose.proveedores (
    proveedorID INTEGER AUTO_INCREMENT,
    nombreProveedor VARCHAR(40) NOT NULL,
    fechaEntrega DATE NOT NULL,
    tipoProducto VARCHAR(30)NOT NULL,
    cantidad INT NOT NULL,
    totalCompra INT NOT NULL,
    PRIMARY KEY (proveedorID)
);

CREATE TABLE don_jose.ventas (
    ventaID INTEGER AUTO_INCREMENT,
    fechaVenta DATE NOT NULL,
    totalVenta INT NOT NULL,
    PRIMARY KEY (ventaID)
);

-- tabas con foreign keys

CREATE TABLE don_jose.productos (
    productoID INTEGER AUTO_INCREMENT,
    nombreProducto VARCHAR(30) NOT NULL,
    stock INTEGER NOT NULL,
    proveedorID INTEGER NOT NULL,
    PRIMARY KEY (productoID),
    CONSTRAINT FK_Proveedor FOREIGN KEY (proveedorID) REFERENCES proveedores(proveedorID)
);


CREATE TABLE don_jose.productos_ventas (
    productoVentaID INTEGER AUTO_INCREMENT,
    productoID INT NOT NULL,
    ventaID INT NOT NULL,
    PRIMARY KEY (productoVentaID),
    CONSTRAINT FK_ProductoV FOREIGN KEY (productoID) REFERENCES productos(productoID),
    CONSTRAINT FK_Venta FOREIGN KEY (ventaID) REFERENCES ventas(ventaID)
);

