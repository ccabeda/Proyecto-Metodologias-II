| empresa cliente cliente2 cliente3 servicio servicio2 resultado listaoOrdenada diccionario preciosiva tiposervicio precioservicio|

"Crear empresa"
empresa := Empresa crearEmpresaNom: 'Clinica Central'.

"Agregar cliente a la empresa"
cliente := Cliente crearClienteNom: 'Juan Perez' dni: '12345678' legajo: '001' id: '1'.
empresa agregarCliente: cliente.
cliente2 := Cliente crearClienteNom: 'Agustin Cabeda' dni: '22345678' legajo: '002' id: '2'.
empresa agregarCliente: cliente2.
cliente3 := Cliente crearClienteNom: 'Lamin Yamal' dni: '32345678' legajo: '003' id: '3'.
empresa agregarCliente: cliente3.


"Agregar servicio a la empresa"
servicio := Servicio crearServicioId: '1' nombre: 'Consulta' descripcion: 'Consulta general' tipo: 'Consulta' precio: 1500.
empresa agregarServicio: servicio.
servicio := Servicio crearServicioId: '2' nombre: 'Seguridad' descripcion: 'Seguridad al sistema' tipo: 'Seguridad' precio: 5500.
empresa agregarServicio: servicio.


"Simular la venta de un servicio"
resultado := empresa venderServicioIdCliente: '1' servicioId: '1'.
resultado inspect

"Prueba  de lista ordenada"
listaOrdenada := empresa clientesOrdenadosPorNombre.
listaOrdenada inspect.

"Prueba Diccionario"
diccionario := empresa crearDiccionarioServicios.
diccionario inspect.

"ver precios de servicios con iva"
preciosiva := empresa preciosDeServiciosConIva.
preciosiva inspect.

"filtrar servicio por tipo"
tiposervicio := empresa filtroTipoServicio:  'Consulta'.
tiposervicio inspect.

"filtrar por precio"
precioservicio := empresa filtroPrecioServicio: 10000.
precioservicio inspect.a FlipperInspector