class EntryBar : Gtk.Box
{
	public Window root;
	public HeaderBar mother;
	
	public Gtk.Entry entry;
	
	public EntryBar(Window root, HeaderBar mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.entry = new Gtk.Entry();
		this.entry.set_vexpand(true);
		this.entry.set_valign(Gtk.Align.FILL);
		this.entry.set_hexpand(true);
		this.entry.set_placeholder_text("Search here...");
		
		this.entry.set_icon_from_icon_name(Gtk.EntryIconPosition.PRIMARY, "dialog-information-symbolic");
		this.entry.set_icon_from_icon_name(Gtk.EntryIconPosition.SECONDARY, "edit-find");
		
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

	


