package org.nara

class Company {

	String name //column is column, row is instance of Company	
	String description
	Sku sku
	
	String toString () { "${name}" } 	//shows the name instead of identifier
	
	static hasMany = [skus: Sku]
			
	static constraints = {
		name()
		description(nullable: true)
		sku(nullable: true)
	}
}