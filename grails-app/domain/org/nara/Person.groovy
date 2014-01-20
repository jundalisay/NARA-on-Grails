package org.nara

class Person {
	
	String name //column is column, row is instance of Company
	String description
	Company company
	
	String toString () { "${name}" } 	//shows the name instead of identifier
	
	static belongsTo = [company: Company]
			
	static constraints = {
		name()
		description(nullable: true)
		company(nullable: true)
//		sku(nullable: true)
	}
}