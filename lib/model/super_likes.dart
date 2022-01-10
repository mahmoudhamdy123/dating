

class SuperLikes{
  String imageUrl;
  String name;
  double killo;
  bool online;
  bool favorite;

  SuperLikes({required this.imageUrl,required this.name,required this.killo,
    required this.online,required this.favorite});
}



List<SuperLikes> superLikes = [
  SuperLikes(
    imageUrl: "https://thumbs.dreamstime.com/b/happy-person-portrait-smiling-woman-tanned-skin-curly-hair-happy-person-portrait-smiling-young-friendly-woman-197501184.jpg",
    name: "Anne",
    online: true,
    killo: 34.0,
    favorite: false
  ),
  SuperLikes(
      imageUrl: "https://www.incimages.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg",
      name: "Ahmed",
      online: false,
      killo: 20.0,
      favorite: true
  )
];


