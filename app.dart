import "dart:io";
import "package:express/express.dart";

main(){
  int counter = 0;
  var app = new Express()

    ..get('/', (ctx){
      print("root level");
    })

    ..get('/error', (ctx){
      throw new ArgumentError("custom error in handler");
    })

    ..get('/counter', (ctx){
      ctx.sendJson({'counter': counter++});
    });

  app.listen("127.0.0.1", 8000);
}
