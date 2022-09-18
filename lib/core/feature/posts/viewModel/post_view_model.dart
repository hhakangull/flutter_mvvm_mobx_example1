import 'package:mobx/mobx.dart';

part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  @observable // observable dinlenen değer anlamı taşmaktadır.
  int count = 0;

  @computed // computed hesaplanan değer anlamı taşımaktadır.
  bool get isEven => count % 2 == 0;

  @action // action fonksiyonları tetiklemek için kullanılır
  void incrementCount() {
    count++;
  }
}
