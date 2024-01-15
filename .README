# Terraform EC2 - Configuração Multiambiente

## Descrição

Este projeto Terraform tem como objetivo criar uma instância EC2 na AWS com acesso SSH, utilizando um gateway de internet e subnets públicas. A estrutura do projeto é projetada para suportar múltiplos ambientes, incluindo desenvolvimento (dev) e homologação (hom), com arquivos de configuração específicos para cada ambiente, como `terraform.dev.tfvars` e `terraform.hom.tfvars`.

## Estrutura do Projeto

```
/nome-terraform-ec2
|-- main.tf
|-- terraform.dev.tfvars
|-- terraform.hom.tfvars
|-- .gitignore
|-- README.md
|-- .env
```

- **main.tf:** Arquivo principal na raiz que define a infraestrutura da EC2, incluindo o gateway de internet e subnets públicas.

- **terraform.dev.tfvars:** Arquivo de variáveis específicas para o ambiente de desenvolvimento.

- **terraform.hom.tfvars:** Arquivo de variáveis específicas para o ambiente de homologação.

- **.gitignore:** Lista de padrões de arquivos/diretórios a serem ignorados pelo Git.

- **README.md:** Documentação do projeto (este arquivo).

- **.env:** Arquivo para armazenar variáveis de ambiente sensíveis, como AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY e AWS_DEFAULT_REGION.

## Pré-requisitos

Antes de executar o Terraform, certifique-se de ter as variáveis de ambiente AWS configuradas no arquivo `.env`:

```env
# .env
AWS_ACCESS_KEY_ID=seu_access_key_id
AWS_SECRET_ACCESS_KEY=seu_secret_access_key
AWS_DEFAULT_REGION=sua_regiao_preferida
```

OBS: Para execução no **WINDOWS** => EXECUTAR **set-env.ps1**. Executar o registro das variáveis descritas em **.env**

## Como Executar

-**Inicialize o Terraform:**
Execute o seguinte comando para inicializar o Terraform:

```bash
terraform init
Executar o Terraform para o Ambiente de Desenvolvimento (dev):


terraform workspace new dev
terraform workspace select dev

terraform plan -var-file="terraform.dev.tfvars"
terraform apply -var-file="terraform.dev.tfvars"

Executar o Terraform para o Ambiente de Homologação (hom):


terraform workspace new hom
terraform workspace select hom
terraform plan -var-file="terraform.hom.tfvars"
terraform apply -var-file="terraform.hom.tfvars"
```


## Variáveis por ambiente
    
    # VPC
    cidr_block_vpc = "" #IP 

    prefix_enviroment = "Dev"

    # SubNet
    cidr_block_subnet_public = "" #IP 
    availability_zone_id_subnet_public = "" #IP 

    # Sucurity Group
    ip_public_ssh = "" #IP 
    name_security_group = ""

    # EC2
    ami_id_ec2 = ""
    instancy_type_ec2 = ""
    chave_ssh_name = ""

    # EBS
    size_volume_root_block = 0
    size_volume_ebs_g2 = 0
    size_volume_ebs_g3 = 0
    size_volume_ebs_g3_iops = 0

## Observações:

- **Acesso a internet de dentro do EC2:** Liberado.
- **Acesso de fora do ec2 via SSH:** Liberado.