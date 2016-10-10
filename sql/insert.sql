\c company;

INSERT INTO department(name, localization) VALUES
('Desarrollo de Software', 'El coyolar'),
('Analisis Sistema', 'Guadalupe'),
('Contabilidad', 'Subtiava'),
('Ventas', 'San Felipe');

INSERT INTO employee(code_c, name, first_name, last_name, age, occupation, address, date_activated, salary, commission, id_department) VALUES
('281-160483-0005F','Hector','Rocha','Vargas',27,'Vendedor','Leon','1983/05/12',12000,0,4),
('281-040483-0056P','Julio','López','Hernandez',27,'Analista','Chinandega','1982/07/14',13000,1500,2),
('081-130678-0004S','Jose','Esquivel','',31,'Director','Juigalpa','1981/06/05',16700,1200,3),
('281-160473-0009Q','Carmen','Delgado','',37,'Vendedor','Leon','1983/03/02',13400,0,4),
('281-160493-0005F','Luis','Castillo','Montes',17,'Vendedor','Masaya','1982/08/12',16309,1000,4),
('281-240784-0004Y','Alfonso','Esquivel','Leonel',26,'Presidente','Nagarote','1981/09/12',15000,0,3),
('281-161277-008R','Luis','Perez','',32,'Empleado','Managua','1980/03/02',16890,0,1);
