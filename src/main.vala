class Application : GLib.Object
{
	public Gee.ArrayList<Window> windowlist;
	
	public Application(string[] args)
	{
		this.windowlist = new Gee.ArrayList<Window>();
		this.addWindow();
	}
	
	public Window addWindow()
	{
		Window window = new Window(this, this);
		window.show_all();
		this.windowlist.add(window);
		
		return window;
	}
	
	public void run()
	{
		Gtk.main();
	}
}

static int main(string[] args)
{
	Gtk.init(ref args);
	
	Application application = new Application(args);
	application.run();
	
	return 0;
}
