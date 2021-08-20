class GalleryImgModel {
  final imgname;
  final address;

  GalleryImgModel({this.imgname, this.address});
}

// class Gallery {
List<GalleryImgModel> projectimages = [];

List<GalleryImgModel> listter = [
  GalleryImgModel(
      imgname: 'legalpractice1',
      address: 'assets/gallery/Screenshot_2021-01-26-12-38-29.png'),
  GalleryImgModel(
      imgname: 'legalpractice1',
      address: 'assets/gallery/Screenshot_2021-01-28-09-54-29.png'),
  GalleryImgModel(
      imgname: 'legalpractice1',
      address: 'assets/gallery/Screenshot_2021-01-28-10-05-36.png'),
  GalleryImgModel(
      imgname: 'legalpractice1',
      address: 'assets/gallery/Screenshot_2021-01-28-10-43-21.png'),
  GalleryImgModel(
      imgname: 'legalpractice1',
      address: 'assets/gallery/Screenshot_2021-01-28-16-55-55.png'),
  GalleryImgModel(
      imgname: 'legalpractice1',
      address: 'assets/gallery/Screenshot_2021-01-28-17-08-20.png'),
  GalleryImgModel(
      imgname: 'legalpractice1',
      address: 'assets/gallery/Screenshot_2021-01-28-17-09-03.png')
];

addimages() {
  projectimages.addAll(listter);
}
// }
