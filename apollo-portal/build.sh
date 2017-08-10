# meta server url
dev_meta=http://10.21.6.95:8080
#fat_meta=http://localhost:8080
uat_meta=http://10.21.6.96:8080
pro_meta=http://10.21.6.97:8080

# apollo portal db info
apollo_portal_db_url=jdbc:mysql://localhost:3306/ApolloPortalDB?characterEncoding=utf8
apollo_portal_db_username=root
apollo_portal_db_password=P@ssword2

META_SERVERS_OPTS="-Ddev_meta=$dev_meta -Dfat_meta=$fat_meta -Duat_meta=$uat_meta -Dpro_meta=$pro_meta"

mvn package -DskipTests -am -Dapollo_profile=github -Dspring_datasource_url=$apollo_portal_db_url -Dspring_datasource_username=$apollo_portal_db_username -Dspring_datasource_password=$apollo_portal_db_password $META_SERVERS_OPTS
