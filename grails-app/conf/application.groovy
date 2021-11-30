environments {
    production {
        dataSource {
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = org.hibernate.dialect.PostgreSQL82Dialect
            uri = new URI(System.env.DATABASE_URL?:"postgres://test:test@localhost/test")
            username = uri.userInfo.split(":")[0]
            password = uri.userInfo.split(":")[1]
            url = "jdbc:postgresql://${uri.host}:${uri.port}${uri.path}?sslmode=require"
        }
    }
}