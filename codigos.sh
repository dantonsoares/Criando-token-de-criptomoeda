#Criando um token de criptomoeda utilizando sistema Solana da Blockchain

#Comando para instalar as ferramentas Solana
	sh -c "$(curl -sSfL https://release.solana.com/v1.8.5/install)"
#Sair do terminal e reconectar

#Criando uma carteira Solana
	solana-keygen new
	#Salvar o endereço da carteira

#Verificando o saldo da carteira criada e deve ser adicionado saldo nessa carteira
	solana balance
	
#Atualizando os repositórios
	sudo apt update
	
#Instalando o RUST
	curl https://sh.rustup.rs -sSf | sh
	#Seleciona a opção 1 para instalação padrão
#Sair do terminal e reconectar

#Instalando ferramentas para facilitar no processo de criação do token
	sudo apt install libudev-dev
	sudo apt install libssl-dev pkg-config -y
	sudo apt install build-essential -y

#Instalando o programa de token da Solana
	cargo install spl-token-cli
	
#Criando o token
	spl-token create-token
	#Salvar o endereço do token
	
#Criando uma conta para esse token
	spl-token creat-account $endereco_do_token
	#Salvar o endereço da conta do token

#Forjando alguns tokens
	spl-token mint $endereco_do_token $quantidade $endereco_da_conta_do_token
	
#Verificando a conta dos tokens, observando que o balance está com a quantidade de tokens que foram forjados
	spl-token accounts

#Opcional: Pode desabilitar a criação de novos tokens
	spl-token authorize $endereco_do_token mint --disable
	
#Transferindo os tokens para outra carteira
	spl-token transfer --fund-recipient --allow-unfunded-recipient $endereco_do_token $quantidade $endereco_carteira_que_recebera_os_tokens
