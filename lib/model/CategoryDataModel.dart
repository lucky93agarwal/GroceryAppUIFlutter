class CategoryDataModel {
  static final categoryitems = [
    CategoryItem(
        id: 1,
        title: 'Meat',
        subtitle: '',
        date: 'Rahul',
        status: 'assets/images/icons/meaticon.png',
        isNew: true,
        image:
        'assets/images/icons/meaticon.png',
        by: 'Lucky Agarwal'),

    CategoryItem(
        id: 2,
        title: 'Fish',
        subtitle: '',
        date: 'Rahul',
        status: 'assets/images/icons/fishthree.png',
        isNew: true,
        image:
        'assets/images/icons/fishicon.png',
        by: 'Lucky Agarwal'),

    CategoryItem(
        id: 3,
        title: 'Vegetables',
        subtitle: '',
        date: 'Rahul',
        status: 'assets/images/icons/broccoilicon.png',
        isNew: true,
        image:
        'assets/images/icons/appleicon.png',
        by: 'Lucky Agarwal'),


  ];
}

class CategoryItem {
  final int id;
  final String title;
  final String subtitle;
  final String date;
  final String status;
  final bool isNew;
  final String image;
  final String by;

  CategoryItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.status,
    required this.isNew,
    required this.image,
    required this.by,
  });
}
