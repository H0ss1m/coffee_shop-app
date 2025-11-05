String location = 'New York, USA';

String imageUrl =
    'https://images.pexels.com/photos/851555/pexels-photo-851555.jpeg';

String userName = 'Hossam Hassan';

List filterTypes = [
  {'title': 'All Coffee', 'isSelected': true},
  {'title': 'Americano', 'isSelected': false},
  {'title': 'Capuchin', 'isSelected': false},
  {'title': 'Latte', 'isSelected': false},
  {'title': 'Mocka', 'isSelected': false},
];

List coffeeTypes = [
  {
    'image':
        'https://images.pexels.com/photos/34519661/pexels-photo-34519661.jpeg',
    'title': 'Cappuccino',
    'subTitle': 'With Oat Milk',
    'description':
        'A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam. It is typically smaller in volume than a latte, and has a thicker layer of microfoam.',
    'type': 'Hot',
    'roast': 'Medium Roasted',
    'category': 'Cappuccino',
    'price': '4.20',
  },
  {
    'image':
        'https://images.pexels.com/photos/9430780/pexels-photo-9430780.jpeg',
    'title': 'Latte',
    'subTitle': 'With Almond Milk',
    'description':
        'A latte is a coffee drink made with espresso and steamed milk. It is typically served in a larger cup than a cappuccino, and has a creamier texture.',
    'type': 'Iced',
    'roast': 'Medium Roasted',
    'category': 'Latte',
    'price': '3.80',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Mocha',
    'subTitle': 'With Soy Milk',
    'description':
        'A mocha is a chocolate-flavored variant of a latte. It is made with espresso, steamed milk, and chocolate syrup, and is typically topped with whipped cream.',
    'type': 'Hot',
    'roast': 'Medium Roasted',
    'category': 'Mocha',
    'price': '4.50',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Americano',
    'subTitle': 'Black Coffee',
    'description':
        'An Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to brewed coffee but with a different flavor profile.',
    'type': 'Iced',
    'roast': 'Medium Roasted',
    'category': 'Americano',
    'price': '2.90',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Espresso',
    'subTitle': 'Black Coffee',
    'description':
        'Espresso is a concentrated coffee beverage brewed by forcing hot water through finely-ground coffee beans. It is the base for many coffee drinks and is known for its strong flavor and aroma.',
    'type': 'Hot',
    'roast': 'Medium Roasted',
    'category': 'Coffee',
    'price': '2.90',
  },
];

List teaTypes = [
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Earl Grey',
    'subTitle': 'Classic Black Tea',
    'description':
        'Earl Grey is a flavored tea that has been infused with the oil of bergamot, a citrus fruit. It is known for its distinctive aroma and is often enjoyed with milk or lemon.',
    'type': 'Hot',
    'category': 'Tea',
    'price': '2.50',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Matcha Latte',
    'subTitle': 'Green Tea Blend',
    'description':
        'Matcha Latte is a creamy and frothy drink made with high-quality matcha green tea powder and steamed milk. It is known for its vibrant green color and unique flavor.',
    'type': 'Iced',
    'category': 'Tea',
    'price': '3.70',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Chamomile',
    'subTitle': 'Herbal Relaxation',
    'description':
        'Chamomile is a gentle and soothing herbal tea made from the dried flowers of the chamomile plant. It is known for its calming effects and is often enjoyed before bedtime.',
    'type': 'Hot',
    'category': 'Tea',
    'price': '2.80',
  },
];

List popularCoffees = [
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Espresso',
    'subTitle': 'Strong and Bold',
    'description':
        'Espresso is a concentrated coffee beverage brewed by forcing hot water through finely-ground coffee beans. It is the base for many coffee drinks and is known for its strong flavor and aroma.',
    'type': 'Hot',
    'category': 'Coffee',
    'price': '3.00',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Flat White',
    'subTitle': 'Smooth and Creamy',
    'description':
        'Flat White is a coffee drink consisting of espresso with microfoam. It is similar to a latte but has a higher ratio of coffee to milk.',
    'type': 'Hot',
    'category': 'Coffee',
    'price': '4.00',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Iced Coffee',
    'subTitle': 'Chilled Brew',
    'description':
        'Iced Coffee is a refreshing coffee beverage served cold. It is typically brewed hot and then chilled, often served over ice with milk or cream.',
    'type': 'Iced',
    'category': 'Coffee',
    'price': '3.50',
  },
];

List drinks = [
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Green Tea',
    'subTitle': 'Refreshing and Light',
    'description':
        'Green Tea is a type of tea made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong and black tea.',
    'type': 'Hot',
    'category': 'Tea',
    'price': '2.50',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Chai Latte',
    'subTitle': 'Spiced Delight',
    'description':
        'Chai Latte is a spiced tea beverage made with black tea, milk, and a blend of aromatic spices such as cinnamon, cardamom, and ginger.',
    'type': 'Hot',
    'category': 'Tea',
    'price': '3.20',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Lemonade',
    'subTitle': 'Citrus Burst',
    'description':
        'Lemonade is a refreshing drink made from lemon juice, water, and sugar. It is known for its sweet and tangy flavor and is often served chilled.',
    'type': 'Cold',
    'category': 'Juice',
    'price': '2.80',
  },
];

List favoriteItems = [
  {
    'image':
        'https://images.pexels.com/photos/34519661/pexels-photo-34519661.jpeg',
    'title': 'Cappuccino',
    'subTitle': 'With Oat Milk',
    'description':
        'A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam. It is typically smaller in volume than a latte, and has a thicker layer of microfoam.',
    'type': 'Hot',
    'roast': 'Medium Roasted',
    'category': 'Cappuccino',
    'price': '4.20',
  },
  {
    'image': 'https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg',
    'title': 'Latte',
    'subTitle': 'With Almond Milk',
    'description':
        'A latte is a coffee drink made with espresso and steamed milk. It is typically served in a larger cup than a cappuccino, and has a creamier texture.',
    'type': 'Iced',
    'roast': 'Medium Roasted',
    'category': 'Latte',
    'price': '3.80',
  },
];
