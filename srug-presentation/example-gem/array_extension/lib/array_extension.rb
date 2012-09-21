class Array
  def to_hash
    Hash[*(self+self).sort]
  end
end