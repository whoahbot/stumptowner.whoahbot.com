# Stumptowner
# by the indelible Shanti Braford
# racked and jsonified by Whoahbot!

class Stumptowner

  COUNTRIES = ["Afghanistan", "Kablamistan", "Albania", "Algeria", "American
Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and
Barbuda", "Argentina", "Armenia", "Aruba", "Ascension Island",
"Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain",
"Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin",
"Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana",
"Bouvet Island", "Brazil", "British Virgin Islands", "British Indian
Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso",
"Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman
Islands", "Central African Republic", "Chad", "Chile", "China",
"Christmas Island", "Cocos (Keeling) Island", "Colombia", "Comoros",
"Congo, Republic of", "Congo, Democratic Republic of", "Cook Islands",
"Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czech
Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic",
"Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea",
"Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands",
"Fiji", "Finland", "France", "French Guiana", "French Polynesia",
"French Southern Territories", "Gabon", "Gambia", "Georgia",
"Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada",
"Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea",
"Guinea-Bissau", "Guyana", "Haiti", "Heard and McDonald Islands",
"Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia",
"Iran", "Iraq", "Ireland", "Isle of Man", "Israel", "Italy",
"Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya",
"Kiribati", "North Korea", "South Korea", "Kuwait", "Kyrgyzstan",
"Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya",
"Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia",
"Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta",
"Marshall Islands", "Martinique", "Mauritania", "Mauritius",
"Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia",
"Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar",
"Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles",
"New Caledonia", "New Zealand", "Nicaragua", "Niue", "Niger",
"Nigeria", "Norfolk Island", "Northern Mariana Islands", "Norway",
"Oman", "Pakistan", "Palau", "Palestinian Territory, Occupied",
"Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines",
"Pitcairn Island", "Poland", "Portugal", "Puerto Rico", "Qatar",
"Reunion", "Romania", "Russia", "Rwanda", "Saint Barthelemy", "Saint
Helena", "Saint Kitts and Nevis", "Saint Lucia", "Saint Martin",
"Saint Pierre and Miquelon", "Saint Vincent and the Grenadines",
"Samoa", "San Marino", "Sao Tome and Principe", "Saudia Arabia",
"Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore",
"Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa",
"South Georgia and the South Sandwich Islands", "Spain", "Sri Lanka",
"Sudan", "Suriname", "Svalbard and Jan Mayen Islands", "Swaziland",
"Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania",
"Thailand", "Timor-Leste", "Togo", "Tokelau", "Tonga", "Trinidad and
Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos
Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates",
"United Kingdom", "United States of America", "United States Virgin
Islands", "Uruguay", "US Minor Outlying Islands", "USSR",
"Uzbekistan", "Vanuatu", "Vatican City", "Venezuela",
"Vietnam", "Wallis and Futuna Islands", "Western Sahara", "Xanadu", "Yemen",
"Yugoslavia", "Zambia", "Zimbabwe"].freeze

  COFFEES = ["%c nights", "Taste of %c", "%c Reinvisioned", "Hangover in %c", "Pallat of %c Manifested", "Bean Delight, %c Style"].freeze
  VERBS = %w(offering envisioning delivering emboldening fantasizing encapsulating).freeze
  ADVERBS = ["silken", "sultry", "mouthwatering", "dripping", "chewy", "persistently refreshing", "indelibly evocative of effervescent flavor", "smoky, romantic", "burly", "noticeably absent", "pallate teasing", "fatty", "lando calrissian-esqe"].freeze
  VARIETALS = %w(Jember Jasper Catimor Bourbon Chai Catuai Metal Froth Mirth Hemp Bananas Mint Apples Cupcake Patchouli).freeze
  FLAVORS = %w(jujufruit mango raspberry blackberry boisenberry pie bacon eggs wood-bark shards-o-glass cocoa milk chai nuts candy soda chocolate).freeze

  class << self
    def to_json
      country = COUNTRIES[rand(COUNTRIES.size - 1)]
      coffee = COFFEES[rand(COFFEES.size - 1)]
      verb = VERBS[rand(VERBS.size - 1)]
      adverb = ADVERBS[rand(ADVERBS.size - 1)]
      coffee_str = coffee.gsub('%c', country)

      elevation = rand(2000) + 1000
      idx = rand(VARIETALS.size - 1)
      idx2 = rand(VARIETALS.size - 1)
      varietals = "#{VARIETALS[idx]} and #{VARIETALS[idx2]}"
      idx = rand(FLAVORS.size - 1)
      idx2 = rand(FLAVORS.size - 1)
      idx3 = rand(FLAVORS.size - 1)

      flavors = "#{FLAVORS[idx]}, #{FLAVORS[idx2]} and #{FLAVORS[idx3]}"
      %Q{{"coffee":"#{coffee_str}","country":"#{country}","elevation":"#{elevation} - #{elevation + (rand(500))} Meters","varietal": "#{varietals}","flavors":"Fragrance of #{flavors} #{verb} a #{adverb} mouth feel."}}
    end
  end
end