class NavBar : Gtk.Box
{
	public Application root;
	public HeaderBar mother;
	
	public Gtk.Button back;
	public Gtk.Button forward;
	
	//Are we putting the refresh button linked to the back / forward buttons?
	//public Gtk.Button refreshbutton;
	
	public NavBar(Application root, HeaderBar mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.back = new Gtk.Button();
		this.add(this.back);
		this.back.set_image(new Gtk.Image.from_icon_name("go-previous-symbolic", Gtk.IconSize.MENU));
		this.forward = new Gtk.Button();
		this.forward.set_image(new Gtk.Image.from_icon_name("go-next-symbolic", Gtk.IconSize.MENU));
		this.add(this.forward);
		
		this.get_style_context().add_class("linked");
		
		this.show_all();
	}
}
