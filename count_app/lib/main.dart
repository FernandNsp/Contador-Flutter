import 'package:flutter/material.dart'; // pack do flutter

void main(){
  	runApp(MaterialApp(
		theme: ThemeData(primarySwatch: Colors.blue),
		home: HomePage(),
  	));
}

class HomePage extends StatefulWidget{
	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  	var count = 0;

  	void increment(){
		count++;
		setState(() {});
  	}

	void decrement(){
		count--;
		setState(() {});
  	}

  @override
  	Widget build(BuildContext context){
    	return Scaffold(
			appBar: AppBar(
				title: Text("Meu primeiro Flutter App"),
			),
			
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,

					children: <Widget>[
						Text("Aplicativo contador \n",
							style: Theme.of(context).textTheme.headline4,
						),

						Text(
							'$count',
							style: Theme.of(context).textTheme.headline1,
						),
					],
				),
			),
			
			floatingActionButtonLocation:
				FloatingActionButtonLocation.centerDocked,
					floatingActionButton: Padding(
						padding: const EdgeInsets.all(20.0),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								FloatingActionButton(
									child: Icon(Icons.remove),
									onPressed: (){
										if(count > 0) decrement();
									},
								),

								FloatingActionButton(
									child: Icon(Icons.power_settings_new),
									onPressed: (){
										count = 0;
										setState(() {});
									},
								),

								FloatingActionButton(
									child: Icon(Icons.add),
									onPressed: (){
										increment();
									},
								),
							],
						),
					)
    	);
   }
}
