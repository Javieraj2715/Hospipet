import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'carrito_model.dart';
export 'carrito_model.dart';

class CarritoWidget extends StatefulWidget {
  const CarritoWidget({super.key});

  @override
  State<CarritoWidget> createState() => _CarritoWidgetState();
}

class _CarritoWidgetState extends State<CarritoWidget> {
  late CarritoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarritoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: const Color(0xFFF2FCEB),
        appBar: AppBar(
          backgroundColor: const Color(0xFFDCEAC7),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Carrito de Compras',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 24.0,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Valor',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    StreamBuilder<List<SubProductosRecord>>(
                      stream: querySubProductosRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<SubProductosRecord> textSubProductosRecordList =
                            snapshot.data!;

                        return Text(
                          functions
                              .totalList(textSubProductosRecordList
                                  .map((e) => e.subTotal)
                                  .toList())
                              .toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: 136.0,
                height: 128.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://picsum.photos/seed/490/600',
                    width: 221.0,
                    height: 211.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: StreamBuilder<List<SubProductosRecord>>(
                  stream: querySubProductosRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<SubProductosRecord> listViewSubProductosRecordList =
                        snapshot.data!;

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewSubProductosRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewSubProductosRecord =
                            listViewSubProductosRecordList[listViewIndex];
                        return StreamBuilder<ProductosRecord>(
                          stream: ProductosRecord.getDocument(
                              listViewSubProductosRecord.producto!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }

                            final containerProductosRecord = snapshot.data!;

                            return Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            containerProductosRecord
                                                .imagenProducto,
                                            width: 97.0,
                                            height: 105.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        containerProductosRecord.nombreProducto,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Precio: ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerProductosRecord
                                                  .precioUnitario
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            functions
                                                .calcularSubtotal(
                                                    containerProductosRecord
                                                        .precioUnitario,
                                                    listViewSubProductosRecord
                                                        .cantidad)
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              currentUserReference?.id,
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await listViewSubProductosRecord
                                                    .reference
                                                    .delete();
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await listViewSubProductosRecord
                                                    .reference
                                                    .update({
                                                  ...createSubProductosRecordData(
                                                    subTotal: functions.restarSubtotal(
                                                        listViewSubProductosRecord
                                                            .subTotal,
                                                        containerProductosRecord
                                                            .precioUnitario),
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'cantidad':
                                                          FieldValue.increment(
                                                              -1),
                                                    },
                                                  ),
                                                });
                                              },
                                              child: Icon(
                                                Icons.remove_circle,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              listViewSubProductosRecord
                                                  .cantidad
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await listViewSubProductosRecord
                                                    .reference
                                                    .update({
                                                  ...createSubProductosRecordData(
                                                    subTotal: functions.sumarSubtotal(
                                                        listViewSubProductosRecord
                                                            .subTotal,
                                                        containerProductosRecord
                                                            .precioUnitario),
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'cantidad':
                                                          FieldValue.increment(
                                                              1),
                                                    },
                                                  ),
                                                });
                                              },
                                              child: Icon(
                                                Icons.add_circle,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('btnOk pressed ...');
                        },
                        text: 'Ok',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFCEE27D),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF464646),
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
