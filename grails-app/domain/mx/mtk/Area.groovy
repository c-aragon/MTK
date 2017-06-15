package mx.mtk

class Area {

    String name

    static constraints = {
        name blank : false, maxSize : 150
    }

    static mapping = {
        id   column: 'area_id'
        name column: 'name'   , sqlType: 'varchar(150)'
    }   
}
