class Post {
  const Post({
    required this.title,
    required this.auther,
    required this.imageUrl,
  });

  final String title;
  final String auther;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: '标题1号',
      auther: '段宇昕1号',
      imageUrl:
          'http://5b0988e595225.cdn.sohucs.com/images/20200215/6f0400c52b2b4c03901676d0b9aac3f8.png'),
  Post(
      title: '标题2号',
      auther: '段宇昕2号',
      imageUrl:
          'http://5b0988e595225.cdn.sohucs.com/images/20200205/ce523a0347a04cac9739de98e736a1a5.jpeg'),
  Post(
      title: '标题3号',
      auther: '段宇昕3号',
      imageUrl:
          'https://img.3dmgame.com/UploadFiles/201204/Medium_20120412093348914.jpg'),
  Post(
      title: '标题1号',
      auther: '段宇昕1号',
      imageUrl:
          'http://5b0988e595225.cdn.sohucs.com/images/20200215/6f0400c52b2b4c03901676d0b9aac3f8.png'),
  Post(
      title: '标题2号',
      auther: '段宇昕2号',
      imageUrl:
          'http://5b0988e595225.cdn.sohucs.com/images/20200205/ce523a0347a04cac9739de98e736a1a5.jpeg'),
  Post(
      title: '标题3号',
      auther: '段宇昕3号',
      imageUrl:
          'https://img.3dmgame.com/UploadFiles/201204/Medium_20120412093348914.jpg')
];
