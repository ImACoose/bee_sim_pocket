import 'package:bee_sim_pocket_info/constants.dart';
import 'package:bee_sim_pocket_info/features/bees/models/bee_model.dart';
import 'package:bee_sim_pocket_info/features/bees/screens/bee_description_screen.dart';
import 'package:flutter/material.dart';

class BeeScreen extends StatelessWidget {
  const BeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
                height: 40,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: Rarity.values
                        .map((rarity) => Row(children: [
                              InfoChip(
                                  label: rarity.name,
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black),
                              SizedBox(
                                width: 8.0,
                              )
                            ]))
                        .toList())),
            Divider(),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Column(
                  children: [
                    BeeRow(
                      isEvenIndex: index == 0 || index % 2 == 0,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class BeeRow extends StatelessWidget {
  final bool isEvenIndex;

  const BeeRow({
    required this.isEvenIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BeeDescriptionScreen(
                      beeName: Bee(
                        name: 'Basic bee',
                        imagePathName: 'assets/images/basicbee.webp',
                        rarity: Rarity.common,
                        beeColor: BeeColor.colorless,
                      ),
                    )));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 8.0,
                  )
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isEvenIndex
                    ? SizedBox(
                        width: 170,
                        height: 140,
                        child: Image.asset('assets/images/basicbee.webp'))
                    : const SizedBox.shrink(),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic bee',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.black38),
                      ),
                      Row(
                        children: [
                          ChoiceChip(
                              visualDensity: VisualDensity(
                                  vertical: VisualDensity.minimumDensity,
                                  horizontal: VisualDensity.minimumDensity),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onSelected: (val) {},
                              backgroundColor:
                                  Theme.of(context).chipTheme.backgroundColor,
                              labelPadding: EdgeInsets.zero,
                              label: Text('Colorless',
                                  style: TextStyle(
                                      color: Theme.of(context).hintColor)),
                              selected: false),
                          SizedBox(
                            width: 4.0,
                          ),
                          SizedBox(
                            width: 80,
                            child: InfoChip(
                              label: 'common',
                              textColor: ColorConstants.basicChipColours.text,
                              backgroundColor:
                                  ColorConstants.basicChipColours.background,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                !isEvenIndex
                    ? SizedBox(
                        width: 170,
                        height: 140,
                        child: Image.asset('assets/images/basicbee.webp'))
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoChip extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;

  const InfoChip({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        visualDensity: VisualDensity(
            vertical: VisualDensity.minimumDensity + 1,
            horizontal: VisualDensity.minimumDensity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: backgroundColor,
        labelPadding: EdgeInsets.zero,
        label: Text(
          label,
          style: TextStyle(color: textColor),
        ),
        selected: false,
        onSelected: (val) {});
  }
}
