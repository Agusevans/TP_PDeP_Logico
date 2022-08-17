/*
|- TP Lógico  "Mi Cursada Universitaria"
|- Grupo: 12 🐊
|- Enunciado: https://docs.google.com/document/d/1Z9M0YY8dXWmd_8ANXCFvBen5pUFqTv4G55gbQqXqLuQ/edit
*/

% MATERIAS %

% 1
materiaPesada(Materia) :-
  integradora(Materia),
  materia(Materia, 6).

materiaPesada(Materia) :-
  materia(Materia, HorasPorSemana),
  HorasPorSemana >=4,
  not(integradora(Materia)).

% 2.a
materiaInicial(Materia) :- 
  materia(Materia, _),
  not(correlativaDe(_, Materia)).

% 2.b
necesariaParaCursar(Materia, Correlativa) :-
  correlativaDe(Materia, Correlativa).
  
necesariaParaCursar(MateriaA, MateriaC) :-
  correlativaDe(MateriaA, MateriaB),
  necesariaParaCursar(MateriaB, MateriaC).

% 2.c
habilitaACursar(Materia,MateriasHabilitadas) :-
  materia(Materia,_),
  findall(Habilitada,necesariaParaCursar(Materia,Habilitada),MateriasHabilitadas). 
% Casos de Prueba: 

materia(analisis_Matematico_I, 5).
materia(algebra_y_Geometria_Analitica, 5).
materia(matematica_Discreta, 3).
materia(sistemas_y_Organizaciones, 3).
materia(algoritmos_y_Estructuras_de_Datos, 5).
materia(arquitectura_de_Computadoras, 4).
materia(ingenieria_y_Sociedad, 2).
materia(quimica, 3).
materia(fisica_I, 5).
materia(analisis_Matematico_II, 5).
materia(probabilidad_y_Estadistica, 3).
materia(analisis_de_Sistemas, 6).
materia(sintaxis_y_Semantica_de_los_Lenguajes, 4).
materia(paradigmas_de_Programacion, 4).
materia(ingles_I, 2).
materia(sistemas_de_Representacion, 3).
materia(sistemas_Operativos, 4).
materia(disenio_de_Sistemas, 6).
materia(fisica_II, 5).
materia(matematica_Superior, 4).
materia(gestion_de_Datos, 4).
materia(legislacion, 2).
materia(economia, 3).
materia(ingles_II, 2).
materia(redes_de_Informacion, 4).
materia(administracion_de_Recursos, 6).
materia(investigacion_Operativa, 5).
materia(simulacion, 4).
materia(ingenieria_de_Software, 3).
materia(teoria_de_Control, 3).
materia(comunicaciones, 4).
materia(proyecto_Final, 6).
materia(inteligencia_Artificial, 3).
materia(administracion_Gerencial, 3).
materia(sistemas_de_Gestion, 4).

integradora(sistemas_y_Organizaciones).
integradora(analisis_de_Sistemas).
integradora(disenio_de_Sistemas).
integradora(administracion_de_Recursos).
integradora(proyecto_Final).

