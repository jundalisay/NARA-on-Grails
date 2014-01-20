package org.nara

class City {

	String name //column is column, row is instance of Company	
	Company company
	
	String toString () { "${name}" } 	//shows the name instead of identifier
	
	static hasMany = [companiess: Company]
			
	static constraints = {
		name()
		company(nullable: true)
	}
}