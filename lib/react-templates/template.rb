module ReactTemplates
  class Template < ::Tilt::Template
    def context
      @context ||= ExecJS.compile(context_js)
    end

    def prepare
    end

    def evaluate(scope, locals, &block)
      template(scope.logical_path)
    end

    private

    def template(template_name)
      <<-JS
        (function() {
          if (typeof(window.JST) == 'undefined') { window.JST = {}; }
          window.JST[#{template_name.to_json}] = #{react_template};
        }());
      JS
    end

    def react_template
      context.call(
        'window.reactTemplates.convertTemplateToReact',
        data,
        modules: 'jsrt')
    end

    def js_path
      File.join(File.dirname(__FILE__),'..','..','assets','rt-main.browser.js')
    end

    def context_js
      "var window = {}, global = this; #{File.read(js_path)}"
    end
  end
end
