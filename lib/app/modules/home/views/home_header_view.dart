import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
    @required this.size,
    @required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final Size size;
  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 150,
      child: Stack(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(40.0),
                        ),
                      ),
                      child: TextField(
                        controller: _searchController,
                        keyboardType: TextInputType.text,
                        onSubmitted: (v) {
                          if (_searchController.text != "")
                            Get.toNamed("/search/${_searchController.text}");
                        },
                        decoration: InputDecoration(
                          hintText: "Cari pilem....",
                          focusColor: Colors.blue,
                          fillColor: Colors.white70,
                          suffixIcon: IconButton(
                            color: Colors.blue,
                            icon: Icon(Icons.search),
                            onPressed: () {
                              if (_searchController.text != "")
                                Get.toNamed(
                                    "/search/${_searchController.text}");
                            },
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1),
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
