extends Node

func _ready():
	atualiza_tela()

var acao_selecionada = null

func troca_acao():
	if acao_selecionada == null:
		acao_selecionada = "comer"
	elif acao_selecionada == "comer":
		acao_selecionada = "banho"
	elif acao_selecionada == "banho":
		acao_selecionada = "brincar"
	else:
		acao_selecionada = null
	
	atualiza_tela()

func atualiza_tela():
	$"../IconeComida".visible = acao_selecionada == "comer"
	$"../IconeBanho".visible = acao_selecionada == "banho"
	$"../IconeBrincar".visible = acao_selecionada == "brincar"


func executa_acao():
	$"../MelequinhaSprite".play()
