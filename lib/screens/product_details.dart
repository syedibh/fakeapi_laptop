import 'package:fakeapi/services/product_sevice.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatelessWidget {
  int id;
  String xx;


ProductDetails({Key? key, required this.id,required this.xx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(

         'Id : '+ id.toString() +'Title : ' + xx.toString(),
        ),
      ),
          body: FutureBuilder(
            future: ProductService().getSingleproduct(id),
            //builder: (context,snapshot),
              builder: (context, AsyncSnapshot snapshot){
              if (snapshot.hasData)
                {
                  return Container(
                    child: Image.network(snapshot.data['image']),
                  );
                }
              return const Center(
                child: CircularProgressIndicator(),
              );
                
              }


          ),

      );


  }
}
