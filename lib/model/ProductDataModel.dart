class ProductDataModel {
  static final productitems = [
    ProductItem(
        id: 1,
        cateid: 3,
        title: 'Broccoil',
        subtitle: '1Kg / 1.8\$',
        price: '0.9\$',
        status: 'assets/images/icons/broccoilicon.png',
        isNew: true,
        image:
        'assets/images/icons/broccoilicon.png',
        by: '500gm'),

    ProductItem(
        id: 2,
        cateid: 3,
        title: 'Asparagus',
        subtitle: '1Kg / 3.8\$',
        price: '1.9\$',
        status: 'assets/images/icons/Asparagusicon.png',
        isNew: true,
        image:
        'assets/images/icons/Asparagusicon.png',
        by: '500gm'),

    ProductItem(
        id: 3,
        cateid: 3,
        title: 'Ladi Finger',
        subtitle: '1Kg / 3.0\$',
        price: '1.5\$',
        status: 'assets/images/icons/ladifinger.png',
        isNew: true,
        image:
        'assets/images/icons/ladifinger.png',
        by: '500gm'),


    ProductItem(
        id: 4,
        cateid: 3,
        title: 'Potato',
        subtitle: '1Kg / 3.0\$',
        price: '1.5\$',
        status: 'assets/images/icons/potato.png',
        isNew: true,
        image:
        'assets/images/icons/potato.png',
        by: '500gm'),

    ProductItem(
        id: 5,
        cateid: 3,
        title: 'Tomatoes',
        subtitle: '1Kg / 3.0\$',
        price: '1.5\$',
        status: 'assets/images/icons/tomatoes.png',
        isNew: true,
        image:
        'assets/images/icons/tomatoes.png',
        by: '500gm'),


  ];
}

class ProductItem {
  final int id;
  final int cateid;
  final String title;
  final String subtitle;
  final String price;
  final String status;
  final bool isNew;
  final String image;
  final String by;

  ProductItem({
    required this.id,
    required this.cateid,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.status,
    required this.isNew,
    required this.image,
    required this.by,
  });
}
