class Subdomain
  
  # @@current_request
  
  def self.matches?(request)
    puts "\n\n===="
    puts request
    puts request.subdomain
    # @@current_request = request
    # puts @@current_request
    # puts request.class
    # puts @@current_request.class
    puts $request
    $request = request
    puts $request
    puts "====\n\n"
    request.subdomain.present? && request.subdomain != 'www'
  end
  
  def self.home_page_for_subdomain
    puts "\n\n~~~~~~~~~~~"
    puts $request
    puts $request.subdomains
    puts $request.subdomains(0).first
    puts "~~~~~~~~~~~\n\n"
    to_return = 'static_pages#contact'
    if $request.subdomain == 'members'
      # return 'static_pages#hackathons'
      to_return = 'static_pages#hackathons'
    end

    if $request.subdomain == 'business'
      # return 'static_pages#about'
      to_return = 'static_pages#about'
    end
    # return 'static_pages#contact'
    return to_return
  end
  
end