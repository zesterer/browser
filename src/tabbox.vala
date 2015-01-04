class TabBox : Gtk.Box
{
	public Window root;
	public TabNotebook mother;
	
	public Gtk.ScrolledWindow scrolledwindow;
	public WebKit.WebView webview;
	
	public TabTab tabtab;
	
	//public int page_number;
	
	public TabBox(Window root, TabNotebook mother)
	{
		this.root = root;
		this.mother = mother;
		
		//this.page_number = page_number;
		this.tabtab = new TabTab(this.root, this);
		
		this.set_hexpand(true);
		this.set_vexpand(true);	
		
		this.scrolledwindow = new Gtk.ScrolledWindow(null, null);
		this.scrolledwindow.set_hexpand(true);
		this.scrolledwindow.set_vexpand(true);
		this.add(this.scrolledwindow);
		
		this.webview = new WebKit.WebView();
		this.webview.load_uri("http://www.google.com/");
		this.webview.load_changed.connect(this.update);
		this.scrolledwindow.add(this.webview);
		
		this.show_all();
	}
	
	public void close (Gtk.Button button)
	{
		this.mother.remove_page(this.mother.page_num(this));
	}
	
	public void update(WebKit.LoadEvent load_event = WebKit.LoadEvent.FINISHED)
	{
		if (this.mother.get_current_page() == this.mother.page_num(this) && (load_event == WebKit.LoadEvent.FINISHED || load_event == WebKit.LoadEvent.COMMITTED))
		{
			//Back and forward button greying
			this.root.headerbar.navbar.back.set_sensitive(this.webview.can_go_back());
			this.root.headerbar.navbar.forward.set_sensitive(this.webview.can_go_forward());
			
			//The URL bar
			this.root.headerbar.entrybar.entry.set_text(this.webview.uri);
			
			//The tab text
			this.tabtab.label.set_text(this.webview.title);
		}
	}
	
	public void goBack()
	{	
		if (this.webview.can_go_back())
			this.webview.go_back();
		
		this.update();
	}
	
	public void goForward()
	{	
		if (this.webview.can_go_forward())
			this.webview.go_forward();
		
		this.update();
	}
}
