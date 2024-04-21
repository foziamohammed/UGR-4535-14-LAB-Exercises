import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Post{
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(id: json['id'], title: json['title'], body: json['body']);
  }
}

class PostProvider extends ChangeNotifier{
    List<Post> _posts=[];
    List<Post> get posts=> _posts;

    Future<void> fetchPosts() async{
      final  response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode==200){
        final List<dynamic> data=jsonDecode(response.body);
        _posts=data.map((json)=>Post.fromJson(json)).toList();
        notifyListeners();
      }
      else{
        throw Exception('Failed');
      }
    }
}

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PostProvider>(
      create: (_) => PostProvider(),
      child: MaterialApp(
        title: 'Flutter ',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MyHomePage(title: 'Posts'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);
    final List<Post> posts = postProvider.posts;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return ListTile(
            title: Text(post.title),
            subtitle: Text(post.body),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postProvider.fetchPosts();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}