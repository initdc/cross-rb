# frozen_string_literal: true

require_relative "comm"

module Unix
  module Tree
    def self.write(dir, file_dir, file = "BINARYS")
      IO.write("#{file_dir}/#{file}", "")

      cmd = "tree #{dir}"
      IO.popen(cmd) do |r|
        lines = r.readlines

        for line in lines
          print line if Unix.info
          IO.write(file, line, mode: "a")
        end
      end
    end
  end
end