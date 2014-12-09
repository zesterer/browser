class TabBox : Gtk.Box
{
	public Application root;
	public TabNotebook mother;
	
	public Gtk.ScrolledWindow scrolledwindow;
	public WebKit.WebView webview;
	
	public TabTab tabtab;
	
	public int page_number;
	
	public TabBox(Application root, TabNotebook mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.page_number = page_number;
		this.tabtab = new TabTab(this.root, this);
		
		this.set_hexpand(true);
		this.set_vexpand(true);	
		
		this.scrolledwindow = new Gtk.ScrolledWindow(null, null);
		this.scrolledwindow.set_hexpand(true);
		this.scrolledwindow.set_vexpand(true);
		this.add(this.scrolledwindow);
		
		this.webview = new WebKit.WebView();
		this.webview.load_uri("http://www.google.com/");
		this.scrolledwindow.add(this.webview);
		
		this.show_all();
	}
	
	public void close (Gtk.Button button)
	{
		this.mother.remove_page(this.mother.page_num(this));
	}
}
