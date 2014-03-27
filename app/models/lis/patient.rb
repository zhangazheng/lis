module Lis
  class Patient < ActiveRecord::Base
    attr_accessible :id, :name, :age
  end
end
