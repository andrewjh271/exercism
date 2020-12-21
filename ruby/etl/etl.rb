class ETL

  def self.transform(old)
    old.each_with_object({}) do |(k, v), hash|
      v.each { |letter| hash[letter.downcase] = k }
    end
  end
end
