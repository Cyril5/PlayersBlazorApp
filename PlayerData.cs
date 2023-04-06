using MySql.Data.MySqlClient;
using Dapper;
using PlayersBlazorApp.Pages;

public class PlayerData
{
	public int Id { get; set; }
	public string? Firstname { get; set; }
	public string? Lastname { get; set; }

	public int Size { get; set; } = 150; // en cm

    public bool Man { get; set; } = true;

	public int PhotoIndex { get; set; } = 1;

	public string? Sport { get; set; }

    public string GetPhotoPath()
    {
        return "img/" + (Man ? "man" : "woman") + PhotoIndex + ".jpg";
    }

	public void Update()
	{
		try
		{
			Players.connection.Open();
			var sql = "UPDATE Players SET firstname = @Firstname, lastname = @Lastname, size = @Size, man = @Man, photoIndex= @PhotoIndex, sport = @Sport WHERE Id = @Id";

			var cmd = new MySqlCommand(sql, Players.connection);
			cmd.Parameters.AddWithValue("@Id", Id);
			cmd.Parameters.AddWithValue("@Firstname", Firstname);
			cmd.Parameters.AddWithValue("@Lastname", Lastname);
			cmd.Parameters.AddWithValue("@Size", Size);
			cmd.Parameters.AddWithValue("@Man", Man);
			cmd.Parameters.AddWithValue("@PhotoIndex", PhotoIndex);
			cmd.Parameters.AddWithValue("@Sport", Sport);

			cmd.ExecuteNonQuery();

			Players.connection.Close();

		}catch (Exception ex) {
			Console.WriteLine(ex.Message);
		}

	}

	public void Remove()
	{
		Players.connection.Open();

		var sql = "DELETE FROM players WHERE id = @Id";
		var affectedRows = Players.connection.Execute(sql, new { Id });


		if (affectedRows == 0)
		{
			Console.WriteLine($"Player with ID {Id} not found in the database.");
		}
		else
		{
			Console.WriteLine($"Player with ID {Id} has been deleted from the database.");
		}

		Players.connection.Close();
	}

	public void ChangePhoto()
	{
		Random rnd = new();
		PhotoIndex = rnd.Next(1, 6);
	}
}
