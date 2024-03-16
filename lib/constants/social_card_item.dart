class Social_Item {
  final String image;
  final String title;
  final String url;
  Social_Item({required this.image, required this.title, required this.url});
}

List<Social_Item> itemList = [
  Social_Item(
      image: "assets/social_image/fb.png",
      title: "Facebook",
      url: "https://www.facebook.com/alazad214"),
  Social_Item(
      image: "assets/social_image/insta.png",
      title: "Instagram",
      url: "https://www.instagram.com/alazad214/"),
  Social_Item(
      image: "assets/social_image/linke.png",
      title: "Linkedin",
      url: "https://www.linkedin.com/in/alazad214"),
  Social_Item(
      image: "assets/social_image/gmail.png",
      title: "G-mail",
      url:
          "https://mail.google.com/mail/u/0/?fs=1&to=alazad214@gmail.com&tf=cm"),
  Social_Item(
      image: "assets/social_image/git_.png",
      title: "Github",
      url: "https://github.com/alazad214"),
];
