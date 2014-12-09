class TabTab : Gtk.Box
{
	public Window root;
	public TabBox mother;
	
	public Gtk.Image image;
	public Gtk.Label label;
	public Gtk.Button closebutton;
	
	public TabTab(Window root, TabBox mother)
	{
		//this.set_orientation(Gtk.Orientation.HORIZONTAL);
		this.root = root;
		this.mother = mother;
		
		//this.set_border_width(2);
		//this.set_hexpand(true);
		this.set_spacing(4);
		//this.set_border_width(4);
		this.set_halign(Gtk.Align.CENTER);
		
		this.image = new Gtk.Image.from_icon_name("content-loading-symbolic", Gtk.IconSize.MENU);
		this.add(this.image);
		
		this.label = new Gtk.Label("A Tab");
		this.set_child_packing(this.label, true, true, 4, Gtk.PackType.START);
		this.add(this.label);
		
		this.closebutton = new Gtk.Button();
		this.set_child_packing(this.closebutton, true, true, 4, Gtk.PackType.START);
		this.closebutton.set_image(new Gtk.Image.from_icon_name("window-close-symbolic", Gtk.IconSize.MENU));
		this.closebutton.clicked.connect(this.mother.close);
		this.add(this.closebutton);
		
		this.show_all();
	}
}
