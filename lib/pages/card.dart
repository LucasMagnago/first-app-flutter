import 'package:first_app_flutter/model/card_detail.dart';
import 'package:first_app_flutter/pages/card_detail.dart';
import 'package:first_app_flutter/repositories/card_detail_repository.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final CardDetailRepository _cardDetailRepository = CardDetailRepository();
  CardDetail? _cardDetail;

  @override
  void initState() {
    super.initState();
    carregarDados();
  }

  void carregarDados() async {
    _cardDetail = await _cardDetailRepository.get();

    setState(() {
      _cardDetail = _cardDetail;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: _cardDetail == null
              ? const LinearProgressIndicator()
              : InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CardDetailPage(
                            cardDetail: _cardDetail!,
                          );
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Hero(
                        tag: _cardDetail!.id,
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
                                      _cardDetail!.url,
                                      height: 25,
                                    ),
                                    Text(
                                      _cardDetail!.title,
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
                                  _cardDetail!.text,
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
