class Events : GLib.Object
{
	public Window window;
	
	public Events(Window window)
	{
		this.window = window;
	}
	
	public void backClicked(Gtk.Button button)
	{
		TabBox tb = (TabBox)this.window.tabnotebook.get_nth_page(this.window.tabnotebook.get_current_page());
		tb.goBack();
	}
	
	public void forwardClicked(Gtk.Button button)
	{
		TabBox tb = (TabBox)this.window.tabnotebook.get_nth_page(this.window.tabnotebook.get_current_page());
		tb.goForward();
	}
}
