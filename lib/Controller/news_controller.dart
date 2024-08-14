import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:news_app/Api_Helper/api_helper.dart';
import '../Modal/news_modal.dart';

class NewsController extends GetxController
{
  NewsModal? newsModal;
  ApiHelper apiHelper = ApiHelper();
  int selectedN = 0;
  void slectedNews()
  {
    selectedN;
    update();
  }
  Future<NewsModal?> BusinessMap()
  async {
    final data = await apiHelper.fetchApiBusiness();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> AppleMap()
  async {
    final data = await apiHelper.fetchApiApple();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> TeslaMap()
  async {
    final data = await apiHelper.fetchApiTesla();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> TechMap()
  async {
    final data = await apiHelper.fetchApiTech();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> fromMap()
  async {
    final data = await apiHelper.fetchApi();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
}