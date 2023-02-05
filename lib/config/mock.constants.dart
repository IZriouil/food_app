import 'package:food_app/models/food.model.dart';

import '../models/restaurant_category.model.dart';

List<RestaurantCategoryModel> kRestaurentCategories = [
  RestaurantCategoryModel(
    id: "pasta_shrimp",
    label: "Pasta Shrimp",
  ),
  RestaurantCategoryModel(
    id: "fish",
    label: "Fish",
  ),
  RestaurantCategoryModel(
    id: "meat",
    label: "Meat",
  ),
  RestaurantCategoryModel(
    id: "chicken",
    label: "Chicken",
  ),
  RestaurantCategoryModel(
    id: "burger",
    label: "Burger",
  ),
  RestaurantCategoryModel(
    id: "ice_cream",
    label: "Ice Cream",
  ),
];

// Mock Data Foods for Pasta Shrimp
// id from 1 -> 4
// diffirent names likes "Fusilli Pasta Shrimp"
// prices beetwen 13.99 -> 30.99
// ratings beetwen 4 -> 5
// description with like 9 words
List<FoodModel> kPastas = [
  FoodModel(
    id: "1",
    name: "Fusilli Pasta Shrimp",
    description: "Fusilli Pasta Shrimp with tomato sauce and cheese",
    price: 13.99,
    rating: 4,
  ),
  FoodModel(
    id: "2",
    name: "Spaghetti Pasta Shrimp",
    description: "Spaghetti Pasta Shrimp with tomato sauce and cheese",
    price: 14.99,
    rating: 4,
  ),
  FoodModel(
    id: "3",
    name: "Macaroni Pasta Shrimp",
    description: "Macaroni Pasta Shrimp with tomato sauce and cheese",
    price: 15.99,
    rating: 4,
  ),
  FoodModel(
    id: "4",
    name: "Rigatoni Pasta Shrimp",
    description: "Rigatoni Pasta Shrimp with tomato sauce and cheese",
    price: 16.99,
    rating: 4,
  ),
];
