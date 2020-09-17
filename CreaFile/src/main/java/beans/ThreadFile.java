package beans;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.apache.commons.lang3.RandomStringUtils;

import util.JPAUtil;

public class ThreadFile implements Runnable
{

	String nomef;
	
	
	public ThreadFile(String nomef) {
		super();
		this.nomef = nomef;
	}
	

	public ThreadFile() {
		super();
	}


	public void CreaFile(String nomeFile) 
	{		
		Runnable r = new ThreadFile(nomeFile);
		
		Thread t= new Thread(r);
		
		t.start();
		
	}

	@Override
	public void run() 
	{
		PrintWriter writer = null;
		String path = "C:\\Users\\Noemi\\Desktop\\" + nomef + ".txt";
		try 
		{
			writer = new PrintWriter(new File(path));
		} 
		catch (FileNotFoundException e) 
		{
			e.printStackTrace();
		}
		
		StringBuilder sb = new StringBuilder();
		
		for(int i=0;i<9999999;i++)
		{
			sb.append(RandomStringUtils.randomAlphanumeric(5));
			sb.append('\n');
		}
		
		String s= sb.toString();
		System.out.println(s);
		writer.write(s);
		writer.flush();
		writer.close();
		
		
		//inserimento thread concluso

			SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
	        EntityTransaction entityTransaction = entityManager.getTransaction();
	        entityTransaction.begin();
	        
	        Query q1= entityManager.createNativeQuery("insert into threads (PID,nomefile,timestamp) values (:pid,:nf,:time)");
	        q1.setParameter("pid", Thread.currentThread().getId());
	        q1.setParameter("nf", nomef);
	        Date date = new Date(System.currentTimeMillis());
			String dd = formatter.format(date);
	        q1.setParameter("time", dd);
	        q1.executeUpdate();
	        entityManager.getTransaction().commit();
	        entityManager.close();
	}
	
}
