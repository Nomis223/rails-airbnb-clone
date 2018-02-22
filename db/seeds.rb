Booking.destroy_all
Guitar.destroy_all
User.destroy_all

puts "Everything destroyed..."

User.create(name: "Simon Garfunkel", email: 'blah@gmail.com', password: 'string')
User.create(name: "Marc Anthony", email: 'wyss.a.marc@gmail.com', password: '123123')
User.create(name: "Tanelius Thomson", email: 'tanel.vahisalu@gmail.com', password: 'lewagon')

first_user_id = User.first.id
last_user_id = User.last.id

puts "New users created..."

guitar_attributes = [
  {
    address:      '7 Boundary St, London E2 7JE',
    latitude:     51.5245352,
    longitude:    -0.0791151,
    description:  'This ultra-affordable dreadnought acoustic guitar features a whitewood body, which brings out lots of mid-range punch. The nato neck adds sustain without losing any strength in tone.',
    category:     'Acoustic',
    brand:        'Rogue RA-090 Dreadnought',
    image:        'https://images.pexels.com/photos/164897/pexels-photo-164897.jpeg?w=940&h=650&dpr=2&auto=compress&cs=tinysrgb',
    user_id:      first_user_id
  },
  {
    address:      '22763 Hamburg',
    latitude:     53.5448881,
    longitude:    9.922022,
    description:  'The best-in-class Mitchell MD400 offers a carved, double cutaway mahogany body and a one-piece mahogany set neck for superior tone and sustain. Both the neck and body are carefully bound in a stunning multi-ply binding/purfling to produce an amazing eye-catching aesthetic.',
    category:     'Electric',
    brand:        'Mitchell MD400 Modern Rock Double-Cutaway',
    image:        'https://ssli.ebayimg.com/images/g/DVAAAOSwTm9aFdas/s-l1600.jpg',
    user_id:      last_user_id
  },
  {
    address:      'Jansastraße 9, 12045 Berlin',
    latitude:     52.4995597,
    longitude:    13.3563751,
    description:  'Fucking garbage.',
    category:     'Electric',
    brand:        'Fretlight FG-621 Wireless Guitar',
    image:        'https://i.ebayimg.com/images/g/FwkAAOSwrslacN12/s-l225.jpg',
    user_id:      first_user_id
  },
  {
    address:      '22763 Hamburg',
    latitude:     52.4862229,
    longitude:    13.4316318,
    description:  'The best-in-class Mitchell MD400 offers a carved, double cutaway mahogany body and a one-piece mahogany set neck for superior tone and sustain. Both the neck and body are carefully bound in a stunning multi-ply binding/purfling to produce an amazing eye-catching aesthetic.',
    category:     'Acoustic',
    brand:        'Savannah SO-SGO-09E-BK 000',
    image:        'https://musicalinstrumentmagazine.com/wp-content/uploads/2017/06/Mitchell-Guitars-MD400-Series-800x445.jpg',
    user_id:      last_user_id
  },
  {
    address:      'Schloßpl. 1, 10178 Berlin',
    latitude:     52.5058516,
    longitude:    13.1445553,
    description:  'The Standard is a visually stunning guitar that delivers spectacular sound. This Hamer design is the second body shape ever made by Hamer in 1974 and in essence similar to Hamer USA Standard - an upscale flame top guitar, discontinued in ‘85, revived in ‘95 and incorporated into Import Series in 1997.',
    category:     'Electric',
    brand:        'Hamer Standard Flame Top Electric Guitar Cherry Sunburst',
    image:        'https://images-na.ssl-images-amazon.com/images/I/61vO3W6n5AL._SX355_.jpg',
    user_id:      first_user_id
  },
  {
  brand:          'Gibson Les Paul',
  category:       'Electric',
  description:    'The Les Paul Standard HP-II retains popular features, including comfortable asymmetrical Slim Taper neck profile, while enhancing the experience with upgraded takes on the hallowed PAF humbucking pickups and a AAA+ figured maple top with high-end appointments. The HP-II model delivers cutting-edge innovations for the forward-looking player including Ultra-Modern weight relief with belly scarf, fast-access heel, soloist neck width, and titanium adjustable zero-fret nut and saddles. Exceptional sonic tonal variety provided by 4 push-pull pots with DIP switch for over 150 reversible instant rewiring options.',
  address:        'Weinbergsweg 10, 10119 Berlin',
  longitude:      52.5315784,
  latitude:       13.4006038,
  image:          'https://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/USA/LP-Standard-HP-2018-2/H2LPS18O8CH1_MAIN_HERO_01.jpg',
  user_id:        last_user_id
},
{
  brand:          'Gibson SG',
  category:       'Electric',
  description:    'The SG Faded brings legendary Gibson SG performance alive with a spirited, worn finish. Simple style comes from the faded gloss-nitro finish and classic dot inlays. Slim Taper neck, mahogany body, solid rosewood fingerboard and classic PAF humbucking pickups deliver the signature sound and feel of the great SG of the past six decades.',
  address:        'Linienstrasse 214, 10119 Berlin',
  longitude:      52.528590,
  latitude:       13.405644,
  image:          'http://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/Custom/SG-Standard-Bohemian/SGSR4PSL11866_MAIN_HERO_01.jpg',
  user_id:        first_user_id
},
{
  brand:          'Gibson',
  category:       'Electric',
  description:    'The Les Paul Classic guitar conveys major elements of the iconic Les Paul look with the legendary tonewood combination of a mahogany-and-maple non-weight relief body, bound body top and fingerboard with trapezoid fingerboard inlays. Fast and comfortable playability is increased with a Slim Taper neck. Additional appointments include a pair of P-90 pickups, ABR bridge, nickel-plated hardware, and hand-wired electronics including Orange Drop capacitors.',
  address:        'Hegelpl. 1, 10117 Berlin',
  longitude:      52.5195086,
  latitude:       13.3919768,
  image:          'http://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/Custom/Modern-Les-Paul-Standard-Trans-Metal/MLPSPSL11282_MAIN_HERO_01.jpg',
  user_id:        last_user_id
},
{
  brand:          'Gibson Hummingbird',
  category:       'Aucustic',
  description:    'From a company that has brought the guitar world so many great originals, the Hummingbird stands out strong and proud. Introduced in 1960 as Gibson’s first square-shouldered dreadnought, the Hummingbird arrived at the dawn of a new era in music, and was rapidly embraced by several prime movers on the scene. In the hands of everyone from Keith Richards to Gram Parsons, it quickly proved itself equally adept at folk, country and rock, and excelled at many of the crossovers genres in between that helped to set the scene for the ’60s.',
  address:        'Glinkastraße 15, 10117 Berlin',
  longitude:      52.5144378,
  latitude:       13.3840647,
  image:          'https://uploads.disquscdn.com/images/c580b6cb1db071de2df62f02f0a998437d33841c5e6fdf1a96e63dce06f60d6d.jpg',
  user_id:        first_user_id
},
{
  brand:          'Gibson Flying V',
  category:       'Electric',
  description:    'The Flying V Custom adds the classic, refined and upscale Custom looks to one of Gibsons most legendary designs. The pointed, unorthodox lines of the V have always been magnetizing to the more daring guitar players among us - a visual statement with uncompromised Gibson tone. This rare edition adds a new layer of boldness to an already outspoken guitar.',
  address:        'Neue Grünstraße 10',
  longitude:      52.5091396,
  latitude:       13.4029376,
  image:          'http://images.gibson.com.s3.amazonaws.com/Products/Electric-Guitars/2017/Custom/Flying-V-Custom/CSFVCPSL11050_MAIN_HERO_01.jpg',
  user_id:        last_user_id
},
{
  brand:          'Gibson',
  category:       'Electric',
  description:    'The Les Paul Classic guitar conveys major elements of the iconic Les Paul look with the legendary tonewood combination of a mahogany-and-maple non-weight relief body, bound body top and fingerboard with trapezoid fingerboard inlays. Fast and comfortable playability is increased with a Slim Taper neck. Additional appointments include a pair of P-90 pickups, ABR bridge, nickel-plated hardware, and hand-wired electronics including Orange Drop capacitors.',
  address:        'Feilnerstraße 1-4, 10969 Berlin',
  longitude:      52.5057589,
  latitude:       13.3967373,
  image:          'https://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/USA/LP-Standard-HP-2018-2/H2LPS18O8CH1_MAIN_HERO_01.jpg',
  user_id:        first_user_id
},
{
  brand:          'Fender',
  category:       'Electric',
  description:    'In der American Elite Telecaster warten ein gutes Dutzend heißer Innovationen darauf, dass du sie zum Leben erweckst. Optisch ein Remake der Tele®, bestückt mit allem, was du für eine moderne, überzeugende Performance brauchst. Sie spielt sich fast wie von selbst, ist ein echtes Arbeitstier und erfüllt alle musikalischen Ansprüche, ob im Studio oder auf der Bühne.',
  address:        'Körtestraße 28, 10967 Berlin',
  longitude:      52.4901375,
  latitude:       13.4078275,
  image:          "http://www.fmicassets.com/Damroot/Zoom/10001/0114212700_gtr_frtbdydtl_001_nr.png",
  user_id:        last_user_id
},
{
  brand:          'Martin',
  category:       'Aucustic',
  description:    'Designed for those who have fallen in love with the look of Martin’s 15 and 17 Series solid mahogany guitars, this full-sized Dreadnought version of Martin’s recent 0XMAE features mahogany high-pressure laminate (HPL) top, back and sides, a herringbone applied rosette, a high performance neck, and a Forest Stewardship Council® (FSC®)-certified Richlite® fingerboard and bridge. This warm, projective X Series guitar is stage and studio ready with Fishman®Sonitone electronics and built for strength to endure endless miles on the road.',
  address:        'Hasenheide 69, 10967 Berlin',
  longitude:      52.4883494,
  latitude:       13.4093948,
  image:          'https://www.martinguitar.com/media/8681/dx2mae_f_new.jpg',
  user_id:        first_user_id
},
{
  brand:          'Dean',
  category:       'Aucustic',
  description:    'The Dean CE Acoustic-Electric Resonator Guitar features a modern body design and electronics. The resonator guitar has a mahogany top, back and sides, a mahogany neck, and a 21 fret black walnut fingerboard. The cutaway body lets you reach the upper frets. Grover tuners make a cinch to get in tune and stay there. A Dean "lipstick" pickup has controls for volume and tone so you can plug-in and be heard in any setting.',
  address:        'Berolinastraße 10, 10178 Berlin',
  longitude:      52.5220856,
  latitude:       13.4202168,
  image:          'http://www.deanguitars.com/images/productimages/rcenm/rcenm.png',
  user_id:        last_user_id
},
{
  brand:          'First Act',
  category:       'Electric',
  description:    'Fucking garbage',
  address:        'An der Brauerei, 10249 Berlin',
  longitude:      52.524488,
  latitude:       13.4430341,
  image:          'https://polaris-web-pub.s3.amazonaws.com/media/first-act/products/full/e8268650-6afe-11e7-beb9-0fe1c11520b2.png',
  user_id:        first_user_id
},
{
  brand:          'Fender',
  category:       'Electric',
  description:    'A period of change, both for Fender and for pop culture as a whole, the 1960s saw the Strat mellow slightly as it grew up. The white pickguard was updated to mint green, and the fingerboard was switched from the original maple to rosewood, adding a smoother note to the Strat’s clear, articulate voice. The American Original ‘60s Stratocaster keeps these refinements intact while adding modern feel and pickup switching to the iconic instrument that helped birth guitar rock as we know it.',
  address:        'Egelingzeile 6, 12103 Berlin',
  longitude:      52.463701,
  latitude:       13.3667363,
  image:          "https://www.fmicassets.com/Damroot/ZoomJpg/10001/0110120809_gtr_frt_001_rr.jpg",
  user_id:        last_user_id
},
{
  brand:          'Fender',
  category:       'Electric',
  description:    'Bringing to life the vision of one of the most respected guitarists in the world, the Eric Johnson Signature Stratocaster Thinline is the perfect marriage between a semi-hollow body and a traditional Stratocaster. Johnson is famous in guitar circles for questing for his ideal tone—liquid and articulate, it perfectly complements the playing style that earned his place in the modern guitar pantheon. In 2015 he approached us to co-design a lightweight, resonant instrument that combines the tones of his favorite semi-hollowbody guitars and his Stratocaster. Two years later, we hit the formula for tonal nirvana with the Eric Johnson Signature Stratocaster Thinline.',
  address:        'Burchardstraße 38, 12103 Berlin',
  longitude:      52.4663732,
  latitude:       13.3693713,
  image:          'https://www.fmicassets.com/Damroot/ZoomJpg/10001/0113602703_gtr_frt_001_rr.jpg',
  user_id:        first_user_id
},
{
  brand:          'Fender',
  category:       'Aucustic',
  description:    'With sound and style tough enough to rock a chicken-wire-enclosed stage, the Deluxe Roadhouse Strat is the perfect instrument for tearing it up all night long. Packed with a wide-ranging variety of tones, ranging from tough, wiry single-coil spank to a high-output sound thats perfect for searing leads, this guitar is versatile enough to handle anything you throw at it with style. Its the perfect instrument for a performer who demands sonic flexibility and the ability to easily switch sounds at the drop of a hat.',
  address:        'Kol.Kleeblatt Rosenweg 2-8, 12109 Berlin',
  longitude:      52.451806,
  latitude:       13.4066215,
  image:          'http://www.deanguitars.com/images/productimages/rcenm/rcenm.png',
  user_id:        last_user_id
},
{
  brand:          'Fender',
  category:       'Electric',
  description:    'Fat, hard-rockin sound and elegant Fender style unite in the Deluxe Strat HSS, a versatile tone machine with power to spare. The rich, warm humbucking bridge pickup adds a touch of thickness to the instruments voice, while special electronics ensure traditional Strat tone is close at hand; ready to go at a moments notice. A time-tested performer on stage and in the studio, this graceful performer with smooth, comfortable playing feel will easily handle any sonic needs that arise.',
  address:        'Thomasstraße 5-3, 12053 Berlin',
  longitude:      52.4737187,
  latitude:       13.4392606,
  image:          'https://www.fmicassets.com/Damroot/ZoomJpg/10002/0147202352_gtr_frt_001_rr.jpg',
  user_id:        first_user_id
},
{
  brand:          'Fender',
  category:       'Acoustic',
  description:    "The new Classic Design CT models feature a brand new body shape: Travel. Its short scale and compact size make it the perfect instrument to bring along wherever the music takes you. The CT-60S Travel body is derived from an Auditorium shape that's been scaled down to 23.5 for comfort and portability. A great choice for players of all ages and sizes, its an exceptional alternative to downsized instruments normally reserved for young strummers. Like all Classic Design guitars, the CT-60S includes a solid spruce top, easy-to-play neck profile and rolled fingerboard edges, along with mahogany back and sides and a rosewood fingerboard",
  address:        'Körtestraße 28, 10967 Berlin',
  longitude:      52.4901375,
  latitude:       13.4078275,
  image:          "https://www.fmicassets.com/Damroot/ZoomJpg/10002/0961713021_gtr_frt_001_rr.jpg",
  user_id:        last_user_id
},
{
  brand:          'Fender',
  category:       'Acoustic',
  description:    'Bringing to life the vision of one of the most respected guitarists in the world, the Eric Johnson Signature Stratocaster Thinline is the perfect marriage between a semi-hollow body and a traditional Stratocaster. Johnson is famous in guitar circles for questing for his ideal tone—liquid and articulate, it perfectly complements the playing style that earned his place in the modern guitar pantheon. In 2015 he approached us to co-design a lightweight, resonant instrument that combines the tones of his favorite semi-hollowbody guitars and his Stratocaster. Two years later, we hit the formula for tonal nirvana with the Eric Johnson Signature Stratocaster Thinline.',
  address:        'Karl-Marx-Platz 5, 12043 Berlin',
  longitude:      52.473971,
  latitude:       13.4402972,
  image:          'https://www.fmicassets.com/Damroot/ZoomJpg/10001/0961705021_gtr_frt_001_rr.jpg',
  user_id:        first_user_id
},
{
  brand:          'Fender',
  category:       'Aucustic',
  description:    'Combining powerful onboard electronics—including a built-in tuner—with great tone and easy playability, the CD-60SCE All-Mahogany is ideal for beginning to intermediate level players who are ready to plug in. Featuring a single-cutaway body for easy upper-fret access, warm-sounding solid mahogany top, easy-to-play neck and mahogany back and sides, the CD-60SCE is perfect for the couch, the beach or the coffeehouse—anywhere you want classic Fender playability and sound.',
  address:        'Harzer Str. 37-39, 12059 Berlin',
  longitude:      52.4847667,
  latitude:       13.4472995,
  image:          'http://www.deanguitars.com/images/productimages/rcenm/rcenm.png',
  user_id:        last_user_id
},
{
  brand:          'Fender',
  category:       'Acoustic',
  description:    "The Classic Design CN models combine the easy playability and distinct tone of nylon strings with the comfort of steel-string spacing. We've replaced the typically wide necks normally found on classical guitars with the same easy-playing neck profile found on all other Classic Design models. The CN-60S also features a solid spruce top, mahogany back and sides and rolled fingerboard edges.The CN-60S is a perfect choice for the developing player seeking a softer string that's easier to fret, while still offering the rich tones of a classical guitar. Putting comfort first, this instrument is an excellent starting point for those who are just beginning their musical journe",
  address:        'Görlitzer Str. 1-6, 10997 Berlin',
  longitude:      52.4983007,
  latitude:       13.4329641,
  image:          'https://www.fmicassets.com/Damroot/ZoomJpg/10001/0961714006_gtr_frt_001_rr.jpg',
  user_id:        first_user_id
}]

