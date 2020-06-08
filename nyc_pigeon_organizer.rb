require 'pry'

def nyc_pigeon_organizer(data)
  new_data = data.each_with_object({}) do | (key, value) , final_a |
    value.each do | inner_k , inner_v |
      inner_v.each do | name |
        if !final_a[name]
          final_a[name] = {}
        end
        if !final_a[name][key]
          final_a[name][key] =[]
        end
        final_a[name][key] << inner_k.to_s
      end
    end
  end
  new_data
end
