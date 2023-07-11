import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marker_point/src/app/bloc/restaurants_query/restaurants_query_bloc.dart';
import 'package:marker_point/src/app/bloc/save_token/save_token_bloc.dart';
import 'package:marker_point/src/app/model/authentication.dart';
import 'package:marker_point/src/app/model/restaurants.dart';
import 'package:marker_point/src/app/resource/user_repository.dart';

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
          BlocProvider(
            create: (context) => SaveTokenBloc(),
          )
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
  void getToken() async {
    context
        .read<SaveTokenBloc>()
        .add(SaveTokenEvent.login(widget.user.authentication));
  }

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
            scrollDirection: Axis.vertical,
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(235, 126, 133, 240),
                          blurRadius: 4,
                          spreadRadius: 2)
                    ]),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/loading.png'),
                        ),
                        title: Text(
                          restaurants[index].restaurantsAttribute!.name!,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(restaurants[index]
                            .restaurantsAttribute!
                            .description!),
                        trailing: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
