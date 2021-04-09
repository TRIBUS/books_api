module Books
  class ExportToCsv
    def csv
      @csv ||= CSV.generate(headers: true) do |csv|
        csv << Book.column_names

        books.find_each do |book|
          csv << book.attributes
        end
      end
    end

    private

    def books
      @books ||= Book.all
    end
  end
end