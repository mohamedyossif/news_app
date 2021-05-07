import 'package:flutter/cupertino.dart';

class PageModel
{
  String _title;
  String _body;
  IconData _iconData;
  String _image;
  PageModel(this._iconData,this._title,this._body,this._image);
  String get title=>_title;
   String get body=>_body;
   String get image=>_image;
    IconData get iconData=>_iconData;
}