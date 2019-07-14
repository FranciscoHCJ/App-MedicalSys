class Farmacia {
  final String id;
  final String nombre;
  final String direccion;
  final String imageUrl;
  final String telefono;
  final String horario;
  final String ubicacion;

  Farmacia({this.id, this.nombre, this.direccion, this.imageUrl, this.telefono, this.horario, this.ubicacion});

  factory Farmacia.fromJson(Map<String, dynamic> json) {
    return Farmacia(
      id         : json['_id'],
      nombre     : json['nombre'],
      direccion  : json['direccion'],
      imageUrl   : json['imageUrl'],
      telefono   : json['telefono'],
      horario    : json['horario'],
      ubicacion  : json['ubicacion'],
    );
  }
}