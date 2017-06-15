import mx.mtk.Area
import mx.mtk.Collaborator
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
        }
    }
    def destroy = {
    }
}
