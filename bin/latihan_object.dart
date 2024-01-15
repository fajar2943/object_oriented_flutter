import 'package:latihan_object/latihan_object.dart' as latihan_object;

import 'post.dart';

void main(List<String> arguments) {
  List<Post> dataPost = [];
  dataPost.add(Article(
      "Judul pertama", "Fajar Lintang Gumilang", "Isi content pertama"));
  dataPost
      .add(Video("Tutorial Flutter", "Gumilang", "http://youtube.com/", 500));

  for (var post in dataPost) {
    print(post.render());
    if (post is Video) {
      post.play();
    }
  }
}
