public class PlayerData
{
	public int Id { get; set; }
	public string? Firstname { get; set; }
	public string? Lastname { get; set; }

	public int Size { get; set; } = 150; // en cm

    public bool Man { get; set; } = true;

	public int PhotoIndex { get; set; } = 1;

    public string GetPhotoPath()
    {
        return "img/" + (Man ? "man" : "woman") + PhotoIndex + ".jpg";

    }
}
