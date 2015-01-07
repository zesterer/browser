Leon
====

This is Leon, the (hopefully) soon-to-be default Evolve OS browser. If Ikey agrees to adopt it.

![alt tag](https://raw.githubusercontent.com/evolve-os/browser/master/git-stuff/Screenshot%20from%202015-01-07%2021:03:30.png)

## FAQ

### Why does Evolve OS need a new browser?

Larger browsers like Firefox, Google Chrome and Opera just don't cut it. Evolve OS is about simplicity and tidiness. Since none of these properly use Gtk-3, 
they don't really suit Evolve's visual style either. Most users don't need a heavyweight like 'the big three'. But if they do, they need only install it.

### Why not use Epiphany? Or Midori? Or one of the other linux browsers?

Both Epiphany and Midori don't suit the goal that Evolve OS has. Epiphany is written in C, not Vala, and means that Evolve's desktop apps must hinge upon 
existing Gnome applications. Midori, primarily designed for Elementary OS, also ties Evolve to Elementary. Since neither Elementary OS nor most distributions 
that run Gnome Shell even use Evolve's package manager, it makes sense to create our own little browser that suits the needs of most users.

### Won't a browser be hard to maintain with up-and-coming web technologies?

No. Leon, just like Epiphany and Midori, uses WebKit and so benefits from all of the features built progressively into WebKit. All rendering occurs in WebKit, 
so we don't have to worry about maintaining it.

### What's the REAL reason you think Evolve needs it's own browser?

We have plans to integrate new and unique features into Leon that don't exist in any other browsers. These features will be directly dependent on other Evolve 
OS libraries and applications, so it's important that Evolve's web browser fits with this. More details on these features will emerge soon...

### How do I compile the thing?

Sorry. It doesn't use make, autotools or cmake yet. I'll be honest - I'm too lazy. But this repository includes a x86_64 binary, and if you really want you can 
recompile it using the bash script included. To do this cd to the directory, and run:

`sh cmd_to_compile.sh`

Just make sure you have the correct libraries installed! (As of yet, I don't believe that Evolve OS includes a WebKit package, although this IS coming, don't 
worry!)

~ Barry Smith
