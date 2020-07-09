
class TermCoder
  attr_reader :year, :name, :code

  def initialize(year, name)
    @year = year;
    @name = name;
    @code = forYearName(year, name);
  end

  def forYearName(year, name)
    termCode = (year.to_f - 1974.6).round(1)
    termCode = termCode * 50
    termCode = termCode.to_i + termToCodeOffset(name);
    return termCode.to_s
  end

  private

  def termToCodeOffset(name)
    case name.upcase
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
