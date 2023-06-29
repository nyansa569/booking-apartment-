import 'package:booking_apartment/models/apartment_model.dart';
import 'package:flutter/material.dart';

import 'custom_slider_widget.dart';

class DetailPage extends StatefulWidget {
  final ApartmentModel data;
  const DetailPage(this.data, {super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildTopImage(context),
          _buildClose(context),
          _buildWidgetPirce(),
          _buildWidgetScroll(context)
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.15,
          right: MediaQuery.of(context).size.width * 0.15,
          bottom: 40,
        ),
        child:const CustomSliderWidget(),
      ),
    );
  }

  SizedBox _buildTopImage(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height * 0.55,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Image.asset(
                "assets/${widget.data.images}.jpeg",
                fit: BoxFit.cover,
              );
            },
          ),
        );
  }

  Align _buildWidgetScroll(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        // controller: controller,
        child: Stack(
          children: [
            Container(
              margin:const EdgeInsets.only(top: 25),
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                const  Center(
                    child: Icon(
                      Icons.drag_handle,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      widget.data.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildWidgetSize(
                          "Living Room",
                          widget.data.sizeLivingRoom,
                        ),
                        Container(
                          height: 50,
                          width: 1,
                          color: Colors.black38,
                        ),
                        _buildWidgetSize(
                          "Bed Room",
                          widget.data.sizeBedRoom,
                        ),
                        Container(
                          height: 50,
                          width: 1,
                          color: Colors.black38,
                        ),
                        _buildWidgetSize(
                          "Bath Room",
                          widget.data.sizeBathRoom,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      widget.data.desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:const TextStyle(
                        height: 1.5,
                      ),
                    ),
                  ),
                 const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    child: Text(
                      "Read more",
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 18, 139, 238),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child:const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetSize(String name, int size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style:const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          "$size sqft",
          style:const TextStyle(
            color: Colors.black38,
            height: 1.5,
            fontSize: 16,
          ),
        )
      ],
    );
  }

  Align _buildClose(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin:const EdgeInsets.only(right: 24, top: 45),
        decoration:const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: IconButton(
          icon: const Icon(Icons.close),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

  Container _buildWidgetPirce() {
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      margin:const EdgeInsets.only(left: 24, top: 50),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(
            Icons.euro_symbol,
            size: 16,
            color: Colors.white,
          ),
          Text(
            "${widget.data.price.toDouble()}",
            style:const TextStyle(color: Colors.white),
          ),
         const Text(
            "month",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
