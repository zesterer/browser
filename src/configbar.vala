class ConfigBar : Gtk.Box
{
	public Application root;
	public HeaderBar mother;
	
	public Gtk.Button bookmark;
	public Gtk.Button menu;
	
	public ConfigBar(Application root, HeaderBar mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.bookmark = new Gtk.Button();
		this.add(this.bookmark);
		this.bookmark.set_image(new Gtk.Image.from_icon_name("non-starred-symbolic", Gtk.IconSize.MENU));
		this.menu = new Gtk.Button();
		this.menu.set_image(new Gtk.Image.from_icon_name("open-menu-symbolic", Gtk.IconSize.MENU));
		this.add(this.menu);
		
		this.bookmark.set_halign(Gtk.Align.END);
		this.menu.set_halign(Gtk.Align.END);
		this.set_halign(Gtk.Align.END);
		
		this.get_style_context().add_class("linked");
		
		this.show_all();
	}
}
