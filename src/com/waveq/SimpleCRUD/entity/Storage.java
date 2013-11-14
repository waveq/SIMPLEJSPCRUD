package com.waveq.SimpleCRUD.entity;

import java.util.ArrayList;
import java.util.List;

import com.waveq.SimpleCRUD.domain.Person;

public class Storage {

	private int id=0;
	private List<Person> db = new ArrayList<Person>();
	private Person person;

	public void add(Person person) {
            Person newPerson = new Person(id++, person.getName(), 
            		person.getLastName(), person.getSex(), person.getYob());
            db.add(newPerson);
    }
    
    public List<Person> getAllPersons(){
            return db;
    }
    
    public void delete(Person person) {
    	for(Person p : db) {
    		if(p.getId() == person.getId()) {
    			System.out.println(person.getId());
    			db.remove(db.indexOf(p));
    			break;
    		}
    			
    	}
    }
    
    public void loadPerson(Person person) {
    	for(Person p : db) {
    		if(p.getId() == person.getId()) {
    			person = p;
    			this.person = p;
    			break;
    		}
    	}
    }
    
    public void updatePerson(Person person) {
    	for(Person p : db) {
    		if(p.getId() == person.getId()) {
    			Person updatedPerson = new Person(person.getId(), person.getName(), 
            		person.getLastName(), person.getSex(), person.getYob());
    			db.set(db.indexOf(p),updatedPerson);
    			break;
    		}
    	}
    }
    
    public void deleteAll() {
    	db.clear();
    }
	
	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}
    
    
   
 
}
