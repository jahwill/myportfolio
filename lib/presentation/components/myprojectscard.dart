import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/presentation/gallery/image_gallery_model.dart';
import 'package:myportfolio/presentation/gallery/project_gallery.dart';

import '../../deffault_settings.dart';
import '../userdetails.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData ttheme = Theme.of(context);
    return Column(
      children: [
        SizedBox(
          height: kDeffaultpadding / 1.5,
        ),
        MyProjectsHolder(
            imgaddress: imageaddress[0],
            title: 'Fintech Inclusion',
            subtitle:
                'A Mobile App that provides jobs for users also an avenue to make'
                ' transactions '),
        MyProjectsHolder(
          imgaddress: imageaddress[2],
        ),
        MyProjectsHolder(
            imgaddress: imageaddress[1],
            title: 'Fintech '
                'Insure'),
        SizedBox(
          height: 30,
        ),
        MyProjectsHolder(imgaddress: imageaddress[3], title: 'Security Agency'),
        MyProjectsHolder(
          imgaddress: imageaddress[10],
          title: 'Accounting '
              'App',
          subtitle: 'a mobile app that provides financial accounting '
              'services to it\'s users. This App is designed with flutter ',
        ),
        MyProjectsHolder(
          imgaddress: imageaddress[11],
        ),
        MyProjectsHolder(
          imgaddress: imageaddress[12],
        ),
        TextButton(
            onPressed: () {
              addimages();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProjectGallery()));
            },
            child: Text(
              'See More '
              '...',
              style: ttheme.textTheme.subtitle2
                  .copyWith(color: Colors.blue[800], fontSize: 17),
            )),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class MyNewProjectsForBgScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.8),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          mySpacer(height: kDeffaultpadding * 1.5),
          SubTitleClass(
              subtitle: 'My Works ',
              rulerColor: Color(0xF3039291),
              txtColor: canvasColor),
          mySpacer(height: kDeffaultpadding / 1.5),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyProjectsHolder(
                  sWidth: 250,
                  sHeight: 400,
                  imgaddress: imageaddress[0],
                ),
                SizedBox(
                  width: kDeffaultpadding,
                ),
                MyProjectsHolder(
                  sWidth: 250,
                  sHeight: 400,
                  imgaddress: imageaddress[2],
                ),
              ],
            ),
          ),
          Text(
            'Fin-tech Job'.toUpperCase(),
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: canvasColor,
                ),
          ),
          Text(
            'A Mobile App that provides jobs for users also an avenue to make'
            ' transactions ',
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                  color: canvasColor,
                ),
          ),
          SizedBox(
            height: kDeffaultpadding * 1.5,
          ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyProjectsHolder(
                  sWidth: 250,
                  sHeight: 400,
                  imgaddress: imageaddress[1],
                ),
                SizedBox(
                  width: kDeffaultpadding,
                ),
                MyProjectsHolder(
                  sWidth: 250,
                  sHeight: 400,
                  imgaddress: imageaddress[3],
                ),
              ],
            ),
          ),
          Text(
            'Fin-tech Insure'.toUpperCase(),
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: canvasColor,
                ),
          ),
          Text(
            'A Financial Insurance App',
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                  color: canvasColor,
                ),
          ),
          SizedBox(
            height: kDeffaultpadding,
          ),
          TextButton(
              onPressed: () {
                addimages();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProjectGallery()));
              },
              child: Text(
                'See More '
                '...',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(color: Colors.blue[800], fontSize: 17),
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class MyProjectsHolder extends StatelessWidget {
  const MyProjectsHolder({
    Key key,
    @required this.imgaddress,
    this.title,
    this.subtitle,
    this.textStyle,
    this.sWidth,
    this.sHeight,
  }) : super(key: key);

  final TextStyle textStyle;
  final String imgaddress;
  final String title;
  final String subtitle;
  final double sWidth;
  final double sHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          color: Colors.transparent,
          shadowColor: Colors.blueGrey[800],
          elevation: 11,
          child: Container(
            height: sHeight ?? 350.0,
            width: sWidth ?? null,
            constraints: BoxConstraints(maxWidth: sWidth ?? 280),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              imgaddress,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: title == null ? 5 : kDeffaultpadding / 1.5,
        ),
        Padding(
          padding: const EdgeInsets.only(right: kDeffaultpadding),
          child: Text(
            title == null ? '' : title.toUpperCase(),
            style: textStyle ??
                Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[800],
                    ),
          ),
        ),
        SizedBox(
          height: kDeffaultpadding / 5,
        ),
        subtitle == null
            ? SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(
                    right: kDeffaultpadding,
                    left: kDeffaultpadding * 1.5,
                    bottom: 30),
                child: Text(
                  subtitle == null ? '' : subtitle,
                  style: textStyle ??
                      Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey[800],
                          ),
                ),
              )
      ],
    );
  }
}
