module Clang
  struct UnsavedFile
    def initialize(filename, contents)
      @file = LibC::CXUnsavedFile.new
      @file.filename = filename
      @file.contents = contents
      @file.length = contents.size
    end

    def filename
      String.new(@file.filename)
    end

    def to_unsafe
      @file
    end
  end
end
