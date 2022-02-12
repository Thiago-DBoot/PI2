package br.com.empregos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.empregos.factory.ConnectionFactory;
import br.com.empregos.model.Emprego_DataControl;

public class Emprego_DataControlDAO {	

	public void Incluir_Insert(Emprego_DataControl vagas) {
		
		String sql = "INSERT INTO "	 
		+ "vagas(idvaga, descricao, req_obrigatorios, req_desejaveis,remuneracao, aberta, beneficios, local_trabalho)"
		+ " values(?,?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement comando = null;
		
		try {
			//Criar uma conexão com o Banco de Dados
			conn = ConnectionFactory.createConnectionToMySQL();
			//Criamos uma PreparableStatement, para executar a Query
			comando = (PreparedStatement) conn.prepareStatement(sql);
			//Adicionar os valores que são espereados pela query
			comando.setInt(1,vagas.getIdvaga_cc());
			comando.setString(2,vagas.getDescricao_cc());
			comando.setString(3,vagas.getReq_obrigatorios_cc());
			comando.setString(4,vagas.getReq_desejaveis_cc());
			comando.setFloat(5,vagas.getRemuneracao_cc());
			comando.setInt(6,vagas.getAberta_cc());
			comando.setString(7,vagas.getBeneficios_cc());
			comando.setString(8,vagas.getLocal_trabalho_cc());
			
			//Exeutar a Query
			comando.execute();
			
			}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static List<Emprego_DataControl> getAllUsers(){
		
		String sql = "SELECT * FROM vagas order by idvaga";	 
		
		List<Emprego_DataControl> Track = new ArrayList<Emprego_DataControl>();
			
		Connection conn = null;
		PreparedStatement comando = null;
		
		//Class que vai recuperar os dados do banco ***Select
		ResultSet rset = null; 
		
		try {
			conn = ConnectionFactory.createConnectionToMySQL();
			
			comando = conn.prepareStatement(sql); 
			
			rset = comando.executeQuery();
			
			
			//Vai ler todos os dados
			while (rset.next()) {
				Emprego_DataControl data = new Emprego_DataControl();
				
				//Recuperar Idvaga
				data.setIdvaga_cc(rset.getInt("idvaga"));
				//Recuperar Descrição
				data.setDescricao_cc(rset.getString("descricao"));
				//Recuperar Req_Obrigatórios
				data.setReq_obrigatorios_cc(rset.getString("req_obrigatorios"));
				//Recuperar Req_Desejaveis
				data.setReq_desejaveis_cc(rset.getString("req_desejaveis"));
				//Recuperar Remuneração
				data.setRemuneracao_cc(rset.getFloat("remuneracao"));
				//Recuperar Aberta
				data.setAberta_cc(rset.getInt("aberta"));
				//Recuperar Beneficios
				data.setBeneficios_cc(rset.getString("beneficios"));
				//Recuperar Local Trabalho
				data.setLocal_trabalho_cc(rset.getString("local_trabalho"));
				
				Track.add(data);
				
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();	
		}

		return Track;
	
	};
	
	public static Emprego_DataControl getRegistroById(int id){
		Emprego_DataControl com_usu = null;

		String sql="SELECT * FROM vagas WHERE idvaga=?";
		Connection conn = null;
		PreparedStatement comando = null;
		
		try {
				//Criar conexão com o banco
				conn = ConnectionFactory.createConnectionToMySQL();
							
				//Criar a classe p/executar query
				comando = conn.prepareStatement(sql); 
				
				//Gerando loop
				comando.setInt(1, id);
				ResultSet rs = comando.executeQuery();
				
				while(rs.next()) {
					com_usu = new Emprego_DataControl();
					com_usu.setIdvaga_cc(rs.getInt("idvaga"));
					com_usu.setDescricao_cc(rs.getString("descricao"));
					com_usu.setReq_obrigatorios_cc(rs.getString("req_obrigatorios"));
					com_usu.setReq_desejaveis_cc(rs.getString("req_desejaveis"));
					com_usu.setRemuneracao_cc(rs.getFloat("remuneracao"));
					com_usu.setAberta_cc(rs.getInt("aberta"));
					com_usu.setBeneficios_cc(rs.getString("beneficios"));
					com_usu.setLocal_trabalho_cc(rs.getString("local_trabalho"));
					}
			
			}
		catch (Exception e){
			e.printStackTrace();
			
		}
		return com_usu;
	}

	public static List<Emprego_DataControl> getFTPSList1(){
			String sql = "SELECT * FROM vagas WHERE aberta = 1";	 
			
			List<Emprego_DataControl> FTPS1 = new ArrayList<Emprego_DataControl>();
				
			Connection conn = null;
			PreparedStatement comando = null;
			
			//Class que vai recuperar os dados do banco ***Select
			ResultSet rset = null; 
			
			try {
				conn = ConnectionFactory.createConnectionToMySQL();
				
				comando = conn.prepareStatement(sql); 
				
				rset = comando.executeQuery();
				
				
				//Vai ler todos os dados
				while (rset.next()) {
					Emprego_DataControl data = new Emprego_DataControl();
					
					//Recuperar Idvaga
					data.setIdvaga_cc(rset.getInt("idvaga"));
					//Recuperar Descrição
					data.setDescricao_cc(rset.getString("descricao"));
					//Recuperar Req_Obrigatórios
					data.setReq_obrigatorios_cc(rset.getString("req_obrigatorios"));
					//Recuperar Req_Desejaveis
					data.setReq_desejaveis_cc(rset.getString("req_desejaveis"));
					//Recuperar Remuneração
					data.setRemuneracao_cc(rset.getFloat("remuneracao"));
					//Recuperar Aberta
					data.setAberta_cc(rset.getInt("aberta"));
					//Recuperar Beneficios
					data.setBeneficios_cc(rset.getString("beneficios"));
					//Recuperar Local Trabalho
					data.setLocal_trabalho_cc(rset.getString("local_trabalho"));
					
					FTPS1.add(data);
					
				}
			}
			
			catch (Exception e) {
				e.printStackTrace();	
			}

			return FTPS1;
		
		};
	public static List<Emprego_DataControl> getFTPSList2(){
			String sql = "SELECT * FROM vagas WHERE aberta = 0";	 
			
			List<Emprego_DataControl> FTPS1 = new ArrayList<Emprego_DataControl>();
				
			Connection conn = null;
			PreparedStatement comando = null;
			
			//Class que vai recuperar os dados do banco ***Select
			ResultSet rset = null; 
			
			try {
				conn = ConnectionFactory.createConnectionToMySQL();
				
				comando = conn.prepareStatement(sql); 
				
				rset = comando.executeQuery();
				
				
				//Vai ler todos os dados
				while (rset.next()) {
					Emprego_DataControl data = new Emprego_DataControl();
					
					//Recuperar Idvaga
					data.setIdvaga_cc(rset.getInt("idvaga"));
					//Recuperar Descrição
					data.setDescricao_cc(rset.getString("descricao"));
					//Recuperar Req_Obrigatórios
					data.setReq_obrigatorios_cc(rset.getString("req_obrigatorios"));
					//Recuperar Req_Desejaveis
					data.setReq_desejaveis_cc(rset.getString("req_desejaveis"));
					//Recuperar Remuneração
					data.setRemuneracao_cc(rset.getFloat("remuneracao"));
					//Recuperar Aberta
					data.setAberta_cc(rset.getInt("aberta"));
					//Recuperar Beneficios
					data.setBeneficios_cc(rset.getString("beneficios"));
					//Recuperar Local Trabalho
					data.setLocal_trabalho_cc(rset.getString("local_trabalho"));
					
					FTPS1.add(data);
					
				}
			}
			
			catch (Exception e) {
				e.printStackTrace();	
			}

			return FTPS1;
		
		};
	 public static List<Emprego_DataControl> getFTPSList3(){
			String sql = "SELECT * FROM vagas";	 
			
			List<Emprego_DataControl> FTPS1 = new ArrayList<Emprego_DataControl>();
				
			Connection conn = null;
			PreparedStatement comando = null;
			
			//Class que vai recuperar os dados do banco ***Select
			ResultSet rset = null; 
			
			try {
				conn = ConnectionFactory.createConnectionToMySQL();
				
				comando = conn.prepareStatement(sql); 
				
				rset = comando.executeQuery();
				
				
				//Vai ler todos os dados
				while (rset.next()) {
					Emprego_DataControl data = new Emprego_DataControl();
					
					//Recuperar Idvaga
					data.setIdvaga_cc(rset.getInt("idvaga"));
					//Recuperar Descrição
					data.setDescricao_cc(rset.getString("descricao"));
					//Recuperar Req_Obrigatórios
					data.setReq_obrigatorios_cc(rset.getString("req_obrigatorios"));
					//Recuperar Req_Desejaveis
					data.setReq_desejaveis_cc(rset.getString("req_desejaveis"));
					//Recuperar Remuneração
					data.setRemuneracao_cc(rset.getFloat("remuneracao"));
					//Recuperar Aberta
					data.setAberta_cc(rset.getInt("aberta"));
					//Recuperar Beneficios
					data.setBeneficios_cc(rset.getString("beneficios"));
					//Recuperar Local Trabalho
					data.setLocal_trabalho_cc(rset.getString("local_trabalho"));
					
					FTPS1.add(data);
					
				}
			}
			
			catch (Exception e) {
				e.printStackTrace();	
			}

			return FTPS1;
		
		};

			
}