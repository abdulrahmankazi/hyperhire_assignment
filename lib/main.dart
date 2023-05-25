import 'package:flutter/material.dart';
import 'package:oasis_exchange_app/util.dart';

/*  Abdul Rehman Kazi
*   abdulrahmankazi@live.com
*   (+91) 8237480141
* */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.grey.shade500,
        ),
      ),
      home: const OasisApp(),
    );
  }
}

class OasisApp extends StatefulWidget {
  const OasisApp({Key? key}) : super(key: key);

  @override
  State<OasisApp> createState() => _OasisAppState();
}

class _OasisAppState extends State<OasisApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '자유톡',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/icon/notification_icon.png'),
          ),
        ],
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatefulWidget {
  BodyWidget({Key? key}) : super(key: key);

  List<String> hashtagList = [
    '2023',
    'TODAYISMONDAY',
    'TOP',
    'POPS!',
    'WOW',
    'ROW',
  ];

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.only(
            right: 8.0,
            left: 8.0,
          ),
          child: Column(
            children: [
              HeaderWidget(
                name: '안녕 나 응애 ',
                height: '165 cm',
                weight: '58 kg',
              ),
              10.0.sH,
              const TextPostWidget(),
              10.0.sH,
              Wrap(
                children: List<Widget>.generate(
                  widget.hashtagList.length,
                  (index) => ChipWidget(widget.hashtagList[index]),
                ).toList(),
              ),
              10.0.sH,
              SizedBox(
                height: 250,
                child: Image.network(
                  'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
                ),
              ),
              const Divider(),
              5.0.sH,
              const LikeCommentWidget(),
              5.0.sH,
              const Divider(),
              10.0.sH,
              const CommentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextPostWidget extends StatelessWidget {
  const TextPostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        5.0.sH,
        const Text(
          '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?'
          '\n\n 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???'
          '\n\n 올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!'
          '',
        )
      ],
    );
  }
}

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_image.png'),
                backgroundColor: Colors.white,
              ),
              10.0.sW,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          '안녕 나 응애',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        5.0.sW,
                        Container(
                          padding: const EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: const Icon(
                            Icons.check_circle,
                            color: Color.fromRGBO(1, 185, 159, 1.0),
                          ),
                        ),
                        5.0.sW,
                        const Text('1일전'),
                      ],
                    ),
                    const Text(
                      '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!',
                    ),
                    Row(
                      children: [
                        const Icon(Icons.favorite_border_outlined),
                        5.0.sW,
                        const Text('5'),
                        20.0.sW,
                        const Icon(Icons.comment_outlined),
                        5.0.sW,
                        const Text('5'),
                      ],
                    ),
                    20.0.sH,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/second_profile_image.png'),
                          backgroundColor: Colors.white,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    '안녕 나 응애',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  5.0.sW,
                                  const Text('1일전'),
                                ],
                              ),
                              5.0.sH,
                              const Text(
                                '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!',
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.favorite_border_outlined),
                                  5.0.sW,
                                  const Text('5'),
                                  20.0.sW,
                                  const Icon(Icons.comment_outlined),
                                  5.0.sW,
                                  const Text('5'),
                                ],
                              ),
                              10.0.sH,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              10.0.sW,
            ],
          ),
          Row(
            children: [
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.image_outlined,
                    size: 24.0,
                  ),
                ),
              ),
              10.0.sW,
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Comment',
                  ),
                ),
              ),
              10.0.sW,
              GestureDetector(
                onTap: () {},
                child: const Text('등록'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LikeCommentWidget extends StatelessWidget {
  const LikeCommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Icon(Icons.favorite_border_outlined),
          5.0.sW,
          const Text('5'),
          20.0.sW,
          const Icon(Icons.comment_outlined),
          5.0.sW,
          const Text('5'),
          20.0.sW,
          const Icon(Icons.bookmark_outline_outlined),
          20.0.sW,
          const Icon(Icons.more_horiz_outlined),
        ],
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  String label;

  ChipWidget(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(1.0),
      margin: const EdgeInsets.only(
        right: 4.0,
        left: 4.0,
      ),
      child: Chip(
        backgroundColor: const Color.fromRGBO(247, 248, 250, 1.0),
        shape: StadiumBorder(
          side: BorderSide(color: Colors.grey.shade200),
        ),
        label: Text('#$label'),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  String name;
  String height;
  String weight;

  HeaderWidget(
      {required this.name, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_image.png'),
          backgroundColor: Colors.white,
        ),
        10.0.sW,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  5.0.sW,
                  Container(
                    padding: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Icon(
                      Icons.check_circle,
                      color: Color.fromRGBO(1, 185, 159, 1.0),
                    ),
                  ),
                  5.0.sW,
                  Text(
                    '1일전',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Text(
                '$height $weight',
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
        10.0.sW,
        Container(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            right: 12.0,
            left: 12.0,
          ),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(1, 185, 159, 1.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: const Text(
            '팔로우',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
