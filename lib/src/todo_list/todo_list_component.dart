import 'dart:async';
import 'dart:html';
import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'todo_list_service.dart';
import 'dart:async';
import 'package:http/http.dart' as _http;
import 'dart:html' as prefix0;

@Component(
  selector: 'todo-list',
  styleUrls: ['todo_list_component.css'],
  templateUrl: 'todo_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [ClassProvider(TodoListService)],
)
class TodoListComponent implements OnInit {
  final TodoListService todoListService;

  List<String> items = [];
  List<String> lists = [];
  List<String> ops = [];
  List<String> wes = [];
  List<String> ius = [];
  int a = 0;
  String newTodo = '';

  TodoListComponent(this.todoListService);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService.getTodoList();
  }

  void add() {
    items.add(newTodo);
    newTodo= '';
  }
  void query(){
    if(newTodo=='夜雨寄北'){
      lists.add('君问归期未有期，巴山夜雨涨秋池。何当共剪西窗烛，却话巴山夜雨时。');
    }
    if(newTodo=='秋词'){
      ops.add('自古逢秋悲寂寥，我言秋日胜春朝。晴空一鹤排云上，便引诗情到碧霄。');
    }
    if(newTodo=='赤壁'){
      wes.add('折戟沉沙铁未销，自将磨洗认前朝。东风不与周郎便，铜雀春深锁二乔。');
    }
    if(newTodo=='登幽州台歌'){
      ius.add('前不见古人，后不见来者。念天地之悠悠，独怆然而涕下。');
    }
  }

  void remove(int index){
    items.removeAt(index);
    lists.removeAt(index);
  }
  void re(int index){
    items.removeAt(index);
    ops.removeAt(index);
  }
  void r(int index){
    items.removeAt(index);
    wes.removeAt(index);
  }
  void de(int index){
    items.removeAt(index);
    ius.removeAt(index);
  }
}
class WrongquestionService {
  static final _headers = {'Content-Type': 'application/json'};
  static const _wrongquestionsUrl =
      'http://127.0.0.1:8888/'; // URL to web API
}