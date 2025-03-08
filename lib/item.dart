class Item {
  final String imageLink;
  final String url;
  final String title;
  final String remainText;
  final int sort;
  final String clientName;

  Item({
    this.imageLink = '',
    this.url = '',
    this.title = '',
    this.remainText = '',
    this.sort = 0,
    this.clientName = '',
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      imageLink: json['image_link'] as String? ?? '',
      url: json['url'] as String? ?? '',
      title: json['title'] as String? ?? '',
      remainText: json['remain_txt'] as String? ?? '',
      sort: json['sort'] != null ? int.parse(json['sort'].toString()) : 0,
      clientName: json['client_name'] as String? ?? '',
    );
  }
  static List<Item> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Item.fromJson(json)).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'image_link': imageLink,
      'url': url,
      'title': title,
      'remain_txt': remainText,
      'sort': sort,
      'client_name': clientName,
    };
  }
}

final jsonList = [
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17411374518676731.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/413?forceMode=1",
    "title": "女频特殊征文2025第3期：“春日狂想”",
    "start_time": "2025-03-01",
    "end_time": "2025-05-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17409925637118194.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/412?forceMode=1",
    "title": "女频快闪征文2025第8期：种田养崽忙",
    "start_time": "2025-03-01",
    "end_time": "2025-09-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17406485431822045.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/411?forceMode=1",
    "title": "女频快闪征文2025第7期：恶女觉醒",
    "start_time": "2025-02-28",
    "end_time": "2025-09-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17403601756920493.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/410?forceMode=1",
    "title": "女频快闪征文2025第6期：“超有想法”",
    "start_time": "2025-02-24",
    "end_time": "2025-08-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17401256123568894.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/408?forceMode=1",
    "title": "男频快闪征文2025第8期：莫欺中年穷",
    "start_time": "2025-02-21",
    "end_time": "2025-12-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17401025277488636.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/407?forceMode=1",
    "title": "纵横女频“新爽文”主题征文",
    "start_time": "2025-02-21",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17401172182238349.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/406?forceMode=1",
    "title": "女频快闪征文2025第5期：心跳狙击",
    "start_time": "2025-02-21",
    "end_time": "2025-12-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17398691134355437.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/404?forceMode=1",
    "title": "【青春正当时】—— 纵横女频校园征文！",
    "start_time": "2025-02-21",
    "end_time": "2025-07-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17398710028272225.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/403?forceMode=1",
    "title": "男频大征文2025第2期：青春热血",
    "start_time": "2025-02-20",
    "end_time": "2025-08-20",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17398469895656033.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/399?forceMode=1",
    "title": "男频快闪征文2025第7期：卡bug变强",
    "start_time": "2025-02-18",
    "end_time": "2025-12-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17397817458984627.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/397?forceMode=1",
    "title": "男频快闪征文2025第6期：都市恋爱",
    "start_time": "2025-02-17",
    "end_time": "2025-12-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17398671106435781.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/396?forceMode=1",
    "title": "女频快闪征文2025第4期：奇妙幻想",
    "start_time": "2025-02-15",
    "end_time": "2025-08-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17393523075353274.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/394?forceMode=1",
    "title": "男频特殊征文2025第1期：躺平变强",
    "start_time": "2025-02-14",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17391536303636587.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/392?forceMode=1",
    "title": "男频快闪征文2025第5期：末世题材",
    "start_time": "2025-02-14",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17389826097783638.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/390?forceMode=1",
    "title": "男频快闪征文2025第4期：“都市高武",
    "start_time": "2025-02-07",
    "end_time": "2025-04-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17376058503927030.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/384?forceMode=1",
    "title": "纵横中文网2025年度征文—— 【万象集萃：年度史诗盛宴】",
    "start_time": "2025-02-01",
    "end_time": "2026-01-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17377142465864726.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/389?forceMode=1",
    "title": "纵横中文网“烽火戏诸侯同人作品”征文—— 剑来！",
    "start_time": "2025-01-24",
    "end_time": "2025-07-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17376012618566008.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/385?forceMode=1",
    "title": "女频快闪征文2025第3期：奶团萌宝",
    "start_time": "2025-01-23",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17373538972315081.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/379?forceMode=1",
    "title": "女频快闪征文2025第2期：年代岁月",
    "start_time": "2025-01-22",
    "end_time": "2025-08-18",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17370182608268367.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/378?forceMode=1",
    "title": "男频快闪征文2025第2期：“反派文”",
    "start_time": "2025-01-15",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17370152643525114.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/377?forceMode=1",
    "title": "男频快闪征文2025第1期：不正经搞笑",
    "start_time": "2025-01-15",
    "end_time": "2025-03-31",
    "remain_txt": "27天后结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17369341976504653.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/376?forceMode=1",
    "title": "男频大征文2025第1期：历史",
    "start_time": "2025-01-15",
    "end_time": "2025-12-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17358700287492751.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/374?forceMode=1",
    "title": "女频快闪征文2025第1期：幸福对照组",
    "start_time": "2025-01-03",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17358819742748167.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/375?forceMode=1",
    "title": "女频特殊征文第2期：新媒体",
    "start_time": "2025-01-01",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17331259117740196.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/372?forceMode=1",
    "title": "架空历史- 穿越就是为了当皇帝征文",
    "start_time": "2024-11-22",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17352032795267556.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/371?forceMode=1",
    "title": "男频重生年代征文：年代之约",
    "start_time": "2024-11-22",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17352787054404506.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/370?forceMode=1",
    "title": "古代情缘特殊征文",
    "start_time": "2024-11-15",
    "end_time": "2025-06-30",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17304310336769729.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/369?forceMode=1",
    "title": "女频“新现言”超级大征文",
    "start_time": "2024-11-01",
    "end_time": "2025-12-31",
    "remain_txt": "",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17185947258648344.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/356?forceMode=1",
    "title": "七猫中文网男频“历史”征文",
    "start_time": "2024-04-16",
    "end_time": "2025-01-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17137748528646205.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/351?forceMode=1",
    "title": "七猫中文网女频“新媒体”征文",
    "start_time": "2024-04-22",
    "end_time": "2025-01-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17132462343572723.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/348?forceMode=1",
    "title": "七猫中文网男频“历史”征文",
    "start_time": "2024-04-16",
    "end_time": "2025-01-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17129169126728691.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/347?forceMode=1",
    "title": "七猫男频\u0026奇妙小说网玄幻仙侠大征文",
    "start_time": "2024-04-12",
    "end_time": "2025-01-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17129134409044306.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/346?forceMode=1",
    "title": "七猫男频\u0026奇妙小说网玄幻仙侠大征文",
    "start_time": "2024-04-12",
    "end_time": "2025-01-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17127397722782870.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/345?forceMode=1",
    "title": "七猫中文网女频“古言·风向标”征文",
    "start_time": "2024-04-10",
    "end_time": "2025-01-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17253294713333223.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/366?forceMode=1",
    "title": "七猫中文网男女频征文-脑洞上新了",
    "start_time": "2024-09-01",
    "end_time": "2024-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17247512416674550.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/365?forceMode=1",
    "title": "《连通古今》七猫\u0026奇妙男频历史征文",
    "start_time": "2024-08-25",
    "end_time": "2024-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17246671365698593.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/364?forceMode=1",
    "title": "七猫\u0026奇妙男频定制征文——神话新绎",
    "start_time": "2024-08-22",
    "end_time": "2024-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17225628684386583.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/361?forceMode=1",
    "title": "七猫中文网男频“日常种田风历史”征文",
    "start_time": "2024-07-26",
    "end_time": "2024-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17191910492285161.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/357?forceMode=1",
    "title": "七猫中文网男频“学霸题材”征文",
    "start_time": "2024-06-20",
    "end_time": "2024-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17158386478933386.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/352?forceMode=1",
    "title": "七猫×奇妙男频征文——毕业季",
    "start_time": "2024-04-26",
    "end_time": "2024-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17210217475274095.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/360?forceMode=1",
    "title": "中国故事：人间烟火与万千值得 第五届七猫百万奖金现实题材征文大赛",
    "start_time": "2024-07-15",
    "end_time": "2024-12-15",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17207579004530291.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/359?forceMode=1",
    "title": "“海纳百川，情谊无疆” ——第五届七猫现实题材征文大赛特别单元",
    "start_time": "2024-07-15",
    "end_time": "2024-12-15",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17207633699558790.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/358?forceMode=1",
    "title": "中国故事：人间烟火与万千值得 第五届七猫百万奖金现实题材征文大赛",
    "start_time": "2024-07-15",
    "end_time": "2024-12-15",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17134927243115306.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/350?forceMode=1",
    "title": "纵横女生网“第一人称”中短篇征文【虐恋情深】",
    "start_time": "2024-04-19",
    "end_time": "2024-12-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17103119085650233.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/343?forceMode=1",
    "title": "七猫中文网女频快闪征文",
    "start_time": "2023-11-20",
    "end_time": "2024-09-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17185879128626877.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/355?forceMode=1",
    "title": "纵横女生网第二期快闪征文【夏夜骤雨·短篇小说】",
    "start_time": "2024-06-17",
    "end_time": "2024-09-17",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17098861102883594.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/340?forceMode=1",
    "title": "奇妙小说网快闪征文",
    "start_time": "2024-04-10",
    "end_time": "2024-07-10",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17030641088789425.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/337?forceMode=1",
    "title": "七猫中文网男频快闪征文",
    "start_time": "2023-12-15",
    "end_time": "2024-07-10",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16934512794915196.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/328?forceMode=1",
    "title": "【创意之大，宇宙装不下】七猫中文网女频特色题材第九季征文",
    "start_time": "2023-09-01",
    "end_time": "2024-02-29",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16999405714324306.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/335?forceMode=1",
    "title": "奇妙小说网第六期“恋爱日常（脑洞向）”主题征文",
    "start_time": "2023-11-20",
    "end_time": "2024-01-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17024472328299972.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/336?forceMode=1",
    "title": "星穹之下，万物可书！“星穹之旅”游戏快闪征文",
    "start_time": "2023-12-22",
    "end_time": "2024-01-22",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16931900468084959.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/323?forceMode=1",
    "title": "【废柴修仙，凤逆九天】七猫中文网女频特色题材第八季征文",
    "start_time": "2023-07-13",
    "end_time": "2024-01-15",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16856004966703060.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/320?forceMode=1",
    "title": "【妙手仁心】七猫中文网女频特色题材第七季征文",
    "start_time": "2023-06-01",
    "end_time": "2023-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/17001251603604068.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/333?forceMode=1",
    "title": "七猫X伊利轻慕【美出东方好气色】特色微短篇征文",
    "start_time": "2023-11-20",
    "end_time": "2023-12-19",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16932055818362874.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/325?forceMode=1",
    "title": "七猫男频第一人称文征稿“百态人生”",
    "start_time": "2023-09-01",
    "end_time": "2023-11-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16792919576897328.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/104?forceMode=1",
    "title": "第四届现实题材征文大赛",
    "start_time": "2023-03-31",
    "end_time": "2023-11-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16847254605440912.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/319?forceMode=1",
    "title": "【遇事不决，靠玄学】七猫中文网女频第六季特色题材征文",
    "start_time": "2023-05-22",
    "end_time": "2023-11-20",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16933909835108087.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/327?forceMode=1",
    "title": "奇妙一周年主题征文",
    "start_time": "2023-09-01",
    "end_time": "2023-11-10",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16884392872381676.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/322?forceMode=1",
    "title": "七猫中文网“今古相融”男频特色题材征文",
    "start_time": "2023-07-07",
    "end_time": "2023-09-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16802258721815085.jpg",
    "url":
        "https://m-activity.zongheng.com/activity/zhengwen/detail/317?forceMode=1",
    "title": "【纵横女生网】新媒体保底征文活动",
    "start_time": "2023-03-31",
    "end_time": "2023-09-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "纵横中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16792778224505096.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/105?forceMode=1",
    "title": "【我是女王】七猫中文网女频“年代·权谋”征文",
    "start_time": "2023-03-20",
    "end_time": "2023-09-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16880159371758407.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/321?forceMode=1",
    "title": "奇妙小说网第五期“学院派”主题征文",
    "start_time": "2023-06-30",
    "end_time": "2023-09-10",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16842025229997165.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/318?forceMode=1",
    "title": "奇妙小说网第四届“畅想直播”主题征文",
    "start_time": "2023-04-28",
    "end_time": "2023-06-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16698019706004696.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/18?forceMode=1",
    "title": "【甜婚虐爱】七猫中文网女频新媒体征文开始了！",
    "start_time": "2022-11-30",
    "end_time": "2023-05-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16683937514407167.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/16?forceMode=1",
    "title": "七猫中文网女频第四季“宫闱宅斗”特色题材征文",
    "start_time": "2022-11-14",
    "end_time": "2023-05-15",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16771225251400615.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/103?forceMode=1",
    "title": "奇妙小说网第三届仙侠题材征文",
    "start_time": "2023-03-01",
    "end_time": "2023-04-10",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16605272806199364.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/14?forceMode=1",
    "title": "七猫中文网女频特色题材第三季“超级甜宠”征文",
    "start_time": "2022-08-15",
    "end_time": "2023-02-15",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn-miao.qimao.com/bookimg/zww/backendstatic/images/other/16723701293653928.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/102?forceMode=1",
    "title": "奇妙小说网第二届科幻题材征文",
    "start_time": "2023-01-01",
    "end_time": "2023-02-10",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16578665008724987.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/13?forceMode=1",
    "title": "第三届现实题材征文大赛",
    "start_time": "2022-06-30",
    "end_time": "2022-12-31",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn-miao.qimao.com/bookimg/zww/backendstatic/images/other/16665891771852515.jpg",
    "url": "https://m-miao.qimao.com/activity/zhengwen/detail/101?forceMode=1",
    "title": "奇妙小说网第一届历史题材征文",
    "start_time": "2022-10-25",
    "end_time": "2022-11-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "奇妙小说网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16606503877392132.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/2?forceMode=1",
    "title": "第二届现实题材征文大赛",
    "start_time": "2021-09-01",
    "end_time": "2022-11-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16578665514943519.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/8?forceMode=1",
    "title": "女频特色题材第二季“反套路古言”征文",
    "start_time": "2022-04-01",
    "end_time": "2022-09-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16578670502035431.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/7?forceMode=1",
    "title": "男频第一期特色题材“直播文”征文",
    "start_time": "2022-04-01",
    "end_time": "2022-06-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16578670479459692.jpg",
    "url": "https://m.qimao.com/activity/zhengwen/detail/3?forceMode=1",
    "title": "女频第一季“幻想言情”题材征文活动",
    "start_time": "2022-01-01",
    "end_time": "2022-06-30",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
  {
    "image_link":
        "https://cdn.qimao.com/bookimg/zww/backendstatic/images/other/16702174545602193.png",
    "url":
        "https://xiaoshuo.wtzw.com/app-h5/freebook/article/20210517/8?forceMode=1",
    "title": "第一届现实题材征文大赛",
    "start_time": "2020-12-01",
    "end_time": "2021-04-01",
    "remain_txt": "已结束",
    "sort": "0",
    "client_name": "七猫中文网"
  },
];
