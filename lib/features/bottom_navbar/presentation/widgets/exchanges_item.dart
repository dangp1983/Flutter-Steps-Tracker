import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_steps_tracker/features/bottom_navbar/data/models/exchange_history_model.dart';
import 'package:flutter_steps_tracker/utilities/constants/assets.dart';
import 'package:flutter_steps_tracker/utilities/constants/enums.dart';
import 'package:intl/intl.dart';

class ExchangesItem extends StatelessWidget {
  final ExchangeHistoryModel exchangeHistoryItem;

  const ExchangesItem({
    Key? key,
    required this.exchangeHistoryItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date =
        DateFormat.yMMMMd().format(DateTime.parse(exchangeHistoryItem.date));
    return ListTile(
      title: Text(
        exchangeHistoryItem.title == ExchangeHistoryTitle.exchange.title
            ? exchangeHistoryItem.title
            : '${exchangeHistoryItem.points} points ${exchangeHistoryItem.title}',
      ),
      subtitle: Text(
        date,
      ),
      leading: CachedNetworkImage(
        imageUrl:
            exchangeHistoryItem.title == ExchangeHistoryTitle.exchange.title
                ? AppAssets.exchangesIcon
                : AppAssets.rewardsIcon,
      ),
    );
  }
}
