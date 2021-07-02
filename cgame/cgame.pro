QT -= gui

TEMPLATE = lib
DEFINES += CGAME_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

QMAKE_CC = g++
QMAKE_CXX = g++

DESTDIR = ./../debug/baseq3/

HEADERS += \
    ../code/cgame/cg_local.h \
    ../code/cgame/cg_public.h \
    ../code/game/bg_public.h \
    ../code/qcommon/q_shared.h \
     ../code/cgame/killhistory.h

SOURCES += \
    ../code/cgame/cg_consolecmds.cpp \
    ../code/cgame/cg_draw.cpp \
    ../code/cgame/cg_drawtools.cpp \
    ../code/cgame/cg_effects.cpp \
    ../code/cgame/cg_ents.cpp \
    ../code/cgame/cg_event.cpp \
    ../code/cgame/cg_info.cpp \
    ../code/cgame/cg_localents.cpp \
    ../code/cgame/cg_main.cpp \
    ../code/cgame/cg_marks.cpp \
    ../code/cgame/cg_particles.cpp \
    ../code/cgame/cg_players.cpp \
    ../code/cgame/cg_playerstate.cpp \
    ../code/cgame/cg_predict.cpp \
    ../code/cgame/cg_scoreboard.cpp \
    ../code/cgame/cg_servercmds.cpp \
    ../code/cgame/cg_snapshot.cpp \
    ../code/cgame/cg_syscalls.cpp \
    ../code/cgame/cg_view.cpp \
    ../code/cgame/cg_weapons.cpp \
    ../code/game/bg_misc.cpp \
    ../code/game/bg_pmove.cpp \
    ../code/game/bg_slidemove.cpp \
    ../code/qcommon/q_math.c \
    ../code/qcommon/q_shared.c \
    ../code/cgame/killhistory.cpp

