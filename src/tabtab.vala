class TabTab : Gtk.Box
{
	public Application root;
	public TabBox mother;
	
	public Gtk.Image image;
	public Gtk.Label label;
	
	public TabTab(Application root, TabBox mother)
	{
		//this.set_orientation(Gtk.Orientation.HORIZONTAL);
		this.root = root;
		this.mother = mother;
		
		this.image = new Gtk.Image.from_icon_name("content-loading-symbolic", Gtk.IconSize.MENU);
		this.add(this.image);
		
		this.label = new Gtk.Label("A Tab");
		this.add(this.label);
		
		this.show_all();
	}
}