correlativaDe(sistemas_y_Organizaciones, analisis_de_Sistemas).
correlativaDe(algoritmos_y_Estructuras_de_Datos, analisis_de_Sistemas).
correlativaDe(analisis_Matematico_I, analisis_Matematico_II).
correlativaDe(algebra_y_Geometria_Analitica, analisis_Matematico_II).
correlativaDe(matematica_Discreta, sintaxis_y_Semantica_de_los_Lenguajes).
correlativaDe(algoritmos_y_Estructuras_de_Datos, sintaxis_y_Semantica_de_los_Lenguajes).
correlativaDe(matematica_Discreta, paradigmas_de_Programacion).
correlativaDe(algoritmos_y_Estructuras_de_Datos, paradigmas_de_Programacion).
correlativaDe(analisis_Matematico_I, probabilidad_y_Estadistica).
correlativaDe(algebra_y_Geometria_Analitica, probabilidad_y_Estadistica).
correlativaDe(analisis_de_Sistemas, disenio_de_Sistemas).
correlativaDe(paradigmas_de_Programacion, disenio_de_Sistemas).
correlativaDe(matematica_Discreta, sistemas_Operativos).
correlativaDe(algoritmos_y_Estructuras_de_Datos, sistemas_Operativos).
correlativaDe(arquitectura_de_Computadoras, sistemas_Operativos).
correlativaDe(analisis_Matematico_I, fisica_II).
correlativaDe(fisica_I, fisica_II).
correlativaDe(analisis_de_Sistemas, economia).
correlativaDe(analisis_de_Sistemas, gestion_de_Datos).
correlativaDe(paradigmas_de_Programacion, gestion_de_Datos).
correlativaDe(sintaxis_y_Semantica_de_los_Lenguajes, gestion_de_Datos).
correlativaDe(ingles_I, ingles_II).
correlativaDe(analisis_Matematico_II, matematica_Superior).
correlativaDe(analisis_de_Sistemas, legislacion).
correlativaDe(ingenieria_y_Sociedad, legislacion).
correlativaDe(disenio_de_Sistemas, administracion_de_Recursos).
correlativaDe(sistemas_Operativos, administracion_de_Recursos).
correlativaDe(economia, administracion_de_Recursos).
correlativaDe(probabilidad_y_Estadistica, ingenieria_de_Software).
correlativaDe(disenio_de_Sistemas, ingenieria_de_Software).
correlativaDe( gestion_de_Datos, ingenieria_de_Software).
correlativaDe(quimica, teoria_de_Control).
correlativaDe(matematica_Superior, teoria_de_Control).
correlativaDe(arquitectura_de_Computadoras, comunicaciones).
correlativaDe(analisis_Matematico_II, comunicaciones).
correlativaDe(fisica_II, comunicaciones).
correlativaDe(sistemas_Operativos, redes_de_Informacion).
correlativaDe(comunicaciones, redes_de_Informacion).
correlativaDe(probabilidad_y_Estadistica, investigacion_Operativa).
correlativaDe(matematica_Superior, investigacion_Operativa).
correlativaDe(probabilidad_y_Estadistica, simulacion).
correlativaDe(matematica_Superior, simulacion).
correlativaDe(investigacion_Operativa, inteligencia_Artificial).
correlativaDe(simulacion, inteligencia_Artificial).
correlativaDe(administracion_de_Recursos, administracion_Gerencial).
correlativaDe(investigacion_Operativa, administracion_Gerencial).
correlativaDe(administracion_de_Recursos, sistemas_de_Gestion).
correlativaDe(investigacion_Operativa, sistemas_de_Gestion).
correlativaDe(simulacion, sistemas_de_Gestion).
correlativaDe(legislacion, proyecto_Final).
correlativaDe(administracion_de_Recursos, proyecto_Final).
correlativaDe(redes_de_Informacion, proyecto_Final).
correlativaDe(ingenieria_de_Software, proyecto_Final).

% ESTUDIANTES

% 3.a
firmoCursada(Alumno,Materia):-
  cursada(Alumno,Materia,Nota, _),
  Nota >= 6.

aproboFinal(Alumno, Materia) :-
  final(Alumno, Materia, Nota),
  Nota >= 6.

dioLibre(Alumno, Materia) :-
  final(Alumno, Materia, _),
  not(firmoCursada(Alumno, Materia)).

cursoMateria(Alumno, Materia) :-
  firmoCursada(Alumno, Materia).

cursoMateria(Alumno, Materia) :-
  dioLibre(Alumno, Materia),
  aproboFinal(Alumno, Materia).

% 3.b 
promocionoCursada(Alumno,Materia):-
  cursada(Alumno,Materia,Nota, _),
  Nota >= 8.

aproboMateria(Alumno, Materia) :-
  aproboFinal(Alumno, Materia).

aproboMateria(Alumno, Materia) :-
  promocionoCursada(Alumno, Materia).

% Casos de Prueba:

cursada(vero, analisis_Matematico_I, 8, anual(2000)).
cursada(vero, algebra_y_Geometria_Analitica, 8, anual(2000)).
cursada(vero, matematica_Discreta, 8, anual(2000)).
cursada(vero, sistemas_y_Organizaciones, 8, anual(2000)).
cursada(vero, algoritmo_y_Estructuras_de_Datos, 8, anual(2000)).
cursada(vero, arquitectura_de_Computadoras, 8, anual(2000)).
cursada(vero, ingenieria_y_Sociedad, 8, anual(2000)).
cursada(vero, quimica, 8, anual(2000)).
cursada(vero, fisica_I, 8, anual(2000)).
cursada(vero, ingles_I, 8, anual(2000)).
cursada(vero, sistemas_de_Representacion, 8, anual(2000)).

