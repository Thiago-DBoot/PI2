package br.com.empregos.factory;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	
	//Nome do Us.Mysql
	private static final String USERNAME = "root";
	//Senha do Us.Mysql
	private static final String PASSWORD = "root123";
	//Url do Us.Mysql
	private static final String DATABASE_URL = "jdbc:mysql://localhost/databasepi?useTimezone=true&serverTimezone=UTC";
	
	
	// Conexão do Mysql(Bank Date)
	
	public static Connection createConnectionToMySQL() throws Exception {
		
		//Carrega a class pela JVM
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//Cria a conexão com o banco de dados
		Connection connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
		
		return connection;
		
	}
	
	
	public static void main(String[] args) throws Exception {
		
		//Recuperar Conexão com o Banco de Dados
		Connection con = createConnectionToMySQL();
		
		//Testar se a Conexão é nula
		if(con!=null) {
			System.out.println("Conexão Obtida");
			con.close();
		}
	}

	
	
	
	
}
