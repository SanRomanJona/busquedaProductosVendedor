Forma de utilizar:
En la terminal ejecutar "user@host:~$ ./datosProductosVendedor.sh". 

Dentro del archivo datosProductosVendedor.sh se encuentra el usuario en ña variable de entrada "user_id", por default busca el user_id: 179571326

Se crean dos archivos como output:
1 - DatosGeneral.json.json: El cual contiene el json devuelto por la consulta de datos del vendedor.
2 - Log.txt: Contiene todos todos los productos de un vendedor con los titulos "id" de producto, "Titulo" del producto, "categoria" donde se encuentra publicado y "nombre" de la categoría.

Ejemplo formato de salida.
  Id                              Titulo                   Categoria    Nombre
MLA843116615 | Monitor Dell P2419h Led 24 Negro 110v/220v | MLA14407 | Monitores
