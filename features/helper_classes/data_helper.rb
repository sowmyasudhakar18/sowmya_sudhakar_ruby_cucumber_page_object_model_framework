require 'yaml'

module DataHelper

  # Gets the data from YML file In Key, value pairs
  def get_data_from_yml_file(file_path)
    begin
      file = File.read("./data/input_data/#{file_path}")
      erb = ERB.new(file).result
      load_file = YAML.load(erb)
    rescue Exception => e
      "Unable to open the file #{file_path} :\n#{e}"
    end
    load_file
  end

  # Get the keys from the YML file
  def get_data_keys_from_yml_file(load_file, data_key)
    begin
      load_file.keys.select { |data_key| data_keys = data_key }
    rescue Exception => e
      "No keys found in the file #{load_file} :\n#{e}"
    end
    data_key
  end

  # Gets the data in key value pairs
  def get_matched_data_key (load_file, data_key)
    load_file.fetch(data_key)
  end

  def get_matched_values(data_key)
    data_key.values
  end

  #Loops through all the data key elements and gets the value
  def fill_form_fields_with(data_hash)
    data_hash.each do |key, value|
      fill_from_value(:key => key, :value => value)
    end
  end

  # Fills the form field elements on the page
  def fill_from_value(key:, value:)
    field_type = self.send(key + '_element').class.to_s
    case field_type
    when /select/i
      Watir::Wait.until(timeout: 10) { self.send(key + '_element').exists? }
      self.send(key + '_element').select value
    when /text/i
      Watir::Wait.until(timeout: 10) { self.send(key + '_element').exists? }
      self.send(key + '_element').set value
    when /checkbox/i
      Watir::Wait.until(timeout: 10) { self.send(key + '_element').exists? }
      self.send(key + '_element').set value
    when /radio/i
      Watir::Wait.until(timeout: 10) { self.send(key + '_element').exists? }
      self.send(key + '_element').set value
    else
      raise('Unknown field type:' + field_type)
    end
  end
end