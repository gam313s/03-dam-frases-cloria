class Frase {
  final int? id;
  final String frase;
  final String autor;
  const Frase ({this.id, required this.frase, required this.autor});

//objeto -> map para guardar en sqlite
Map<String, Object?> toMap() {
  return {
    'id': id,
    'frase': frase,
    'autor': autor,
  };}

  //mapa (una fila de Sqlite) -> objeto
  factory Frase.fromMap(Map<String, Object?> map) {
    return Frase(
      id: map['id'] as int?,
      frase: map['frase'] as String,
      autor: map['autor'] as String,
    );
  }
}