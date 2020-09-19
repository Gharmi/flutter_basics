import 'package:cloud_firestore/cloud_firestore.dart';

class Feed {
  String imageUrl;
  String caption;
  String uploadedBy;
  bool like;
  int commentsCount;
  String uploaderImageUrl;
  String timeAgo;
  bool save;
  bool sponsored;
  int postDate;
  String description;
  String uid;
  String docId;

  Feed(
      {this.imageUrl,
      this.caption,
      this.uploadedBy,
      this.like = false,
      this.commentsCount = 3,
      this.uploaderImageUrl,
      this.timeAgo,
      this.save = false,
      this.sponsored = false,
      this.postDate,
      this.description});

  Feed.fromJson(QueryDocumentSnapshot querySnapshot){
    var data = querySnapshot.data();
    this.caption = data['caption'];
    this.description = data["description"];
    this.uploadedBy = data['uploadedBy'];
    this.postDate = data['postDate'];
    this.imageUrl = data['imageUrl'];
    this.like = data['like'] ?? false;
    this.save = data['save'] ?? false;
    this.docId = querySnapshot.id;
  }

}


List<Feed> getFeeds() {
  return [
    Feed(
      imageUrl:
          'https://images.unsplash.com/photo-1599076479757-7effbcd66acb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
      caption: 'Have a plant at your desk',
      uploadedBy: 'Ramesh Giri',
      like: false,
      commentsCount: 2,
      uploaderImageUrl:
          'https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/117436570_101417711683280_1138836161271393737_n.jpg?_nc_cat=106&_nc_sid=85a577&_nc_ohc=wWAP4Es26yEAX_Mt4tw&_nc_ht=scontent.fktm10-1.fna&oh=e2d1df771169e572d5a1c3e74cf32b54&oe=5F772E75',
      timeAgo: '2 minutes ago',
      save: false,
      sponsored: true,
      postDate: DateTime.now().millisecondsSinceEpoch,
      description:
          'Having a plant at your work desk can be really helpful. I don\'t know why though',
    ),
    Feed(
        imageUrl:
            'https://images.unsplash.com/photo-1599021277840-9d3f4f383742?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
        caption: 'Eat your breakfast on time',
        uploadedBy: 'Ted Mosby',
        like: false,
        commentsCount: 0,
        uploaderImageUrl:
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F454571015482650624%2FQxTB_fIk.jpeg&f=1&nofb=1',
        timeAgo: '2 minutes ago',
        save: false,
        sponsored: false,
        postDate: DateTime.now().millisecondsSinceEpoch,
        description:
            'You should eat your breakfast before 30 minutes, after you wake up.'),
    Feed(
      imageUrl:
          'https://images.unsplash.com/photo-1567337710282-00832b415979?ixlib=rb-1.2.1&auto=format&fit=crop&w=3888&q=80',
      caption: 'Have a plant at your desk',
      uploadedBy: 'Barney Stinson',
      like: false,
      commentsCount: 8,
      uploaderImageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2FHqMxT0guGuI%2Fmaxresdefault.jpg&f=1&nofb=1',
      timeAgo: '2 minutes ago',
      save: false,
      sponsored: true,
      postDate: DateTime.now().millisecondsSinceEpoch,
      description:
      'Having a plant at your work desk can be really helpful. I don\'t know why though',
    ),
    Feed(
      imageUrl:
          'https://images.unsplash.com/photo-1599076479757-7effbcd66acb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
      caption: 'Eat your breakfast on time',
      uploadedBy: 'Ramesh Giri',
      like: false,
      commentsCount: 2,
      uploaderImageUrl:
          'https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/117436570_101417711683280_1138836161271393737_n.jpg?_nc_cat=106&_nc_sid=85a577&_nc_ohc=wWAP4Es26yEAX_Mt4tw&_nc_ht=scontent.fktm10-1.fna&oh=e2d1df771169e572d5a1c3e74cf32b54&oe=5F772E75',
      timeAgo: '2 minutes ago',
      save: false,
      sponsored: true,
        postDate: DateTime.now().millisecondsSinceEpoch,
        description: 'Y0u should eat your breakfast before 30 minutes, after you wake up.'
    ),
  ];
}