:- discontiguous cursada/4. %%Para evitar warnings
:- discontiguous final/3.

final(vero, ingles_II, 10).

cursada(alan, sistemas_y_Organizaciones, 6, anual(2000)). 
cursada(alan, analisis_Matematico_I, 6, anual(2000)).
cursada(alan, analisis_de_Sistemas, 2, anual(2000)).
cursada(alan, analisis_de_Sistemas, 9, anual(2000)).
cursada(alan, fisica_I, 2, anual(2000)).

final(alan, sistemas_y_Organizaciones, 4).
final(alan, ingles_I, 2).

% MODALIDADES %

% 4
anioLectivoCursada(Alumno, Materia, AnioLectivo) :-
  cursada(Alumno, Materia, _ , TipoCursada),
  anioLectivo(TipoCursada, AnioLectivo).

anioLectivo(anual(AnioLectivo), AnioLectivo).
anioLectivo(cuatrimestral(AnioLectivo, _), AnioLectivo).
anioLectivo(verano(Anio), AnioLectivo) :- 
  AnioLectivo is Anio - 1 .

% 5
recurso(Alumno, Materia) :-
  cursada(Alumno, Materia, _ , Modalidad1),
  cursada(Alumno, Materia, _ , Modalidad2),
  Modalidad1 \= Modalidad2.

% Casos de Prueba:

cursada(alumnoModalidades, sistemas_y_Organizaciones, 8, anual(2015)).
cursada(alumnoModalidades, quimica, 5, cuatrimestral(2015, 1)).
cursada(alumnoModalidades, quimica, 8, cuatrimestral(2015, 2)).
cursada(alumnoModalidades, fisica_II, 8, verano(2016)).

% PERFILES DE ESTUDIANTES %

% 6.a
sinDescanso(Alumno) :-
  cursada(Alumno,_,_,_),
  forall(recurso(Alumno, Materia), cursoInmediatamente(Alumno, Materia)).

cursoInmediatamente(Alumno, Materia) :-
  cursada(Alumno, Materia, _, Modalidad1),
  cursada(Alumno, Materia, _, Modalidad2),
  consecutivas(Modalidad1, Modalidad2),
  Modalidad1 \= Modalidad2.

consecutivas(Modalidad1, Modalidad2) :- %Habria que usar polimorfisrmo para el predicado...
  cursada(_, _, _, Modalidad1),
  cursada(_, _, _, Modalidad2),
  noCuatrimestal(Modalidad1),
  noCuatrimestal(Modalidad2),
  aniosLectivosConsecutivos(Modalidad1, Modalidad2).

consecutivas(cuatrimestral(anio, 1), cuatrimestral(anio, 2)).

consecutivas(cuatrimestral(anio, 2), cuatrimestral(anioSiguiente, 1)) :-
  aniosConsecutivos(anio, anioSiguiente).

consecutivas(Modalidad1, cuatrimestral(anioSiguiente, 1)) :-
  noCuatrimestal(Modalidad1),
  anioLectivo(Modalidad1, anio),
  aniosConsecutivos(anio, anioSiguiente).

consecutivas(cuatrimestral(anio, 2), Modalidad2) :-
  noCuatrimestal(Modalidad2),
  anioLectivo(Modalidad2, anioSiguiente),
  aniosConsecutivos(anio, anioSiguiente).

aniosLectivosConsecutivos(Modalidad1, Modalidad2) :-
  anioLectivo(Modalidad1, anio),
  anioLectivo(Modalidad2, anioSiguiente),
  aniosConsecutivos(anio, anioSiguiente).

aniosConsecutivos(Anio, AnioSiguiente)  :-
  AnioSiguiente is Anio + 1.

noCuatrimestal(Modalidad) :- not(esCuatrimestal(Modalidad)).

esCuatrimestal(cuatrimestral(_,_)).

% 6.b
invictus(Alumno) :-
  cursada(Alumno, _, _, _),
  not(recurso(Alumno, _)).

