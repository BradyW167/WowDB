using System;
using System.Windows;
using System.Data.SqlClient;
using System.Data;
using MySqlConnector;
using System.Data.Common;

namespace WowDB {
  public partial class MainWindow : Window {
    MySqlConnection mConnectionMySQL = null; // Create MySQL connection object 
    MySqlDataAdapter da; // Create data adapter object
    DataTable dt = new DataTable(); // Create data table object 
    string connStr = ""; // String to build connection
    string query = ""; // Stores query text

    public MainWindow () {
      InitializeComponent();
    }

    private void btnConnect_Click (object sender, RoutedEventArgs e) {
        // build the connection string
        connStr = @"Server=" + "trevor.butler.edu;" +                  	// server name
            "PORT=" + "3306" + ";" +                                    // port number
            "Database=;" +                                        	// database name
            "Uid=;" +                                             	// user id
            "Pwd=";                                       		// password
        mConnectionMySQL = new MySqlConnection(connStr); // Set connection object using info string
        lblConnected.Content = "Database connected"; // Show connected in display
    }

    //-------------------- Change query string for each button --------------------//
    private void btnQ1_Click (object sender, RoutedEventArgs e) {query = "SELECT * FROM Class;";}

    private void btnQ2_Click (object sender, RoutedEventArgs e){query = "SELECT * FROM Spec;";}

    private void btnQ3_Click (object sender, RoutedEventArgs e) {query = "SELECT * FROM Race;";}

    private void btnQ4_Click (object sender, RoutedEventArgs e) {query = "SELECT class_name AS Class, spec_name AS Specialization, raid_name AS Raid, log_date, percentile_90_damage, percentile_50_damage, percentile_10_damage\r\nFROM Raid_Performance\r\nJOIN Raid\r\n\tON Raid_Performance.raid_id = Raid.raid_id \r\nJOIN Spec\r\n\tON Raid_Performance.spec_id = Spec.spec_id \r\nJOIN Class\r\n\tON Spec.class_id = Class.class_id;"; }

    private void btnQ5_Click (object sender, RoutedEventArgs e) {query = "SELECT * FROM Raid;";}

    private void btnRun_Click (object sender, RoutedEventArgs e) {
        // If not connected, show user in connection label
        if (mConnectionMySQL is null) {lblConnected.Content = "Not connected";}
        // Else query the database
        else {
            da = new MySqlDataAdapter(query, mConnectionMySQL); // Send query to database
            DataTable dt = new DataTable();
            da.Fill(dt); // Load query results into table

            // ---- Fixes underscores in column names for the table display --- //
            // Loop through each column in data table
            foreach (DataColumn column in dt.Columns) {
	            // If column has an underscore...
                if (column.ColumnName.Contains("_")) {
                    column.ColumnName = column.ColumnName.Replace("_", "__"); // Replace it with two underscores
                }
            }

            dgResults.ItemsSource = dt.DefaultView;
        }
    }

    private void btnDone_Click (object sender, RoutedEventArgs e) {
        if (mConnectionMySQL != null) mConnectionMySQL.Close(); // Close connection if not already
        System.Environment.Exit(-1); // Exit the program
    }
  }
}
