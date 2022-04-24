// ignore_for_file: file_names, prefer_collection_literals

class PlaylistItem {
  String? kind;
  String? etag;
  String? nextPageToken;
  List<Items>? items;
  PageInfo? pageInfo;

  PlaylistItem(
      {this.kind, this.etag, this.nextPageToken, this.items, this.pageInfo});

  PlaylistItem.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    nextPageToken = json['nextPageToken'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    pageInfo =
        json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kind'] = kind;
    data['etag'] = etag;
    data['nextPageToken'] = nextPageToken;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (pageInfo != null) {
      data['pageInfo'] = pageInfo!.toJson();
    }
    return data;
  }
}

class Items {
  String? kind;
  String? etag;
  String? id;
  ContentDetails? contentDetails;

  Items({this.kind, this.etag, this.id, this.contentDetails});

  Items.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'];
    contentDetails = json['contentDetails'] != null
        ? ContentDetails.fromJson(json['contentDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kind'] = kind;
    data['etag'] = etag;
    data['id'] = id;
    if (contentDetails != null) {
      data['contentDetails'] = contentDetails!.toJson();
    }
    return data;
  }
}

class ContentDetails {
  String? videoId;
  String? videoPublishedAt;

  ContentDetails({this.videoId, this.videoPublishedAt});

  ContentDetails.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
    videoPublishedAt = json['videoPublishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['videoId'] = videoId;
    data['videoPublishedAt'] = videoPublishedAt;
    return data;
  }
}

class PageInfo {
  int? totalResults;
  int? resultsPerPage;

  PageInfo({this.totalResults, this.resultsPerPage});

  PageInfo.fromJson(Map<String, dynamic> json) {
    totalResults = json['totalResults'];
    resultsPerPage = json['resultsPerPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['totalResults'] = totalResults;
    data['resultsPerPage'] = resultsPerPage;
    return data;
  }
}
