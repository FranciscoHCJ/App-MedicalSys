class Hospital {
  final String id;
  final List<String> especialidad;
  final String tipo;
  final String nombre;
  final String direccion;
  final String telefono;
  final String imageUrl;
  final String img;

  Hospital({this.id, this.especialidad, this.tipo, this.nombre, this.direccion, this.telefono, this.imageUrl, this.img});

  factory Hospital.fromJson(Map<String, dynamic> json) {
    return Hospital(
      id           : json['_id'],
      especialidad : json['especialidad'],
      tipo         : json['tipo'],
      nombre       : json['nombre'],
      direccion    : json['direccion'],
      telefono     : json['telefono'],
      imageUrl     : json['imageUrl']
    );
  }

  getPosterImg(){

    if ( imageUrl == null ) {
      return 'https://cdn.samsung.com/etc/designs/smg/global/imgs/support/cont/NO_IMG_600x600.png';
    } else {
      return 'http://192.168.1.69:3000/imageUrl/hospital/$imageUrl';
    }

  }
}


