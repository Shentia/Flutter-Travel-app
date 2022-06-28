class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String description;
  String price;

  TravelModel(
      {required this.name,
      required this.location,
      required this.image,
      required this.distance,
      required this.temp,
      required this.rating,
      required this.description,
      required this.price});
}

List<TravelModel> travelList = [
  TravelModel(
      name: 'New York',
      location: 'USA',
      description:
          "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square.",
      price: '409.99',
      temp: '23 C',
      rating: '5/5',
      image: 'assets/images/newyork.jpg',
      distance: '471 km'),
  TravelModel(
      name: 'Madrid',
      location: 'SPAIN',
      description:
          "Spain, a country on Europe’s Iberian Peninsula, includes 17 autonomous regions with diverse geography and cultures. Capital city Madrid is home to the Royal Palace and Prado museum, housing works by European masters. Segovia has a medieval castle (the Alcázar) and an intact Roman aqueduct. Catalonia’s capital, Barcelona, is defined by Antoni Gaudí’s whimsical modernist landmarks like the Sagrada Família church. ",
      price: '209.99',
      temp: '30 C',
      rating: '4/5',
      image: 'assets/images/spain.jpg',
      distance: '633 km'),
  TravelModel(
      name: 'Toronto',
      location: 'CANADA',
      description:
          "Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic Ocean to the Pacific Ocean and northward into the Arctic Ocean, covering over 9.98 million square kilometres, making it the world's second-largest country by total area.",
      price: '239.99',
      temp: '36 C',
      rating: '5/5',
      image: 'assets/images/canada.jpg',
      distance: '1092 km'),
  TravelModel(
      name: 'Seoul',
      location: 'South Korea',
      description:
          "South Korea, an East Asian nation on the southern half of the Korean Peninsula, shares one of the world’s most heavily militarized borders with North Korea. It’s equally known for its green, hilly countryside dotted with cherry trees and centuries-old Buddhist temples, plus its coastal fishing villages, sub-tropical islands and high-tech cities such as Seoul, the capital.",
      price: '219.99',
      temp: '21 C',
      rating: '3/5',
      image: 'assets/images/korea.jpg',
      distance: '281 km'),
];
