class TabNotebook : Gtk.Notebook
{
	public Window root;
	public Window mother;
	
	public Gee.ArrayList<TabBox> tablist;
	public Gtk.Button newtabbutton;
	
	public TabNotebook(Window root, Window mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.set_scrollable(true);
		this.switch_page.connect(this.update);
		
		this.tablist = new Gee.ArrayList<TabBox>();
		this.addTab();
		
		this.newtabbutton = new Gtk.Button();
		this.newtabbutton.set_image(new Gtk.Image.from_icon_name("tab-new-symbolic", Gtk.IconSize.MENU));
		this.newtabbutton.show();
		this.newtabbutton.set_border_width(2);
		this.newtabbutton.set_relief(Gtk.ReliefStyle.NONE);
		this.newtabbutton.clicked.connect(this.newTab);
		this.set_action_widget(this.newtabbutton, Gtk.PackType.END);
		
		this.show_all();
	}
	
	public TabBox addTab(string url = "http://www.google.com/")
	{
		TabBox tabbox = new TabBox(this.root, this, url);
		this.tablist.add(tabbox);
		this.append_page(tabbox, tabbox.tabtab);
		this.set_current_page(this.page_num(tabbox));
		
		return tabbox;
	}
	
	public void newTab(Gtk.Button button)
	{
		this.addTab();
	}
	
	public void update(Gtk.Widget page, uint num)
	{
		TabBox tb = (TabBox)this.get_nth_page((int)num);
		//TabBox tb = (TabBox)this.get_current_page();
		tb.update();
	}
}
