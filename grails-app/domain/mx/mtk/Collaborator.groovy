package mx.mtk

class Collaborator {

    String name
    String lastName
    Area area

    static constraints = {
        name     blank : false, maxSize: 100
        lastName blank : false, maxSize: 100
        
    }

    static mapping = {
        id       column:'collaborator_id'
        name     column:'name'    , sqlType:'varchar(100)'
        lastName column:'lastName', sqlType:'varchar(100)'
    }
}
