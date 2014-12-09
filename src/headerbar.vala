class HeaderBar : Gtk.HeaderBar
{
	public Application root;
	public Window mother;
	
	public NavBar navbar;
	public ConfigBar configbar;
	
	public EntryBar entrybar;
	
	public HeaderBar(Application root, Window mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.set_title(Consts.name);
		this.set_subtitle(Consts.version);
		this.set_show_close_button(true);
		
		this.navbar = new NavBar(this.root, this);
		this.pack_start(this.navbar);
		
		this.configbar = new ConfigBar(this.root, this);
		this.pack_end(this.configbar);
		
		this.entrybar = new EntryBar(this.root, this);
		this.set_custom_title(this.entrybar);
		
		this.size_allocate.connect(()=> {
		// let gtk do the drawing, dont force two.
		this.entrybar.queue_resize_no_redraw(); });
		
		this.show_all();
	}
}
