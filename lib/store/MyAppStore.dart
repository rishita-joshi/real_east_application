import 'package:mobx/mobx.dart';
import '../model/messege_model.dart';
part 'MyAppStore.g.dart';

class MyAppStore = _MyAppStore with _$MyAppStore;

abstract class _MyAppStore with Store {
  ObservableList<MessageChat> messgeChat = ObservableList<MessageChat>();

  @action
  addMessgaeChat() {
    messgeChat.clear();
    messgeChat.add(MessageChat(
        idFrom: "2", idTo: "2", timestamp: "", content: "Hii", type: 0));

    messgeChat.add(MessageChat(
        idFrom: "2", idTo: "2", timestamp: "", content: "Hello", type: 0));

    messgeChat.add(MessageChat(
        idFrom: "2",
        idTo: "2",
        timestamp: "",
        content: "Are you There",
        type: 0));
  }
}
