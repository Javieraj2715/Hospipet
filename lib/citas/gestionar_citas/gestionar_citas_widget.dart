import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'gestionar_citas_model.dart';
export 'gestionar_citas_model.dart';

class GestionarCitasWidget extends StatefulWidget {
  const GestionarCitasWidget({super.key});

  @override
  State<GestionarCitasWidget> createState() => _GestionarCitasWidgetState();
}

class _GestionarCitasWidgetState extends State<GestionarCitasWidget> {
  late GestionarCitasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GestionarCitasModel());

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
        backgroundColor: const Color(0xFFEAF0E9),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed('NuevaCita');
          },
          backgroundColor: const Color(0xFF4B986C),
          elevation: 8.0,
          child: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFDCEAC7),
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: '',
              icon: const Icon(
                Icons.arrow_back_sharp,
                size: 15.0,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsets.all(0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFF4B986C),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          title: Text(
            'Gestión de citas',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  color: Colors.black,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFDCEAC7),
                ),
                child: Icon(
                  Icons.person_sharp,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<CitasRecord>>(
                          stream: queryCitasRecord(
                            queryBuilder: (citasRecord) =>
                                citasRecord.orderBy('fecha_hora'),
                          ),
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
                            List<CitasRecord> listViewCitasRecordList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewCitasRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewCitasRecord =
                                    listViewCitasRecordList[listViewIndex];
                                return Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            listViewCitasRecord.nombreDuenno,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            listViewCitasRecord.nombreMascota,
                                            'Nombre de la mascota:',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat(
                                                    "d/M h:mm a",
                                                    listViewCitasRecord
                                                        .fechaHora),
                                                'Detalle de la cita:',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                listViewCitasRecord.tipoSevicio,
                                                'Servicio:',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          listViewCitasRecord.estado,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            listViewCitasRecord
                                                .notasAdicionales,
                                            'Notas adicionales:',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            listViewCitasRecord
                                                .nombreVeterinario,
                                            'Veterinario asignado:',
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
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'EditarCita',
                                                    queryParameters: {
                                                      'paramCitas':
                                                          serializeParam(
                                                        listViewCitasRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'paramCitas':
                                                          listViewCitasRecord,
                                                    },
                                                  );
                                                },
                                                child: const Icon(
                                                  Icons.mode_edit_outline,
                                                  color: Color(0xFF4B986C),
                                                  size: 24.0,
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'AVISO'),
                                                                content: const Text(
                                                                    '¿Está seguro que desea eliminar la cita?'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: const Text(
                                                                        'Cancelar'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: const Text(
                                                                        'Confirmar'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    await listViewCitasRecord
                                                        .reference
                                                        .delete();
                                                  }
                                                },
                                                child: const Icon(
                                                  Icons.cancel_outlined,
                                                  color: Color(0xFF4B986C),
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
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
