class EntryBar : Gtk.Box
{
	public Application root;
	public HeaderBar mother;
	
	public Gtk.Entry entry;
	
	public EntryBar(Application root, HeaderBar mother)
	{
		this.root = root;
		this.mother = mother;
		
		//this.mother.natural_width = 1500;
		//this.set_size_request(1000, 32);
		
		this.entry = new Gtk.Entry();
		this.entry.set_hexpand(true);
		this.entry.set_halign(Gtk.Align.FILL);
		this.set_hexpand(true);
		this.set_halign(Gtk.Align.FILL);
		this.add(this.entry);
		
		this.show_all();
	}
	
	public override void get_preferred_width(out int minimum_width, out int natural_width)
	{
		//if (minimum_width > 0)
			//minimum_width = -1;

		//if (natural_width > 0)
			//natural_width = 1000;
	}
}

class Entry : Gtk.Entry
{
	public Application root;
	public HeaderBar mother;
	
	public Entry(Application root, HeaderBar mother)
	{
		this.root = root;
		this.mother = mother;
		
		//this.mother.natural_width = 1500;
		//this.set_size_request(1000, 32);
		
		this.set_hexpand(true);
		this.set_halign(Gtk.Align.FILL);
		
		this.show_all();
	}
	
	public override void get_preferred_width(out int minimum_width, out int natural_width)
	{
		//Gtk.Widget.get_preferred_width(out minimum_width, out natural_width);
		//if (minimum_width > 0)
			//minimum_width = -1;

		//if (natural_width > 0)
			//natural_width = 1000;
	}
}
