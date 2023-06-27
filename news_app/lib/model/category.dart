// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryItem {
  final int id;
  final String name;
  final String slug;
  final String link;
  final String created_at;
  final String updated_at;

  CategoryItem({
    required this.id,
    required this.name,
    required this.slug,
    required this.link,
    required this.created_at,
    required this.updated_at,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'link': link,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory CategoryItem.fromMap(Map<String, dynamic> map) {
    return CategoryItem(
      id: map['id'] as int,
      name: map['name'] as String,
      slug: map['slug'] as String,
      link: map['link'] as String,
      created_at: map['created_at'] as String,
      updated_at: map['updated_at'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryItem.fromJson(String source) =>
      CategoryItem.fromMap(json.decode(source) as Map<String, dynamic>);

  CategoryItem copyWith({
    int? id,
    String? name,
    String? slug,
    String? link,
    String? created_at,
    String? updated_at,
  }) {
    return CategoryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      link: link ?? this.link,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  @override
  String toString() {
    return 'CategoryItem(id: $id, name: $name, slug: $slug, link: $link, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(covariant CategoryItem other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.link == link &&
        other.created_at == created_at &&
        other.updated_at == updated_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        link.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode;
  }
}
