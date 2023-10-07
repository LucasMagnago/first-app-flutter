import 'package:first_app_flutter/model/card_detail.dart';
import 'package:first_app_flutter/pages/card_detail.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final CardDetail _cardDetail = CardDetail(
    1,
    'Card',
    'https://lp.dio.me/wp-content/uploads/2023/03/LOGO-DIO-COLOR.png',
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CardDetailPage(
                      cardDetail: _cardDetail,
                    );
                  },
                ),
              );
            },
            child: Column(
              children: [
                Hero(
                  tag: _cardDetail.id,
                  child: Card(
                    elevation: 16,
                    shadowColor: Colors.purple,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                _cardDetail.url,
                                height: 25,
                              ),
                              Text(
                                _cardDetail.title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            _cardDetail.text,
                            textAlign: TextAlign.justify,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Ler mais',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
