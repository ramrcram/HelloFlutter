
class Books {
  List<Book> books;

  Books.fromJson(Map<String, dynamic> json){
      var list = json['items'] as List;
      this.books = list.map((data) => Book.fromJson(data)).toList();
  }
}

class Book {
  String id;
 String etag;
 String selfLink;  
 String infoLink;
  VolumeInfo volumeInfo;
  Book.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.etag = json['etag'];
      this.selfLink = json['selfLink'];
      this.infoLink = json['infoLink'];
      this.volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
      // Parsing volumeInfo
  }
}

class VolumeInfo {
  String title;
  ImageLinks imageLinks;

  VolumeInfo.fromJson(Map<String, dynamic> json){
     this.title = json['title'];
     if(json['imageLinks'] != null){
       this.imageLinks = ImageLinks.fromJson(json['imageLinks']);
     }
  }
}

class ImageLinks{
  final String smallThumbnail;
  final String thumbnail;
  
  ImageLinks.fromJson(Map<String, dynamic> json):
      smallThumbnail = json['smallThumbnail'] ?? "",
      thumbnail = json['thumbnail'] ?? "";
}