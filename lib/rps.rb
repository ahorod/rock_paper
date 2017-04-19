class String
  define_method(:beats?) do |opponent|
    if self==opponent
      'draw'
    elsif self=='r'&&opponent=='s'
      'true'
    elsif self=='s'&&opponent=='p'
      'true'
    elsif self=='p'&&opponent=='r'
      'true'
    else
      'false'
    end
  end
end