guitar_attributes.each do |attribute|
  guitar = Guitar.new(attribute)
  guitar.remote_image_url = attribute[:image]
  guitar.save
end

puts "New guitars created..."

fender_array = Guitar.where(brand: "Fender")

Booking.create(fixed_price: 23, guitar_id: fender_array[0].id, user_id: first_user_id, starts_at: "2018-03-01", ends_at: "2018-03-07")
Booking.create(fixed_price: 23, guitar_id: fender_array[0].id, user_id: last_user_id, starts_at: "2018-03-14", ends_at: "2018-03-21")
Booking.create(fixed_price: 23, guitar_id: fender_array[0].id, user_id: first_user_id, starts_at: "2018-03-25", ends_at: "2018-03-27")

Booking.create(fixed_price: 23, guitar_id: fender_array[1].id, user_id: last_user_id, starts_at: "2018-03-06", ends_at: "2018-03-12")
Booking.create(fixed_price: 23, guitar_id: fender_array[1].id, user_id: first_user_id, starts_at: "2018-03-14", ends_at: "2018-03-16")
Booking.create(fixed_price: 23, guitar_id: fender_array[1].id, user_id: last_user_id, starts_at: "2018-03-24", ends_at: "2018-03-27")

Booking.create(fixed_price: 23, guitar_id: fender_array[2].id, user_id: first_user_id, starts_at: "2018-03-11", ends_at: "2018-03-17")
Booking.create(fixed_price: 23, guitar_id: fender_array[2].id, user_id: last_user_id, starts_at: "2018-03-25", ends_at: "2018-03-27")

