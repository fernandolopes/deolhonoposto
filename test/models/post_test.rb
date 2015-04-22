require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @posto = posto(:ale)
    assert_not_nil @posto, "Não nulo."
  end
  
  def test_primeiro_teste
    assert_equal @posto.nome, "Posto Ala Vila Pery", "Identificou o posto."
  end
  
  def test_verifica_a_media
    assert_equal 1.0, @posto.media?, "Média retornou 1.0"
  end
  
  def test_salva_nulo_nao_deve_deixar
    assert_equal(Posto.new.save, false, "Não vai salvar.")
  end

  def test_adicionar_uma_nota
    nota = Nota.new
    nota.valor = 5
    nota.comentario = "Novo comentario"
    nota.save
    @posto.notas << nota
    assert_equal(2.0, @posto.media?, "Melhorou a media")
  end

end