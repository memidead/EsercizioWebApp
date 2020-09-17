package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "threads")
public class Threads 
{
	@Id
    @Column(name = "key")
    private int key;

    @Column(name = "pid")
    private int pid;

    @Column(name = "nomefile")
    private String nomefile;

    @Column(name = "timestamp")
    private String timestamp;

	public synchronized int getKey() {
		return key;
	}

	public synchronized void setKey(int key) {
		this.key = key;
	}

	public synchronized int getPid() {
		return pid;
	}

	public synchronized void setPid(int pid) {
		this.pid = pid;
	}

	public synchronized String getNomefile() {
		return nomefile;
	}

	public synchronized void setNomefile(String nomefile) {
		this.nomefile = nomefile;
	}

	public synchronized String getTimestamp() {
		return timestamp;
	}

	public synchronized void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
    
    
}
