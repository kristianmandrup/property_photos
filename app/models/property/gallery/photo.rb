class Property
  class Gallery
    class Photo < ::RGallery::Photo
      def initialize property, options = {}
        super
      end

      alias_method :property, :obj

      def path
        File.join folder, super
      end

      # mogrify -path fullpathto/temp2 -resize 60x60% -quality 60 -format jpg *.png

      # this will take all png files in your current directory (temp), 
      # resize to 60% (of largest dimension and keep aspect ratio), 
      # set jpg quality to 60 and convert to jpg.
      def thumb
        File.join folder, 'thumbs', file_path
      end

      def title
        property.title
      end

      def alt
        title
      end

      protected

      def property
        obj
      end

      def filename
        "#{property.picture}"
      end    

      def folder
        'galleria-photos'
      end

      def self.extension
        :jpg
      end
    end
  end
end