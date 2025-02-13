# FX2

Para el desarrollo de este ejercicio se uso la instalacion de la herramienta Brew para poder realizar la instalacion de las herramientas usadas, la informacion se puede encontrar en el siguiente enlace: https://docs.brew.sh/Homebrew-on-Linux

Luego de la instalacion de la herramienta brew, se realizo la instalacion de terraform https://formulae.brew.sh/formula/terraform
tambien se uso de la herramienta AWSCLI instlandolo con ayuda de la siguiente pagina https://formulae.brew.sh/formula/awscli
por ultimo se realizo la instalacion de kubectl con ayuda de la pagina https://formulae.brew.sh/formula/kubernetes-cli

Se procede a realizar la creacion del cluster EKS (AWS) con la documentacion certificada en el sitio web: https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks realizando los respectios ajustes necesarios para su respectiva construccion y alojando este servicio en las carpetas ../eks.tf ../terraform.tf y outputs.tf con el fin de almacenar los modulos, versiones de herramientas y recursos necesarios para su debida creacion

Luego de este proceso, se realizo la creacion de los archivos ../vpc.tf con el fin de realizar la creacion de las redes que se usarian para el cluster, con subredes privadas y publicas. En la carpeta ..role.tf se crea un role para asignarle un grupo de seguridad al cluster y poder administrarlo de una forma mas fiable

Adicional se realiza la creacion de las carpetas ..ecr.tf para poder almacenar la versiones que se fueran a ejecutar y un bucket s3 para realizar el almacenamiento ya sea de los estados de terraform o informacion que se requiera

por seguridad se realiza algunas divisiones de datos sensibles como el nombre del cluster en la carpeta ../local.tf, outputs para imprimir por consola datos importantes que puedan luego usarsen

Esto da como resultado un caparazon para poder desplegar una herramienta de orquestacion con posibilidades de escalamiento, los resultados de esta ejecucion define en terraform de la siguiente manera





    # Plan: 69 to add, 0 to change, 0 to destroy.

    # Changes to Outputs:
    #  + cluster_endpoint          = (known after apply)
    #  + cluster_name              = (known after apply)
    #  + cluster_security_group_id = (known after apply)
    #  + ecr_url                   = (known after apply)
    #  + region                    = "us-east-1"
