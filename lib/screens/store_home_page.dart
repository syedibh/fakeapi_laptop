import 'dart:convert';

import 'package:fakeapi/screens/product_details.dart';
import 'package:fakeapi/services/product_sevice.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StoreHomePage extends StatelessWidget {
  const StoreHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App syed'),
      ) ,
      body: FutureBuilder(
        future: ProductService().getproduct() ,

        builder: (BuildContext context, AsyncSnapshot snapshot)
    {
        if (snapshot.hasData)
          {
            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                  return Card(
                    elevation: 4,
                    child: ListTile(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context)=>ProductDetails(
                                  id: snapshot.data[index]['id'],
                                  xx: snapshot.data[index]['title'],
                                ),
                            ),
                        );
                      },
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                        child: Image.network(snapshot.data[index]['image'],
                          fit: BoxFit.fitHeight,
                          height: 40,
                          width: 40,
                        ),

                        ),


                    title: Text(snapshot.data[index]['title']),
                    ),
                    
                  );
                });

          }
       // return CircularProgressIndicator();
        return const Center(child: CircularProgressIndicator());

    } ,),

    );
  }
}
