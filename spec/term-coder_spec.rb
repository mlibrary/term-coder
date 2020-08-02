
RSpec.describe TermCoder do
  context "code calculation" do
    it "gives the correct term code for Winter 1999" do
      code = TermCoder.from_year_name(1999, "Winter")
      expect(code).to match("1220")
    end

    it "gives the correct term code for Spring 2004" do
      code = TermCoder.from_year_name(2004, "Spring")
      expect(code).to match("1480")
    end

    it "gives the correct term code for Fall 2020" do
      code = TermCoder.from_year_name(2020, "fall")
      expect(code).to match("2310")
    end

    it "gives the correct term code for Spring/Summer 2020" do
      code = TermCoder.from_year_name(2020, "Spring/Summer")
      expect(code).to match("2290")
    end
  end

  context "year/term calculation" do
    it "gives the correct year and term for code 1220" do
      info = TermCoder.from_code(1220)
      expect(info).to be_a Hash
      expect(info[:year]).to match("1999")
      expect(info[:name]).to match("WN")
    end
    it "gives the correct year and term for code 1480" do
      info = TermCoder.from_code(1480)
      expect(info).to be_a Hash
      expect(info[:year]).to match("2004")
      expect(info[:name]).to match("SP")
    end
    it "gives the correct year and  term for code 2310" do
      info = TermCoder.from_code(2310)
      expect(info).to be_a Hash
      expect(info[:year]).to match("2020")
      expect(info[:name]).to match("FA")
    end
    it "gives the correct year and  term for code 2290" do
      info = TermCoder.from_code("2290")
      expect(info).to be_a Hash
      expect(info[:year]).to match("2020")
      expect(info[:name]).to match("SS")
    end

  end
end
