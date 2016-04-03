class String
  def numeric?
    !!(self =~ /\A?[0-9.]+\z/)
  end
end