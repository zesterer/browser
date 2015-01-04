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
src/events.vala \
src/hamburger.vala \

#src/toolbar.vala \

echo "Build complete, but not necessarily successful."
