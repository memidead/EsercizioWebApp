package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "utenti")
public class Utenti 
{
	@Id
    @Column(name = "username")
    private String user;

    @Column(name = "nome")
    private String firstName;

    @Column(name = "cognome")
    private String lastName;

    @Column(name = "password")
    private String pw;

	public synchronized String getUser() {
		return user;
	}

	public synchronized void setUser(String user) {
		this.user = user;
	}

	public synchronized String getFirstName() {
		return firstName;
	}

	public synchronized void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public synchronized String getLastName() {
		return lastName;
	}

	public synchronized void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public synchronized String getPw() {
		return pw;
	}

	public synchronized void setPw(String pw) {
		this.pw = pw;
	}

}
