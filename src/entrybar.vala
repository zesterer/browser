class EntryBar : Gtk.Box
{
	public Window root;
	public HeaderBar mother;
	
	public Gtk.Button infobutton;
	public Gtk.Entry entry;
	
	public EntryBar(Window root, HeaderBar mother)
	{
		this.root = root;
		this.mother = mother;
		
		//this.mother.natural_width = 1500;
		//this.set_size_request(256, 32);
		
		this.infobutton = new Gtk.Button();
		this.infobutton.set_image(new Gtk.Image.from_icon_name("dialog-information-symbolic", Gtk.IconSize.MENU));
		this.add(this.infobutton);
		this.infobutton.show();
		
		this.entry = new Gtk.Entry();
		this.entry.set_vexpand(true);
		this.entry.set_valign(Gtk.Align.FILL);
		this.entry.set_hexpand(true);
		this.add(this.entry);
		
		this.get_style_context().add_class("linked");
		
		this.show_all();
	}
	
	public override void get_preferred_width(out int min, out int nat)
	{
		Gtk.Widget? parent = get_parent();
		
		min = -1;
     
		if (parent != null)
		{
			Gtk.Allocation alloc;
			parent.get_allocation(out alloc);
			// never be larger than 66% of parent widget
			var width = alloc.width * 0.8 - 256;
			nat = (int)width;
		}
		else
		{
			nat = 868;
		}
	}
}

	


