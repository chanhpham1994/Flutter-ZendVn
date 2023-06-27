// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ArticleItem {
  final int id;
  final String title;
  final String description;
  final String content;
  final String publish_date;
  final String thumb;
  ArticleItem({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.publish_date,
    required this.thumb,
  });

  ArticleItem copyWith({
    int? id,
    String? title,
    String? description,
    String? content,
    String? publish_date,
    String? thumb,
  }) {
    return ArticleItem(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      publish_date: publish_date ?? this.publish_date,
      thumb: thumb ?? this.thumb,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'content': content,
      'publish_date': publish_date,
      'thumb': thumb,
    };
  }

  factory ArticleItem.fromMap(Map<String, dynamic> map) {
    return ArticleItem(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      content: map['content'] as String,
      publish_date: map['publish_date'] as String,
      thumb: map['thumb'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ArticleItem.fromJson(String source) =>
      ArticleItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ArticleItem(id: $id, title: $title, description: $description, content: $content, publish_date: $publish_date, thumb: $thumb)';
  }

  @override
  bool operator ==(covariant ArticleItem other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.content == content &&
        other.publish_date == publish_date &&
        other.thumb == thumb;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        content.hashCode ^
        publish_date.hashCode ^
        thumb.hashCode;
  }
}
