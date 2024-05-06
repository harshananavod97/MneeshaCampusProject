import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:voteproject/Widgets/TextComponent.dart';
import 'package:voteproject/constant/App_color.dart';

class VoteMainScreen extends StatefulWidget {
  const VoteMainScreen({super.key});

  @override
  State<VoteMainScreen> createState() => _VoteMainScreenState();
}

class _VoteMainScreenState extends State<VoteMainScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
          child: Column(
            children: [
              ElectionFiled(
                size: size,
                Englishname: "jhjjj==",
                SinhalaName: "bhhhsfsfs",
                Tamilname: "hhhsgs",
                electionimage: "call.png",
                electionnum: "14",
              ),
              ElectionFiled(
                size: size,
                Englishname: "jhjjj==",
                SinhalaName: "bhhhsfsfs",
                Tamilname: "hhhsgs",
                electionimage: "call.png",
                electionnum: "14",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ElectionFiled extends StatefulWidget {
  ElectionFiled({
    super.key,
    required this.electionimage,
    required this.size,
    required this.Englishname,
    required this.SinhalaName,
    required this.Tamilname,
    required this.electionnum,
  });
  String Tamilname, SinhalaName, Englishname, electionnum, electionimage;

  final Size size;

  @override
  State<ElectionFiled> createState() => _ElectionFiledState();
}

class _ElectionFiledState extends State<ElectionFiled> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: widget.size.width / 4.25,
          width: widget.size.width / 1.85,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // You can set the color of the border here
              width: 2.0, // You can set the width of the border here
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextComponent(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 14,
                        text: widget.SinhalaName),
                    TextComponent(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 14,
                        text: widget.Englishname),
                    TextComponent(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 14,
                        text: widget.Tamilname),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'images/' + widget.electionimage,
                  height: 50,
                  width: 50,
                )
              ],
            ),
          ),
        ),
        Container(
          height: widget.size.width / 4.25,
          width: widget.size.width / 5,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // You can set the color of the border here
              width: 2.0, // You can set the width of the border here
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextComponent(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontsize: 20,
                    text: widget.electionnum),
              )
            ],
          ),
        ),
        Container(
            height: widget.size.width / 4.25,
            width: widget.size.width / 4.25,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // You can set the color of the border here
                width: 2.0, // You can set the width of the border here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (_isChecked) {
                      _isChecked = false;
                    } else {
                      _isChecked = true;
                    }
                  });
                },
                child: Container(
                    height: 20,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors
                            .black, // You can set the color of the border here
                        width: 2.0, // You can set the width of the border here
                      ),
                    ),
                    child: _isChecked
                        ? Image.asset(
                            'images/kathire.png',
                            height: 40,
                            width: 40,
                          )
                        : Container()),
              ),
            ))
      ],
    );
  }
}
