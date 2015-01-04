class HamburgerPopover
{
	public Window root;
	public ConfigBar mother;
	
	public Gtk.Popover popover;
	public Gtk.Grid grid;
	public Gtk.Button test;
	
	public HamburgerPopover(Window root, ConfigBar mother, Gtk.Button button)
	{
		this.root = root;
		this.mother = mother;
		
		this.popover = new Gtk.Popover(button);
		
		this.grid = new Gtk.Grid();
		this.grid.set_size_request(200, 200);
		this.grid.set_border_width(8);
		this.grid.set_hexpand(true);
		this.grid.set_valign(Gtk.Align.FILL);
		this.grid.set_vexpand(true);
		this.popover.add(this.grid);
		
		this.test = new Gtk.Button();
		this.grid.attach(this.test, 0, 0, 4, 1);
		
		//this.popover.show_all();
		this.grid.show_all();
	}
	
	public void localToggleVisible()
	{
		stdout.printf("Pressed!\n");
		if (this.popover.get_visible())
		{
			this.popover.hide();
		}
		else
		{
			this.popover.show_all();
		}
	}
}
