// ignore_for_file: annotate_overrides, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);


  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextEditingController _searchController = TextEditingController();

  final List<String> _originList = [
    'Limited Edition ' 'Instax Mini Mint 7+' '49.90',
    'Limited Edition ' 'Instax Mini Blue 7+ ' '50.90',
    'Limited Edition ' 'Instax Mini Choral 7+ ' '51.90',
    'Limited Edition ' 'Instax Mini Pink 7+ ' '52.90',
    'Limited Edition ' 'Instax Mini Lavender 7+ ' '53.90',
  ];
  List<String> _filteredList = [];
    String _keyword = '';

  
  @override
  Widget build(BuildContext context) {
    _searchController.addListener(() {
      setState(() {
        _keyword =_searchController.text;
      });   
    });

    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.white,
        title: Stack(
          children: <Widget> [
            Center(
              child: Image.asset("assets/fujifilm-banner.png", height: 20, width: 120,
            ),),
            CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 15.0,
              child: Icon(Icons.menu, color: Colors.white, size: 15.0),
              
            ),
            
            Container(
              margin: EdgeInsets.all(5.0),
              child: Icon(Icons.shopping_bag, color: Colors.black, size: 15.0),
              alignment: Alignment.centerRight,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: ' Search',
              hintStyle: TextStyle(color: Colors.grey, fontFamily: "Quicksand"),
              border:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(17.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
          ),
          ),
          (_keyword.isEmpty) ? _createOriginListView() : _searchData(),
        ],
      ),),
    );
  }

  _searchData(){
    _filteredList = [];
    for(int i=0; i<_originList.length; i++){
      var item = _originList[i];
      if (item.toLowerCase().contains(_keyword.toLowerCase())){
        _filteredList.add(item);
      }
      }
      return _createFilteredListView();
  }
  _createOriginListView() {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index){
          return Container(
            color: Color(0xff70b1a1),
            height: 230,
            child: Align(
              alignment: Alignment.centerLeft,

              child: Text(_originList[index]),
              ),
          );
        }, 
        separatorBuilder: (context, index){
          return Divider(
            thickness: 30,
            color: Colors.white,
            );
        }, 
        itemCount: _originList.length,
        ),
        );
  }
   _createFilteredListView() {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index){
          return Container(
            color: Color(0xff70b1a1),
            height: 230,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(_filteredList[index]),
              ),
          );
        }, 
        separatorBuilder: (context, index){
          return Divider(
            thickness: 30,
            color: Colors.white,
            );
        }, 
        itemCount: _filteredList.length,
        ),
    );
   }
  }