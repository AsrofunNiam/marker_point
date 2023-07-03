import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marker_point/src/app/bloc/restaurants_query/restaurants_query_bloc.dart';
import 'package:marker_point/src/app/model/authentication.dart';
import 'package:marker_point/src/app/model/restaurants.dart';
import 'package:marker_point/src/app/model/user.dart';

class HomeRestaurant extends StatefulWidget {
  const HomeRestaurant._({required this.user});

  final Authentication user;

  static Route<bool?> route({
    required Authentication user,
  }) {
    return MaterialPageRoute(builder: (context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                RestaurantsQueryBloc()..add(const RestaurantsQueryEvent.get()),
          ),
        ],
        child: HomeRestaurant._(
          user: user,
        ),
      );
    });
  }

  @override
  State<HomeRestaurant> createState() => _RestaurantCreateButtonState();
}

class _RestaurantCreateButtonState extends State<HomeRestaurant> {
  @override
  Widget build(BuildContext context) {
    List<Restaurants> restaurants = [];
    return BlocBuilder<RestaurantsQueryBloc, RestaurantsQueryState>(
      builder: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loaded: (dataRestaurants) {
            restaurants.addAll(dataRestaurants);
          },
        );
        return Scaffold(
          appBar: AppBar(),
          body: ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Column(
                  children: [
                    Text(restaurants[index].id.toString()),
                  ],
                ),
              );
            },
            scrollDirection: Axis.vertical,
          ),
        );
      },
    );
  }
}