Booking.create(fixed_price: 23, guitar_id: fender_array[3].id, user_id: first_user_id, starts_at: "2018-03-16", ends_at: "2018-03-22")
Booking.create(fixed_price: 23, guitar_id: fender_array[3].id, user_id: last_user_id, starts_at: "2018-03-29", ends_at: "2018-03-29")

Booking.create(fixed_price: 23, guitar_id: fender_array[4].id, user_id: first_user_id, starts_at: "2018-03-21", ends_at: "2018-03-27")
Booking.create(fixed_price: 23, guitar_id: fender_array[4].id, user_id: last_user_id, starts_at: "2018-03-03", ends_at: "2018-03-04")
Booking.create(fixed_price: 23, guitar_id: fender_array[4].id, user_id: first_user_id, starts_at: "2018-03-13", ends_at: "2018-03-15")

Booking.create(fixed_price: 23, guitar_id: fender_array[5].id, user_id: last_user_id, starts_at: "2018-03-26", ends_at: "2018-03-30")
Booking.create(fixed_price: 23, guitar_id: fender_array[5].id, user_id: first_user_id, starts_at: "2018-03-10", ends_at: "2018-03-13")
Booking.create(fixed_price: 23, guitar_id: fender_array[5].id, user_id: last_user_id, starts_at: "2018-03-02", ends_at: "2018-03-05")

Booking.create(fixed_price: 23, guitar_id: fender_array[6].id, user_id: first_user_id, starts_at: "2018-03-03", ends_at: "2018-03-09")
Booking.create(fixed_price: 23, guitar_id: fender_array[6].id, user_id: last_user_id, starts_at: "2018-03-10", ends_at: "2018-03-11")
Booking.create(fixed_price: 23, guitar_id: fender_array[6].id, user_id: first_user_id, starts_at: "2018-03-28", ends_at: "2018-03-29")

Booking.create(fixed_price: 23, guitar_id: fender_array[7].id, user_id: last_user_id, starts_at: "2018-03-06", ends_at: "2018-03-07")
Booking.create(fixed_price: 23, guitar_id: fender_array[7].id, user_id: first_user_id, starts_at: "2018-03-14", ends_at: "2018-03-18")
Booking.create(fixed_price: 23, guitar_id: fender_array[7].id, user_id: last_user_id, starts_at: "2018-03-21", ends_at: "2018-03-22")

puts "Bookings created..."
puts "Seeding complete!"
