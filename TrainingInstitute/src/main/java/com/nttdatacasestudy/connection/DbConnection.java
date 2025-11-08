package com.nttdatacasestudy.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 * Class DbConnection is created to database connection.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class DbConnection {

  /**
  * Method is created inside the class.
  *
  * @return - return values from a static method.
  */
  public static Connection getDatabaseConnection() {
    Connection con = null;
    try {
      Class.forName(DbDetails.DRIVER_NAME);
      con = DriverManager.getConnection(DbDetails.CONSTR, DbDetails.USER_NAME,
            DbDetails.PASSWORD);
    } catch (ClassNotFoundException | SQLException ex) {
      ex.printStackTrace();
    }
    return con;
  }
}
