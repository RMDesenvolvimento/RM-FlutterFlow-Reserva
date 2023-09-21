import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaginaLoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for usuario widget.
  TextEditingController? usuarioController1;
  String? Function(BuildContext, String?)? usuarioController1Validator;
  // State field(s) for senha widget.
  TextEditingController? senhaController1;
  String? Function(BuildContext, String?)? senhaController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for usuario widget.
  TextEditingController? usuarioController2;
  String? Function(BuildContext, String?)? usuarioController2Validator;
  // State field(s) for senha widget.
  TextEditingController? senhaController2;
  String? Function(BuildContext, String?)? senhaController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    usuarioController1?.dispose();
    senhaController1?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    usuarioController2?.dispose();
    senhaController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
