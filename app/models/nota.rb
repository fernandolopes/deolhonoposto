class Nota < ActiveRecord::Base
  self.table_name = "nota"
  belongs_to :posto

end
