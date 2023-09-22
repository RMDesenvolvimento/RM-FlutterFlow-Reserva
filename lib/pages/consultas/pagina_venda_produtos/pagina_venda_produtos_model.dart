import '/components/menu_home_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaginaVendaProdutosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu_home_desktop component.
  late MenuHomeDesktopModel menuHomeDesktopModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuHomeDesktopModel = createModel(context, () => MenuHomeDesktopModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuHomeDesktopModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
