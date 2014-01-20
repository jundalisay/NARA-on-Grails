package org.nara

class Sku {

	String name
	String description
	int quantity
	Company company
	
	String toString () { "${name}" } 	//shows the name instead of identifier
	
//	static mapWith = "neo4j"
	static belongsTo = [company: Company]
	static hasMany = [company: Company]
		
    static constraints = {  //shows order
		name(blank: false, unique: true)
		description(nullable: true)
		quantity()
		company(nullable: true)
	}
}