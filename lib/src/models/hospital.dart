class Hospitales {

  List<Hospital> items = new List();

  Hospitales();

  Hospitales.fromJsonList( List<dynamic> jsonList ) {
    
    if (jsonList == null) return;

    for (var item in jsonList ) {
      final hospital = new Hospital.fromJsonMap(item);
      items.add( hospital );
    }
  
  }
  
}

class Hospital {
   String id;
   String nombre;
   String direccion;
   String telefono;
   String imageUrl;

  Hospital({this.id,  this.nombre, this.direccion, this.telefono, this.imageUrl});

   Hospital.fromJsonMap(Map<String, dynamic> json) {
    
      id        = json['_id'];
      nombre    = json['nombre'];
      direccion = json['direccion'];
      telefono  = json['telefono'];
      imageUrl  = json['imageUrl'];
  }

  getImagen(){

    if ( imageUrl == null ) {
      return 'https://cdn.samsung.com/etc/designs/smg/global/imgs/support/cont/NO_IMG_600x600.png';
    } else {
      return 'https://medicalsysapp.herokuapp.com/imageUrl/hospital/$imageUrl';
    }

  }
}


