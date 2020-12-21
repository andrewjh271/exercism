class FlattenArray
  def self.flatten(arr, result = [])
    arr.each do |element|
      if element.is_a?(Array)
        flatten(element, result)
      else
        result << element unless element.nil?
      end
    end
    result
  end
end
