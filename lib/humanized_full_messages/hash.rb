class Hash
  def rekey(h)
    dup.rekey! h
  end

  def rekey!(h)
    h.each { |k, newk| store(newk, delete(k)) if has_key? k }
    self
  end
end
