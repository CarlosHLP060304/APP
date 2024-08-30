import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagaina_de_entrada_model.dart';
export 'pagaina_de_entrada_model.dart';

class PagainaDeEntradaWidget extends StatefulWidget {
  const PagainaDeEntradaWidget({super.key});

  @override
  State<PagainaDeEntradaWidget> createState() => _PagainaDeEntradaWidgetState();
}

class _PagainaDeEntradaWidgetState extends State<PagainaDeEntradaWidget> {
  late PagainaDeEntradaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagainaDeEntradaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFF200),
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              tabletLandscape: false,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.53, -0.52),
                  child: Text(
                    'EuroTech',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFF00488E),
                          fontSize: 50.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.16),
                  child: Container(
                    width: double.infinity,
                    height: 340.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF00488E),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.78, 0.44),
                  child: Text(
                    'Bem-Vindo',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 35.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.79, 0.91),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('login_page');
                    },
                    text: 'Next ->',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFFFF200),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF00488E),
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Color(0xFF0B0404),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.65),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Seja Bem-vindo ao nosso app de Treinamento do grupo EuroFarma',
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            letterSpacing: 1.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.9, -0.54),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/6eb2d422-2b89-4f24-ac25-e23c2bb2eddc-removebg-preview.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
