require "csv"


class Work

    # DBを使わずにcsvからデータを取り出すためのモデル定義
    include ActiveModel::Model

    attr_accessor :id, :name, :url, :url_github, :lang, :techs, :description, :attention, :image_class

    INPUT_PATH = "app/assets/csv/works.csv"

    def initialize(
            id, name, url, url_github, lang, techs,
            description, attention, image_class
        )
        @id, @name = id, name
        @url, @url_github = url, url_github
        @lang, @techs = lang, techs
        @description, @attention = description, attention
        @image_class = image_class
    end

    private
    def self.import_csv
        f = CSV.read(INPUT_PATH, headers: true)
        works = []
        f.each do |r|
            work = Work.new(
                r["id"], r["name"], r["url"], r["url_github"],
                r["lang"], r["techs"], r["description"],
                r["attention"], r["image_class"]
            )
            works.push(work)
        end
        return works
    end

end
