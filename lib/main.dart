ElevatedButton(
onPressed: () {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
content: Text("Are you sure"),
title: Text("Exit App"),
actions: [

ElevatedButton(onPressed: (){}, child: Text("Cancel")),
ElevatedButton(onPressed: (){}, child: Text("Exit")),

],

);
});
},
child: Text("Exit")),