abstract class Post {
  String title;
  String author;

  Post(this.title, this.author);

  String render();

  String publish() {
    return """
    Judul: ${this.title}
    Author: ${this.author}
    """;
  }
}

class Article extends Post {
  String content;
  Article(super.title, super.author, this.content);

  @override
  String render() {
    return """
      ${publish()}
      Content: ${this.content} 
    """;
  }
}

class Video extends Post {
  String video_url;
  int duration;
  Video(super.title, super.author, this.video_url, this.duration);

  @override
  String render() {
    return """
      ${publish()}
      Url: ${this.video_url} 
      Duration: ${this.duration} 
    """;
  }

  void play() {
    print("Video dengan judul ${title} diputar dengan durasi $duration detik");
  }
}
