module NavHelper
  
  @@navPages = {
    'Home' => {'path' => "/", 'html_options' => {}, 'subdomains' => ['default']},
    'About' => {'path' => "/about", 'html_options' => {}, 'subdomains' => ['default']},
    'Contact us' => {'path' => "/contact", 'html_options' => {}, 'subdomains' => ['default']},
    'Officers' => {'path' => "/officers", 'html_options' => {}, 'subdomains' => ['default']},
    'Constitution' => {'path' => "/constitution", 'html_options' => {}, 'subdomains' => ['default', 'members']},
    'Hackathons' => {'path' => "/hackathons", 'html_options' => {}, 'subdomains' => ['default']},
    'Social events' => {'path' => "/social_events", 'html_options' => {}, 'subdomains' => ['default']},
    'Calendar' => {'path' => "/calendar", 'html_options' => {}, 'subdomains' => ['default']},
    'Business contact form' => {'path' => "/business_contact_form", 'html_options' => {}, 'subdomains' => ['default']},
    'Become a member' => {'path' => "/become_a_member", 'html_options' => {}, 'subdomains' => ['default']},
    'Members showcase' => {'path' => "#", 'html_options' => {}, 'subdomains' => ['default']},
    'Lightning talks' => {'path' => "/lightning_talks", 'html_options' => {}, 'subdomains' => ['default']},
    'UH CS news' => {'path' => "http://www.cs.uh.edu/news-events/index.php", 'html_options' => {:target => '_blank'}, 'subdomains' => ['default']}
  }
  
  def get_navigation_for(subdomain)
    subdomain = 'default' if subdomain == '' || subdomain == 'www'
    @@navPages.inject("") do |accumulator, (key, value)|
      accumulator << construct_link_html(key, value['path'], value['html_options']) if (value['subdomains']).include? subdomain
      accumulator
    end
  end

  def construct_link_html (name, path, html_options)
    nav_link_to name, path, html_options, {:selected_class => 'pure-menu-selected', :wrapper => 'li'}
  end
  
end