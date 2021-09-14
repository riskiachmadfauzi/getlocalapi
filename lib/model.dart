class Blog {
  final String id;
  final String title;
  final String description;
  final String director;
  final String photo;

  Blog({
    required this.id,
    required this.title,
    required this.description,
    required this.director,
    required this.photo,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      director: json['director'],
      photo: json['photo'],
    );
  }
}
