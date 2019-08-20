def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  
  data.each do |color_name, color_hash|
    color_hash.each do |color, name_array|
      name_array.each do |name|
        if pigeon_hash[name] == nil
          pigeon_hash[name] = {}
          pigeon_hash[name][color_name] = []
        else
          pigeon_hash[name][color_name] = []
        end
      end
    end
  end
  
  pigeon_hash.each do |listed_names, values|
    values.each do |color_name, name_array|
      data.each do |cgl, value|
        value.each do |color, name_array|
          name_array.each do |pigeon|
            if pigeon == name && colors == cgl
              pigeon_hash[name][colors] << color.to_s
            end
          end
        end
      end
    end
  end
  return pigeon_hash
end