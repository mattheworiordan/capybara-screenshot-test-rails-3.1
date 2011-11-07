module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      root_path
    when /the Rack\s?page/
      '/rack'
    when /the Selenium\s?page/
      '/selenium'
    when /the Webkit\s?page/
      '/webkit'

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
