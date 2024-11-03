#variable "idProjeto" {
  #type = string
 # description = "id do projeto"
#}


# Variável para o ID do projeto
variable "project_id" {
  type        = string
  description = "ID do projeto no Google Cloud"
  default     = "my-project-preta-lab"  # ou remova o default e passe o valor manualmente
}

# Variável para a localização (região) do bucket
variable "location" {
  type        = string
  description = "Localização (região) para o bucket"
  default     = "us-central1"  # Certifique-se de que a localização é compatível com sua configuração
}

# Variável para o nome da VM
variable "namevm" {
  type        = string
  description = "Um nome exclusivo para a VM"
}

# Variável para o tipo de máquina
variable "tipodemaquina" {
  type        = string
  description = "O tipo de máquina a ser criada"
}

# Variável para a zona da máquina (por exemplo, us-central1-a)
variable "zone" {
  type        = string
  description = "A zona em que a máquina deve ser criada"
}
