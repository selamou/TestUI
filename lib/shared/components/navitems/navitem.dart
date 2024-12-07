class Model {
  final int id;
  final String imagePath;

  Model({
    required this.id,
    required this.imagePath,
  });
}

List<Model> navBtn = [
  Model(id: 0, imagePath: 'assets/icon/home.png'),
  Model(id: 1, imagePath: 'assets/icon/heart.png'),
  Model(id: 2, imagePath: 'assets/icon/search.png'),
  Model(id: 3, imagePath: 'assets/icon/notification.png'),
];