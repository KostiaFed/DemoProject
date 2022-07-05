# Тут потрібно створити програму яка буде повертати код вибраної кати
# Створіть клас Show і в ньому метод run 
# в метод run буде приходити параметр з іменем кати
# return повертає строку з кодом кати (ця строка буде виведена в консоль)

class Show
    def run(kata)
        file = find_file(kata)
        
        if file == nil
            return "Каталог не знайдено"
        end

        result = File.read(file).gsub(/\s*#.*$/, "") + "\n"
    end

    def find_file(kata)
        catalog = Dir["./katas/*"]
        catalog.each do |folder|
            Dir["#{folder}/*"].each do |file|
                if file.split("/")[-1].downcase == kata.downcase + ".rb"
                    return file
                end
            end
        end
        return nil
    end
end
