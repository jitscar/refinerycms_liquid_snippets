module RefinerycmsLiquidSnippets
  class Engine < ::Rails::Engine

    def self.activate
      Dir.glob(File.join(Pathname.new(File.expand_path('../../../../', __FILE__)), 'app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(Pathname.new(File.expand_path('../../../../', __FILE__)), "app/overrides/**/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      Dir[root + 'lib/liquid/**/*.rb'].each { |f| Rails.configuration.cache_classes ? require(f) : load(f) }


      %w{. tags drops filters blocks}.each do |dir|
        Dir[File.join(Pathname.new(File.expand_path('../../../../', __FILE__)), 'app/**/liquid', dir, '*.rb')].each { |lib|
          Rails.configuration.cache_classes ? require(lib) : load(lib)
        }
      end
    end

    config.to_prepare &method(:activate).to_proc

  end
end