% 6.c
repechaje(Alumno) :-
  cursada(Alumno, Materia, _ , anual(Anio)),
  cursada(Alumno, Materia, Nota , cuatrimestral(AnioSiguiente, 1) ),
  aniosConsecutivos(Anio,AnioSiguiente),
  Nota >= 8.

% 6.d
buenasCursadas(Alumno) :-
  cursada(Alumno, _, _, _),
  forall(cursada(Alumno, Materia, _, _), promocionoCursada(Alumno, Materia)).

% 6.e
veraniego(Alumno) :-
  cursada(Alumno, _, _, _),
  forall(anioLectivoCursada(Alumno, _, AnioLectivo), hayCursadaEnVerano(Alumno, AnioLectivo)).

hayCursadaEnVerano(Alumno, AnioLectivo) :-
  cursada(Alumno, _, _, verano(AnioCalendario)),
  AnioCalendario is AnioLectivo + 1.

% 7 
unicoPerfil(Alumno) :-
  cumplePerfil(Alumno, Perfil),
  not(cumpleOtro(Alumno, Perfil)).

cumplePerfil(Alumno, sinDescanso) :- sinDescanso(Alumno).
cumplePerfil(Alumno, invictus) :- invictus(Alumno).
cumplePerfil(Alumno, repechaje) :- repechaje(Alumno).
cumplePerfil(Alumno, buenasCursadas) :- buenasCursadas(Alumno).
cumplePerfil(Alumno, veraniego) :- veraniego(Alumno).

cumpleOtro(Alumno, Perfil) :-
  cumplePerfil(Alumno, OtroPerfil),
  Perfil \= OtroPerfil.

% Casos de Prueba:

cursada(muchasRecursadas, quimica, 2, anual(2016)).
cursada(muchasRecursadas, quimica, 3, cuatrimestral(2017, 1)).
cursada(muchasRecursadas, quimica, 4, cuatrimestral(2017, 2)).
cursada(muchasRecursadas, quimica, 5, anual(2018)).
cursada(muchasRecursadas, fisica_I, 2, verano(2018)).
cursada(muchasRecursadas, fisica_I, 2, anual(2018)).

cursada(algunasRecursadas, quimica, 2, anual(2016)).
cursada(algunasRecursadas, quimica, 3, cuatrimestral(2017, 2)).
cursada(algunasRecursadas, fisica_I, 2, anual(2017)).
cursada(algunasRecursadas, fisica_I, 10, cuatrimestral(2018, 1)).

cursada(veraniego, quimica, 6, anual(2016)).
cursada(veraniego, fisica_I, 6, verano(2017)).
cursada(veraniego, matematica_Discreta, 2, anual(2017)).
cursada(veraniego, matematica_Discreta, 8, verano(2018)).

cursada(atr, quimica, 10, cuatrimestral(2016, 1)).
cursada(atr, fisica_I, 10, cuatrimestral(2016, 2)).

% DESESPEÑO ACADEMICO %

% 8
desempenioAcademico(Alumno, Desempenio) :-
  cursada(Alumno,_,_,_),
  findall(Valoracion, valoracionDeCursada(Alumno,Valoracion), Valoraciones),
  promedioDeNotasDeCursada(Valoraciones,Desempenio).
  
valoracionDeCursada(Alumno,Valoracion) :-
  cursada(Alumno, _ , Nota, Modalidad),
  valoracion(Nota, Modalidad, Valoracion).

valoracion(Nota, anual(_), Nota).

valoracion(Nota, cuatrimestral(_, Cuatrimestre), Valoracion) :-
  Valoracion is (Nota - Cuatrimestre).

valoracion(Nota, verano(Anio), Valoracion) :-
  impar(Anio),
  Valoracion is (Nota / 2).

valoracion(_, verano(Anio), 5) :- par(Anio).

par(Valor) :- restoDeDividirPor2(Valor,0).

impar(Valor) :- not(par(Valor)).

restoDeDividirPor2(Valor, Resto) :-
  Resto is (Valor mod 2).

promedioDeNotasDeCursada(Notas,Promedio):-
  sumlist(Notas, SumaDeNotas),
  length(Notas, CantidadDeNotas),
  Promedio is (SumaDeNotas / CantidadDeNotas).
