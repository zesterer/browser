class TabNotebook : Gtk.Notebook
{
	public Application root;
	public Window mother;
	
	public Gee.ArrayList<TabBox> tablist;
	public Gtk.Button newtabbutton;
	
	public TabNotebook(Application root, Window mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.set_scrollable(true);
		
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
	
	public TabBox addTab()
	{
		TabBox tabbox = new TabBox(this.root, this);
		this.tablist.add(tabbox);
		this.append_page(tabbox, tabbox.tabtab);
		this.set_current_page(this.page_num(tabbox));
		
		return tabbox;
	}
	
	public void newTab(Gtk.Button button)
	{
		this.addTab();
	}
}
