class Window : Gtk.Window
{
	public Application root;
	public Application mother;
	
	public Events event_handler;
	
	public Gtk.Box windowbox;
	public HeaderBar headerbar;
	//public Toolbar toolbar;
	public TabNotebook tabnotebook;
	
	public Window(Application root, Application mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.event_handler = new Events(this);
		
		this.set_title(Consts.name_full);
		this.destroy.connect(Gtk.main_quit);
		this.set_size_request(Consts.min_width, Consts.min_height);
		
		this.headerbar = new HeaderBar(this, this);
		this.headerbar.show_all();
		this.set_titlebar(this.headerbar);
		
		this.windowbox = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
		this.add(this.windowbox);
		
		//this.toolbar = new Toolbar(this.root, this);
		//this.windowbox.add(this.toolbar);
		
		this.tabnotebook = new TabNotebook(this, this);
		this.windowbox.add(this.tabnotebook);
		
		this.show_all();
	}
}
