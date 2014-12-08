class TabNotebook : Gtk.Notebook
{
	public Application root;
	public Window mother;
	
	public Gee.ArrayList<TabBox> tablist;
	
	public TabNotebook(Application root, Window mother)
	{
		this.root = root;
		this.mother = mother;
		
		this.tablist = new Gee.ArrayList<TabBox>();
		this.addTab();
		
		this.show_all();
	}
	
	public TabBox addTab()
	{
		TabBox tabbox = new TabBox(this.root, this);
		this.tablist.add(tabbox);
		this.append_page(tabbox, tabbox.tabtab);
		
		return tabbox;
	}
}
