module ReactTemplates
  class Railtie < Rails::Railtie
    initializer 'react_templates.register_engine' do |app|
      app.assets.register_engine '.rt', ReactTemplates::Template
    end
  end
end
