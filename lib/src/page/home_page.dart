
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // key: scaffoldKey,
      appBar: AppBar(
        title: Text('HOME PAGE'),
        
       
        /*actions: <Widget>[
          drawer(),
         /* IconButton(
            icon: Icon( Icons.photo_size_select_actual ),
            onPressed: (){}//_seleccionarFoto,
          ),
          IconButton(
            icon: Icon( Icons.camera_alt ),
            onPressed:(){} // _tomarFoto,
          ),*/
        ],*/
      ),
      drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
          ),
          child: Text('Header',
            style: TextStyle( color: Colors.white, fontSize: 25,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Opcion 1'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Opcion 2'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Opcion 3'),
        ),
      ],
    ),
  ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
           // key: formKey,
            child: Column(
              children: <Widget>[
                Text("Cinco Ultimos Articulos Mas Vendidos", style: TextStyle(fontSize: 18.0),),
               // _mostrarFoto(),
               mayorMovProductos()
               
              ],
            ),
          ),
        ),
      ),
    );

  }


}



//esto nos mostrara los cinco ultimos productos de mayor movimintos
Widget mayorMovProductos(){
  
  return DataTable(
    sortColumnIndex: 0,
    sortAscending: true,
      columns:  <DataColumn>[
        DataColumn(
          label: Text('Nombre Producto',      
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          
        ),
        DataColumn(
          label: Text('Precio',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          numeric: true 
        ),
       
      ],
      rows:  <DataRow>[
        DataRow(
         // selected: true,
          cells: <DataCell>[
            DataCell(Text('Johnny Walker')),
            DataCell(Text('RD\$ ' + '2,800.00')),
           
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Refresco de Uva')),
            DataCell(Text('RD\$ ' + '50.00')),
           
          ],
        ),
        DataRow(
          //selected: true,
          cells: <DataCell>[
            DataCell(Text('Polo Negro')),
            DataCell(Text('RD\$ ' + '150.00')),
           
          ],
        ),
         DataRow(
          //selected: true,
          cells: <DataCell>[
            DataCell(Text('Pantalon Gris')),
            DataCell(Text('RD\$ ' + '1200.00')),
           
          ],
        ),
         DataRow(
          //selected: true,
          cells: <DataCell>[
            DataCell(Text('Brownies')),
            DataCell(Text('RD\$ ' + '600.00')),
           
          ],
        ),
      ],
    );
  


}