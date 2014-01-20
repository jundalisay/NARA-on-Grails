package org.nara

import java.awt.TexturePaintContext.Int;

class Skill {

	String name //column is column, row is instance of Company
	String description
	Person person
	int level
	
	String toString () { "${name}" } 	//shows the name instead of identifier
	
	static belongsTo = [person: Person]
	static hasMany = [persons: Person]
			
	static constraints = {
		name()
		description(nullable: true)
		person(nullable: true)
		level(nullable: true, maxSize: 10)
	}
}