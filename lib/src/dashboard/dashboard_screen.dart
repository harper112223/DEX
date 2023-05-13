import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/model/dashboard/dashboard_model.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/assets.gen.dart';
import 'package:merchant_app/src/dashboard/cubit/dashboard_cubit.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';

import 'package:merchant_app/src/transaction/transaction_builder.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:merchant_app/gen/colors.gen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
          title: " Dashboard",
          backgroundColor: ColorName.primaryRed,
          textColor: Colors.white),
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          if (state is DashboardLoadingState) {
            return LoadingScreen(loadingMessage: state.message);
          } else if (state is DashboardLoadedState) {
            final model = state.model;
            return SingleChildScrollView(
              physics: const ScrollPhysics(),
              primary: true,
              child: Column(
                children: [
                  Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SizedBox(
                          child: Assets.images.dashboardCurve.image(
                            fit: BoxFit.fitWidth,
                            width: size.width * 0.9,
                            height: size.height * 0.25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: size.width * 0.9,
                            height: size.height * 0.26,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Balance',
                                    style:
                                        themeData.textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  AutoSizeText(
                                    model.walletBalance != null
                                        ? "\$ ${model.walletBalance?.balance ?? '\$ 0.00'}"
                                        : "\$ 0.00",
                                    maxFontSize: 28.0,
                                    minFontSize: 22.0,
                                    maxLines: 1,
                                    style:
                                        themeData.textTheme.headline4!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: themeData.colorScheme.onSurface,
                                    ),
                                  ),
                                  const SizedBox(height: 4.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  (model.transactions != null)
                      ? ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: model.transactions?.length,
                          itemBuilder: (context, index) {
                            final item = model.transactions?[index];
                            return TransactionBuilder(
                              onTap: () => _showMyDialog(
                                size: size,
                                model: item,
                                context: context,
                              ),
                              leadingText: item!.paymentStatus?[0] ?? 'A',
                              title: item.description ?? 'Other',
                              description: item.createdAt
                                  .toString()
                                  .formatDate(defaultFormat: 'MMMM dd, yyyy'),
                              amount:
                                  """${item.currency ?? ''} ${item.amount!} """,
                            );
                          },
                        )
                      : const Center(
                          child: Text("No transaction found"),
                        ),
                ],
              ),
            );
          } else {
            return const Text("Something went wrong");
          }
        },
      ),
    );
  }

  Future<void> _showMyDialog({
    required Size size,
    required Transaction? model,
    required BuildContext context,
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                const SizedBox(height: 8.0),
                const Center(
                  child: Text(
                    'Transaction Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                _listBuilder(
                  size: size,
                  title: 'amount',
                  description: model?.amount ?? '',
                ),
                _listBuilder(
                  size: size,
                  title: 'created At',
                  description: model?.createdAt
                          .toString()
                          .formatDate(defaultFormat: 'MMMM dd, yyyy') ??
                      '',
                ),
                _listBuilder(
                  size: size,
                  title: 'user Id',
                  description: '${model?.userId ?? ''}',
                ),
                _listBuilder(
                  size: size,
                  title: 'currency',
                  description: model?.currency ?? '',
                ),
                _listBuilder(
                  size: size,
                  title: 'description',
                  description: model?.description ?? '',
                ),
                _listBuilder(
                  size: size,
                  title: 'payment Status',
                  description: model?.paymentStatus ?? '',
                ),
                _listBuilder(
                  size: size,
                  title: 'transaction Id',
                  description: model?.transactionId ?? '',
                ),
                _listBuilder(
                  size: size,
                  title: 'transaction Status',
                  description: model?.transactionStatus ?? '',
                ),
                const SizedBox(height: 10.0),
                PrimaryButton(
                  width: size.width * 0.3,
                  text: 'Close',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 5.0),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _listBuilder({
    required Size size,
    required String title,
    required String description,
    double fontSize = 12.0,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
          ),
          const Text(":"),
          const SizedBox(width: 12.0),
          Expanded(
            flex: 2,
            child: Text(
              description == '' ? 'NA' : description.toUpperCase(),
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: description.contains('-')
                    ? ColorName.primaryRed
                    : description.contains('+')
                        ? Colors.green
                        : Colors.black,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
