import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/model/transaction/transaction_model.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';

import 'package:merchant_app/src/transaction/cubit/transaction_cubit.dart';
import 'package:merchant_app/src/transaction/transaction_builder.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/widget/xenio_search.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Transaction?>? allTransactonModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<TransactionCubit>().transaction();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Transaction",
        backgroundColor: ColorName.primaryRed,
        textColor: Colors.white,
      ),
      body: BlocBuilder<TransactionCubit, TransactionState>(
        builder: (context, state) {
          if (state is TransactionLoadingState) {
            return LoadingScreen(loadingMessage: state.message);
          } else if (state is SearchResultLoaded) {
            if (state.models == null || state.models!.isEmpty) {
              return Column(
                children: [
                  SizedBox(height: size.height * 0.06),
                  XenioSearch(
                    onEditingComplete: () {
                      context.read<TransactionCubit>().searchTransaction(
                            allTransactonModel,
                            _controller.text,
                          );
                    },
                    controller: _controller,
                  ),
                  const SizedBox(height: 10.0),
                  const Center(
                    child: Text("No Search result found"),
                  ),
                ],
              );
            } else {
              {
                return SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  primary: true,
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.06),
                      XenioSearch(
                        onEditingComplete: () {
                          context.read<TransactionCubit>().searchTransaction(
                                allTransactonModel,
                                _controller.text,
                              );
                        },
                        controller: _controller,
                      ),
                      const SizedBox(height: 10.0),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.models?.length,
                        itemBuilder: (BuildContext context, int index) {
                          final model = state.models?[index];
                          return TransactionBuilder(
                            onTap: () =>
                                _showMyDialog(size: size, model: model),
                            leadingText:
                                state.models![index]?.paymentStatus?[0] ?? 'A',
                            title: state.models?[index]?.description ?? 'Other',
                            description: state.models![index]!.createdAt
                                .toString()
                                .formatDate(defaultFormat: 'MMMM dd, yyyy'),
                            amount:
                                """${state.models![index]?.currency ?? ''} ${state.models![index]?.amount!} """,
                          );
                        },
                      ),
                    ],
                  ),
                );
              }
            }
          } else if (state is TransactionLoadedState) {
            allTransactonModel = state.model.transactions;
            if (state.model.transactions == null ||
                state.model.transactions!.isEmpty) {
              return const Center(child: Text("No transaction found"));
            } else {
              return SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.05),
                    XenioSearch(
                      onEditingComplete: () {
                        context.read<TransactionCubit>().searchTransaction(
                              state.model.transactions,
                              _controller.text.toLowerCase(),
                            );
                      },
                      controller: _controller,
                    ),
                    const SizedBox(height: 10.0),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.model.transactions?.length,
                      itemBuilder: (BuildContext context, int index) {
                        final model = state.model.transactions?[index];
                        return TransactionBuilder(
                          onTap: () => _showMyDialog(size: size, model: model),
                          leadingText: model!.amount!.contains('+') ? 'C' : 'D',
                          title: model.description ?? 'Other',
                          description: model.createdAt
                              .toString()
                              .formatDate(defaultFormat: 'MMMM dd, yyyy'),
                          amount:
                              """${model.currency ?? ''} ${model.amount ?? ''} """,
                        );
                      },
                    ),
                  ],
                ),
              );
            }
          } else {
            return const Center(
              child: Text("Something went wrong"),
            );
          }
        },
      ),
    );
  }

  Future<void> _showMyDialog({
    required Size size,
    required Transaction? model,
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
