class Toolbar : Gtk.Toolbar
{
	public Window root;
	public Window mother;
	
	public Gtk.ToolItem entryitem;
	public EntryBar entrybar;
	
	public Toolbar(Window root, Window mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.set_hexpand(true);
		
		this.entryitem = new Gtk.ToolItem();
		this.entryitem.set_hexpand(true);
		this.add(entryitem);
		this.entrybar = new EntryBar(this.root, this);
		this.entryitem.add(this.entrybar);
		
		this.show_all();
	}
}
