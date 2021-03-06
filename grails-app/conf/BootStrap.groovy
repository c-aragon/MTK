import mx.mtk.Area
import mx.mtk.Collaborator
import mx.mtk.User
import mx.mtk.Role
import mx.mtk.UserRole
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->

    	Environment environment = Environment.getCurrent()

    	//Ambiente de desarrollo
        if(environment.name.equals("development")){ 
        	def area1 = new Area(name : "Operaciones Desarrollo de Software México").save(flush : true, failOnError : true)
    		def area2 = new Area(name : "Operaciones Desarrollo de Software Usa y Canadá").save(flush : true, failOnError : true)
    		def area3 = new Area(name : "Administrativo").save(flush : true, failOnError : true)
    		def area4 = new Area(name : "Cultura Organizacional").save(flush : true, failOnError : true)

            def col01 = new Collaborator(name:"Carlos", lastName:"Aragon", area: area1).save(flush : true, failOnError : true)
            def col02 = new Collaborator(name:"David", lastName:"Bernal",area: area2).save(flush : true, failOnError : true)
            def col03 = new Collaborator(name:"Ernesto", lastName:"Colman",area: area3).save(flush : true, failOnError : true)
            def col04 = new Collaborator(name:"Fatima", lastName:"Dosantos",area: area4).save(flush : true, failOnError : true)

            def userModificacion = new User(username : "admin", password : "12asd34", 
                enabled : true, accountExpired : false, 
                accountLocked : false, passwordExpired : false).save(flush : true, failOnError : true)

            def userConsulta = new User(username : "user", password : "12asd34", 
                enabled : true, accountExpired : false, 
                accountLocked : false, passwordExpired : false).save(flush : true, failOnError : true)

            def roleUser = new Role(authority : "ROLE_USER").save(flush : true, failOnError : true)
            def roleAdmin = new Role(authority : "ROLE_ADMIN").save(flush : true, failOnError : true)

            def temp01 = new UserRole(user : userModificacion, role: roleAdmin).save(flush : true, failOnError : true)
            def temp02 = new UserRole(user : userConsulta, role: roleUser).save(flush : true, failOnError : true)

        }
    }
    def destroy = {
    }
}
