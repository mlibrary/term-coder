
RSpec.describe TermCoder do
  context "creation" do
    it "gives the correct term code for Winter 1999" do
      code = TermCoder.new(1999, "Winter").code
      expect(code).to match("1220")
    end

    it "gives the correct term code for Spring 2004" do
      code = TermCoder.new(2004, "Spring").code
      expect(code).to match("1480")
    end

    it "gives the correct term code for Fall 2020" do
      code = TermCoder.new(2020, "fall").code
      expect(code).to match("2310")
    end

    it "gives the correct term code for Spring/Summer 2020" do
      code = TermCoder.new(2020, "Spring/Summer").code
      expect(code).to match("2290")
    end

  end
end
