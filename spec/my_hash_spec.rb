require('rspec')
require('my_hash')

describe(MyHash) do
  describe("#fetch") do
    it("retreives a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end

  describe("#has_key?") do |key|
    it("returns true if it has the key specified") do
      test_hash = MyHash.new()
      test_hash.store("kitten","cute")
      test_hash.has_key?("kitten") == true
    end
  end

end
