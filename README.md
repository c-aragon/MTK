# MTK

## Para ejecutar la aplicación, se requiere tener instalado:

- [Java 7](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
- [Grails 2.5.4](https://grails.org/download.html)

Para un ambiente de desarrollo, basta con clonar el proyecto, posicionarse en la rama development y ejecutar con grails.

```
git clone git@github.com:c-aragon/MTK.git
cd MTK
git checkout development
grails run-app -Dgrails.server.port.http=1010
```
La aplicación se ejecutara en el puerto 1010, y se accedera a ella desde [Link](http://localhost:1010/MTK)

## Para hacer un deploy de la aplicación en un ambiente productivo, se requiere tener instalado

- [Java 7](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
- [Tomcat 7](http://tomcat.apache.org/download-70.cgi)
- [Mysql](https://www.mysql.com/downloads/)

Para generar el war a desplegar
```
git clone git@github.com:c-aragon/MTK.git
cd MTK
git checkout master
grails war
```
Esto genera un war ubicado en la carpeta target que tendra que ser copiado a la carpeta $TOMCAT_HOME/webapps, donde $TOMCAT_HOME es la ruta donde esta instalado TOMCAT. Adicionalmente, tenemos que agregar el resource que viene abajo en el archivo [$TOMCAT_HOME/conf/server.xml](https://github.com/c-aragon/MTK/blob/development/server.xml)


```xml
<Resource type="javax.sql.DataSource"
                        auth="Container"
                        name="jdbc/mtk"
                        factory="org.apache.tomcat.jdbc.pool.DataSourceFactory"
                        driverClassName="com.mysql.jdbc.Driver"
                        url="jdbc:mysql://{HOST-BD}:{PORT_DB}/{NAME_DB}"
                        username="{UserDB}"
                        password="PASWORD_DB"
                        timeBetweenEvictionRunsMillis="5000"
                        minEvictableIdleTimeMillis="15000"
                        validationQuery="SELECT 1"
                              jdbcInterceptors="org.apache.tomcat.jdbc.pool.interceptor.ConnectionState;org.apache.tomcat.jdbc.pool.interceptor.StatementFinalizer"
                        validationInterval="15000"
                        maxActive="750"
                        initialSize="25"
                        maxWait="15000"
                        testOnBorrow="true"
                        logAbandoned="true"
                        minIdle="45" />
```

Y el ResourceLink mostrado abajo en el archivo [$TOMCAT_HOME/conf/context.xml](https://github.com/c-aragon/MTK/blob/development/context.xml)

```xml
<ResourceLink type="javax.sql.DataSource" name="jdbc/mtk" global="jdbc/mtk" /
```
La configuración del archivo context.xml y server.xml son para cuestiones de seguridad.
