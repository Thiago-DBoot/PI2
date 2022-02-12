package br.com.empregos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import br.com.empregos.factory.ConnectionFactory;

public class Emprego_DataControl {
	
	private int idvaga_cc;
	private int aberta_cc;
	private float remuneracao_cc;
	private String descricao_cc;
	private String req_obrigatorios_cc;
	private String req_desejaveis_cc;
	private String beneficios_cc;
	private String local_trabalho_cc;

	public void  DeleteAllDates(){
			
				
		String sql = "DELETE FROM vagas WHERE idvaga = " + idvaga_cc;
		Connection conn = null;
		PreparedStatement comando = null;
	
			try {
				//Criando conexão com o Banco de Dados
				conn = ConnectionFactory.createConnectionToMySQL();
				
				//Criando a classe para executar o query
				comando = conn.prepareStatement(sql);
				
				//Executar comando
					
				comando.execute();
				comando.close();
				conn.close();
					
				}
			catch (Exception e) {
				e.printStackTrace();
				}
		}
	public void updateUsers(){
			
			String sql="UPDATE vagas SET descricao= ?,"
					+ "req_obrigatorios = ?,"
					+ "req_desejaveis = ?,"
					+ "remuneracao = ?,"
					+ "aberta = ?,"
					+ "beneficios = ?,"
					+ "local_trabalho = ?"
			+ " WHERE idvaga = ?" ;
			
			Connection conn = null;
			PreparedStatement comando = null;
			
			try {
				//Criar conexão com o banco
				conn = ConnectionFactory.createConnectionToMySQL();
							
				//Criar a classe p/executar query
				comando = conn.prepareStatement(sql);
				
				
				//Comandos query
				
				comando.setString(1, descricao_cc);
				comando.setString(2, req_obrigatorios_cc);
				comando.setString(3, req_desejaveis_cc);
				comando.setFloat(4, remuneracao_cc);
				comando.setFloat(5, aberta_cc);
				comando.setString(6, beneficios_cc);
				comando.setString(7, local_trabalho_cc);
				comando.setInt(8, idvaga_cc);
				
				comando.execute();
				comando.close();
				conn.close();
				
			}
			catch (Exception e){
				e.printStackTrace();
				
			}
			
		};

		
	// Get - Set -> IDVAGA//
	public int getIdvaga_cc() {
		return idvaga_cc;
	}
	public void setIdvaga_cc(int idvaga_cc) {
		this.idvaga_cc = idvaga_cc;
	}
	
	
	// Get - Set -> ABERTA//
	public int getAberta_cc() {
		
		return aberta_cc;
	}
	public void setAberta_cc(int aberta_cc) {
			this.aberta_cc = aberta_cc ;
	}
	
	
	// Get - Set -> Remuneração//
	public float getRemuneracao_cc() {
		return remuneracao_cc;
	}
	public void setRemuneracao_cc(float remuneracao_cc) {
		this.remuneracao_cc = remuneracao_cc;
	}
	
	
	// Get - Set -> Descricao//
	public String getDescricao_cc() {
		return descricao_cc ;
	}
	public void setDescricao_cc(String descricao_cc) {
		this.descricao_cc = descricao_cc;
	}

	
	// Get - Set -> Req_Obrigatorios//
	public String getReq_obrigatorios_cc() {
		return req_obrigatorios_cc;
	}
	public void setReq_obrigatorios_cc(String req_obrigatorios_cc) {
		this.req_obrigatorios_cc = req_obrigatorios_cc;
	}

	
	// Get - Set -> Req_Desejaveis//
	public String getReq_desejaveis_cc() {
		return req_desejaveis_cc;
	}
	public void setReq_desejaveis_cc(String req_desejaveis_cc) {
		this.req_desejaveis_cc = req_desejaveis_cc;
	}

	
	// Get - Set -> Beneficios//
	public String getBeneficios_cc() {
		return beneficios_cc;
	}
	public void setBeneficios_cc(String beneficios_cc) {
		this.beneficios_cc = beneficios_cc;
	}

	
	// Get - Set -> Local_trabalho//
	public String getLocal_trabalho_cc() {
		return local_trabalho_cc;
	}
	public void setLocal_trabalho_cc(String local_trabalho_cc) {
		this.local_trabalho_cc = local_trabalho_cc;
	}

}
