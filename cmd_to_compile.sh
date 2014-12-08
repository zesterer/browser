#!/usr/bin/sh

#1)
valac -o leon --pkg gee-1.0 --pkg gio-2.0 --pkg gtk+-3.0 --pkg webkit2gtk-4.0 --target-glib=2.32 -g --vapidir=vapi \
src/main.vala \
src/consts.vala \
src/window.vala \
src/headerbar.vala \
src/navbar.vala \
src/entrybar.vala \
src/configbar.vala \
src/tabnotebook.vala \
src/tabbox.vala \
src/tabtab.vala \

#src/toolbar.vala \

#Optional! Add:
#-X -lm -X -l -X csfml-graphics -X -l -X csfml-window -X -l -X csfml-system -X -l -X csfml-audio -g -X -fsanitize=address -o nilts
#above for debugging!

#2)
#clang -c \
#src/main.c \
#src/consts.c \
#-I/usr/include/glib-2.0
# -Ilibraries/CSFML-2.1/include -Ilibraries/gee/include -Ilibraries/glib2/include

#3)
#gcc -o leon \
#main.o \
#consts.o \
#-lgee-1.0 -lgobject-2.0 -lglib-2.0 -lm

#NOT NEEDED AT THE MOMENT:
#-LCSFML-2.1/lib/gcc

echo "Build complete, but not necessarily successful."

#4)
#rm *.o
