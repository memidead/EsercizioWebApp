package beans;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import entity.Utenti;
import util.JPAUtil;

public class ValidateUser implements Serializable
{
	private String uname, psw; 

    public void setUname(String u1) { this.uname = u1; } 
    public void setPsw(String p1) { this.psw = p1; } 

    public String getUname() { return uname; } 
    public String getPsw() { return psw; } 
  

    public boolean validate(String u1, String p1) 
    { 
    	EntityManager em = JPAUtil.getEntityManagerFactory().createEntityManager();
        em.getTransaction().begin();
        String select = "SELECT u FROM Utenti u WHERE u.user=:userName and u.pw=:password";

        Query query = em.createQuery(select);
        query.setParameter("userName", u1);
        query.setParameter("password", p1);
        
        List<Utenti> rs = query.getResultList();		

        em.getTransaction().commit();
        em.close();
        
        if(rs.isEmpty())
        	return false;
        else
        	return true;
    } 
}

