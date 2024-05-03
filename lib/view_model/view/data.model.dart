class DataModel {
  final VolumeInfo volumeinfo;
  final AccessInfo accesssInfo;
  final SaleInfo salesInfo;

  DataModel({
    required this.volumeinfo,
    required this.accesssInfo,
    required this.salesInfo,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      volumeinfo: VolumeInfo.fromJson(json['volumeInfo']),
      accesssInfo: AccessInfo.fromJson(json['accessInfo']),
      salesInfo: SaleInfo.fromJson(json['saleInfo']),
    );
  }
}

class VolumeInfo {
  final String? title;
  final List<dynamic>? authors;
  final String? description;
  final String? subtitle; // Make subtitle nullable
  final String? publisher;
  final String? publishedDate;
  final ImageLinks? imageLinks;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.subtitle, // Initialize subtitle
    this.imageLinks,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: json['authors'] as List<dynamic>?,
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      subtitle: json['subtitle'], // Assign subtitle value
      imageLinks: ImageLinks.fromJson(json['imageLinks']),
    );
  }
}

class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic>? json) {
    return ImageLinks(
      smallThumbnail:
          json?['smallThumbnail'] ?? '', // Initialize with empty string if null
      thumbnail:
          json?['thumbnail'] ?? '', // Initialize with empty string if null
    );
  }
}

class SaleInfo {
  final String country;
  final String saleability;

  SaleInfo({
    required this.country,
    required this.saleability,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
    );
  }
}

class AccessInfo {
  final String webReaderLink;

  AccessInfo({
    required this.webReaderLink,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      webReaderLink: json['webReaderLink'],
    );
  }
}
