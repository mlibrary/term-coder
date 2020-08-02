# frozen_string_literal: true

###############################################
# TermCoder
# Get UofM Term codes by year and semester
class TermCoder
  def self.from_year_name(year, name)
    term_code = (year.to_f - 1974.6).round(1)
    term_code *= 50
    term_code = term_code.to_i + term_to_offset(name)
    term_code.to_s
  end

  def self.from_code(code)
    code_i = code.to_i
    offset = (code_i - 1570) % 50
    year = 2006 + ((code_i - offset - 1570) / 50).to_i
    { year: year.to_s, name: offset_to_name(offset) }
  end

  private_class_method def self.offset_to_name(offset)
    case offset.to_i
    when 0
      'WN'
    when 10
      'SP'
    when 20
      'SS'
    when 30
      'SU'
    when 40
      'FA'
    end
  end

  private_class_method def self.term_to_offset(name)
    case name.to_s.upcase
    when 'WINTER', 'WI', 'WN', '03', '3', 3
      0
    when 'SUMMER', 'SU', '01', '1', 1
      30
    when 'FALL', 'FA', '02', '2', 40
      40
    when 'SPRING', 'SP', '04', '4', 4
      10
    when 'SPRING/SUMMER', 'SPRING-SUMMER', 'SS', '05', '5', 5
      20
    end
  end
end
