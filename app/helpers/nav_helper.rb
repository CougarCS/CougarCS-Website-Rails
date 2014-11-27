module NavHelper
  
  @@navPages = {
    'Home' => {'path' => "/", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'About' => {'path' => "/about", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'Contact us' => {'path' => "/contact", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'Officers' => {'path' => "/officers", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'Constitution' => {'path' => "/constitution", 'html_options' => {}, 'subdomains' => ['members']},
    'Tutoring' => {'path' => "/tutoring", 'html_options' => {}, 'subdomains' => ['members']},
    'Hackathons' => {'path' => "/hackathons", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'Social events' => {'path' => "/social_events", 'html_options' => {}, 'subdomains' => ['default', 'members']},
    'Calendar' => {'path' => "/calendar", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'Companies List' => {'path' => "/companies_list", 'html_options' => {}, 'subdomains' => ['members']},
    'Career Fair Information' => {'path' => "/career_fair_info_businesses", 'html_options' => {}, 'subdomains' => ['business']},
    'Business contact form' => {'path' => "/business_contact_form", 'html_options' => {}, 'subdomains' => ['default', 'business']},
    'CougarCS Sponsors' => {'path' => "/sponsors", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'Become a member' => {'path' => "/become_a_member", 'html_options' => {}, 'subdomains' => ['default']},
    'Event Pictures' => {'path' => "/event_pictures", 'html_options' => {}, 'subdomains' => ['default', 'members']},
    'Officers Application' => {'path' => "/officers_application", 'html_options' => {}, 'subdomains' => ['members']},
    'Members showcase' => {'path' => "#", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'Lightning talks' => {'path' => "/lightning_talks", 'html_options' => {}, 'subdomains' => ['default', 'members', 'business']},
    'UH CS news' => {'path' => "http://www.cs.uh.edu/news-events/index.php", 'html_options' => {:target => '_blank'}, 'subdomains' => ['default', 'members', 'business']}
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