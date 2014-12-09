namespace Consts
{
	public const string name = "Leon";
	public const string version = "0.0.1";
	public const uint8[] version_values = {0, 0, 1};
	public const string name_full = Consts.name + " " + Consts.version;
	
	public const int min_width = 650;
	public const int min_height = 400;
	
	public const bool debug = true;
	
	public void output(string message)
	{
		stdout.printf(message + "\n");
	}
}
