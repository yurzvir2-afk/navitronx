import 'package:flutter/material.dart';
void main()=>runApp(const NavitronX());
class NavitronX extends StatelessWidget{
const NavitronX({super.key});
@override Widget build(BuildContext context){
return MaterialApp(title:'NavitronX v11 FINAL',theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.green),home:const MapPage());}}
class MapPage extends StatefulWidget{const MapPage({super.key});@override State<MapPage> createState()=>_MapPageState();}
class _MapPageState extends State<MapPage>{
int idx=0;
final pages=[const Center(child:Text('🗺️ ULTRA MAP 22x\nSatellite 1.4m\nGPS+Galileo\nLive Roads 30s\nVoice 32 langs\nSK CZ PL HU DE UA EN',textAlign:TextAlign.center,style:TextStyle(fontSize:18))),const Center(child:Text('🔍 AI SEARCH')),const Center(child:Text('🤖 AI ASSISTANT')),const Center(child:Text('💬 CHAT')),const Center(child:Text('🛒 MARKETPLACE')),];
@override Widget build(BuildContext context){return Scaffold(appBar:AppBar(title:const Text('NavitronX v11 FINAL ALL IN ONE'),centerTitle:true),body:pages[idx],bottomNavigationBar:NavigationBar(selectedIndex:idx,onDestinationSelected:(i)=>setState(()=>idx=i),destinations:const[NavigationDestination(icon:Icon(Icons.map),label:'Map'),NavigationDestination(icon:Icon(Icons.search),label:'Search'),NavigationDestination(icon:Icon(Icons.smart_toy),label:'AI'),NavigationDestination(icon:Icon(Icons.chat),label:'Chat'),NavigationDestination(icon:Icon(Icons.shopping_cart),label:'Market')]),floatingActionButton:FloatingActionButton.extended(onPressed:(){},label:const Text('START NAVIGATION'),icon:const Icon(Icons.navigation)),);}}
