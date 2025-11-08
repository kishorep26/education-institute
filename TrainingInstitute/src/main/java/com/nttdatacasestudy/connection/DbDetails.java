package com.nttdatacasestudy.connection;

/**
 * Interface DbDetails is created get the database details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */
public interface DbDetails {

  String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
  String USER_NAME = "root";
  String PASSWORD = "root";
  String CONSTR = "jdbc:mysql://localhost:3306/training_institution?useSSL=false";
}
