
class TermCoder

  def forYearName(year, name)
    termCode = (year.to_f - 1974.6).round(1)
    termCode = termCode * 50
    termCode = termCode.to_i + termToCodeOffset(name);
    return termCode.to_s
  end

  def forCode(code)
    offset = (code.to_i - 1570) % 50
    year = 2006 + ((code.to_i - offset - 1570) / 50).to_i
    name = termCodeOffsetToName(offset)
    return {:year => year.to_s, :name => name}
  end
  
  private

  def termCodeOffsetToName(offset)
    case offset.to_i
    when 0
      return 'WN'
    when 10
      return 'SP'
    when 20
      return 'SS'
    when 30
      return 'SU'
    when 40
      return 'FA'
    end
  end

  def termToCodeOffset(name)
    case name.to_s.upcase
    when 'WINTER', 'WI', 'WN', '03', '3', 3
      return 0;
    when 'SUMMER', 'SU', '01', '1', 1
      return 30;
    when 'FALL', 'FA', '02', '2', 40
      return 40;
    when 'SPRING', 'SP', '04', '4', 4
      return 10;
    when 'SPRING/SUMMER', 'SPRING-SUMMER', 'SS', '05', '5', 5
      return 20;
    end
  end

end
