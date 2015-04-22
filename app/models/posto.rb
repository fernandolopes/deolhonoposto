class Posto < ActiveRecord::Base
  self.table_name = "posto"
  has_many :notas

  validates :nome, presence: true
  validates :logradouro, presence: true
  
  def media?
    return self.media
  end
  
protected  
  def media
    return self.notas.average("valor").to_f
  end
end
