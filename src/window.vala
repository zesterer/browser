class Window : Gtk.Window
{
	public Application root;
	public Application mother;
	
	public Gtk.Box windowbox;
	public HeaderBar headerbar;
	//public Toolbar toolbar;
	public TabNotebook tabnotebook;
	
	public Window(Application root, Application mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.set_title(Consts.name_full);
		this.destroy.connect(Gtk.main_quit);
		this.set_size_request(Consts.min_width, Consts.min_height);
		
		this.headerbar = new HeaderBar(this.root, this);
		this.headerbar.show_all();
		this.set_titlebar(this.headerbar);
		
		this.windowbox = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
		this.add(this.windowbox);
		
		//this.toolbar = new Toolbar(this.root, this);
		//this.windowbox.add(this.toolbar);
		
		this.tabnotebook = new TabNotebook(this.root, this);
		this.windowbox.add(this.tabnotebook);
		
		this.show_all();
	}
}
