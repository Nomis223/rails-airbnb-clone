Guitar.destroy_all
User.destroy_all

User.create(email: 'blah@gmail.com', password: 'string')
User.create(email: 'wyss.a.marc@gmail.com', password: '123123')
User.create(email: 'tanel.vahisalu@gmail.com', password: 'lewagon')

guitar_attributes = [
  {
    address:      '7 Boundary St, London E2 7JE',
    latitude:     51.5245352,
    longitude:    -0.0791151,
    description:  'This ultra-affordable dreadnought acoustic guitar features a whitewood body, which brings out lots of mid-range punch. The nato neck adds sustain without losing any strength in tone.',
    category:     'Acoustic',
    brand:        'Rogue RA-090 Dreadnought',
    image:        'https://images.pexels.com/photos/164897/pexels-photo-164897.jpeg?w=940&h=650&dpr=2&auto=compress&cs=tinysrgb',
    user_id:      User.first.id
  },
  {
    address:      '22763 Hamburg',
    latitude:     53.5448881,
    longitude:    9.922022,
    description:  'The best-in-class Mitchell MD400 offers a carved, double cutaway mahogany body and a one-piece mahogany set neck for superior tone and sustain. Both the neck and body are carefully bound in a stunning multi-ply binding/purfling to produce an amazing eye-catching aesthetic.',
    category:     'Electric',
    brand:        'Mitchell MD400 Modern Rock Double-Cutaway',
    image:        'https://ssli.ebayimg.com/images/g/DVAAAOSwTm9aFdas/s-l1600.jpg',
    user_id:      User.first.id
  },
  {
    address:      'Jansastraße 9, 12045 Berlin',
    latitude:     52.4995597,
    longitude:    13.3563751,
    description:  'Fucking garbage.',
    category:     'Electric',
    brand:        'Fretlight FG-621 Wireless Guitar',
    image:        'https://i.ebayimg.com/images/g/FwkAAOSwrslacN12/s-l225.jpg',
    user_id:      User.first.id
  },
  {
    address:      '22763 Hamburg',
    latitude:     52.4862229,
    longitude:    13.4316318,
    description:  'The best-in-class Mitchell MD400 offers a carved, double cutaway mahogany body and a one-piece mahogany set neck for superior tone and sustain. Both the neck and body are carefully bound in a stunning multi-ply binding/purfling to produce an amazing eye-catching aesthetic.',
    category:     'Acoustic',
    brand:        'Savannah SO-SGO-09E-BK 000',
    image:        'https://musicalinstrumentmagazine.com/wp-content/uploads/2017/06/Mitchell-Guitars-MD400-Series-800x445.jpg',
    user_id:      User.first.id
  },
  {
    address:      'Schloßpl. 1, 10178 Berlin',
    latitude:     52.5058516,
    longitude:    13.1445553,
    description:  'The Standard is a visually stunning guitar that delivers spectacular sound. This Hamer design is the second body shape ever made by Hamer in 1974 and in essence similar to Hamer USA Standard - an upscale flame top guitar, discontinued in ‘85, revived in ‘95 and incorporated into Import Series in 1997.',
    category:     'Electric',
    brand:        'Hamer Standard Flame Top Electric Guitar Cherry Sunburst',
    image:        'https://images-na.ssl-images-amazon.com/images/I/61vO3W6n5AL._SX355_.jpg',
    user_id:      User.first.id
  },
  {
  brand:          'Gibson Les Paul',
  category:       'Electric',
  description:    'The Les Paul Standard HP-II retains popular features, including comfortable asymmetrical Slim Taper neck profile, while enhancing the experience with upgraded takes on the hallowed PAF humbucking pickups and a AAA+ figured maple top with high-end appointments. The HP-II model delivers cutting-edge innovations for the forward-looking player including Ultra-Modern weight relief with belly scarf, fast-access heel, soloist neck width, and titanium adjustable zero-fret nut and saddles. Exceptional sonic tonal variety provided by 4 push-pull pots with DIP switch for over 150 reversible instant rewiring options.',
  address:        'Weinbergsweg 10, 10119 Berlin',
  longitude:      52.5315784,
  latitude:       13.4006038,
  image:          'https://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/USA/LP-Standard-HP-2018-2/H2LPS18O8CH1_MAIN_HERO_01.jpg',
  user_id:        User.first.id
},
{
  brand:          'Gibson SG',
  category:       'Electric',
  description:    'The SG Faded brings legendary Gibson SG performance alive with a spirited, worn finish. Simple style comes from the faded gloss-nitro finish and classic dot inlays. Slim Taper neck, mahogany body, solid rosewood fingerboard and classic PAF humbucking pickups deliver the signature sound and feel of the great SG of the past six decades.',
  address:        'Linienstrasse 214, 10119 Berlin',
  longitude:      52.528590,
  latitude:       13.405644,
  image:          'http://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/Custom/SG-Standard-Bohemian/SGSR4PSL11866_MAIN_HERO_01.jpg',
  user_id:        User.first.id
},
{
  brand:          'Gibson',
  category:       'Electric',
  description:    'The Les Paul Classic guitar conveys major elements of the iconic Les Paul look with the legendary tonewood combination of a mahogany-and-maple non-weight relief body, bound body top and fingerboard with trapezoid fingerboard inlays. Fast and comfortable playability is increased with a Slim Taper neck. Additional appointments include a pair of P-90 pickups, ABR bridge, nickel-plated hardware, and hand-wired electronics including Orange Drop capacitors.',
  address:        'Hegelpl. 1, 10117 Berlin',
  longitude:      52.5195086,
  latitude:       13.3919768,
  image:          'http://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/Custom/Modern-Les-Paul-Standard-Trans-Metal/MLPSPSL11282_MAIN_HERO_01.jpg',
  user_id:        User.first.id
},
{
  brand:          'Gibson Hummingbird',
  category:       'Aucustic',
  description:    'From a company that has brought the guitar world so many great originals, the Hummingbird stands out strong and proud. Introduced in 1960 as Gibson’s first square-shouldered dreadnought, the Hummingbird arrived at the dawn of a new era in music, and was rapidly embraced by several prime movers on the scene. In the hands of everyone from Keith Richards to Gram Parsons, it quickly proved itself equally adept at folk, country and rock, and excelled at many of the crossovers genres in between that helped to set the scene for the ’60s.',
  address:        'Glinkastraße 15, 10117 Berlin',
  longitude:      52.5144378,
  latitude:       13.3840647,
  image:          'https://uploads.disquscdn.com/images/c580b6cb1db071de2df62f02f0a998437d33841c5e6fdf1a96e63dce06f60d6d.jpg',
  user_id:      User.first.id
},
{
  brand:          'Gibson Flying V',
  category:       'Electric',
  description:    'The Flying V Custom adds the classic, refined and upscale Custom looks to one of Gibsons most legendary designs. The pointed, unorthodox lines of the V have always been magnetizing to the more daring guitar players among us - a visual statement with uncompromised Gibson tone. This rare edition adds a new layer of boldness to an already outspoken guitar.',
  address:        'Neue Grünstraße 10',
  longitude:      52.5091396,
  latitude:       13.4029376,
  image:          'http://images.gibson.com.s3.amazonaws.com/Products/Electric-Guitars/2017/Custom/Flying-V-Custom/CSFVCPSL11050_MAIN_HERO_01.jpg',
  user_id:      User.first.id
},
{
  brand:          'Gibson',
  category:       'Electric',
  description:    'The Les Paul Classic guitar conveys major elements of the iconic Les Paul look with the legendary tonewood combination of a mahogany-and-maple non-weight relief body, bound body top and fingerboard with trapezoid fingerboard inlays. Fast and comfortable playability is increased with a Slim Taper neck. Additional appointments include a pair of P-90 pickups, ABR bridge, nickel-plated hardware, and hand-wired electronics including Orange Drop capacitors.',
  address:        'Feilnerstraße 1-4, 10969 Berlin',
  longitude:      52.5057589,
  latitude:       13.3967373,
  image:          'https://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/USA/LP-Standard-HP-2018-2/H2LPS18O8CH1_MAIN_HERO_01.jpg',
  user_id:        User.first.id

},
{
  brand:          'Fender',
  category:       'Electric',
  description:    'In der American Elite Telecaster warten ein gutes Dutzend heißer Innovationen darauf, dass du sie zum Leben erweckst. Optisch ein Remake der Tele®, bestückt mit allem, was du für eine moderne, überzeugende Performance brauchst. Sie spielt sich fast wie von selbst, ist ein echtes Arbeitstier und erfüllt alle musikalischen Ansprüche, ob im Studio oder auf der Bühne.',
  address:        'Körtestraße 28, 10967 Berlin',
  longitude:      52.4901375,
  latitude:       13.4078275,
  image:          "http://www.fmicassets.com/Damroot/Zoom/10001/0114212700_gtr_frtbdydtl_001_nr.png",
  user_id:        User.first.id
},
{
  brand:          'Martin',
  category:       'Aucustic',
  description:    'Designed for those who have fallen in love with the look of Martin’s 15 and 17 Series solid mahogany guitars, this full-sized Dreadnought version of Martin’s recent 0XMAE features mahogany high-pressure laminate (HPL) top, back and sides, a herringbone applied rosette, a high performance neck, and a Forest Stewardship Council® (FSC®)-certified Richlite® fingerboard and bridge. This warm, projective X Series guitar is stage and studio ready with Fishman®Sonitone electronics and built for strength to endure endless miles on the road.',
  address:        'Hasenheide 69, 10967 Berlin',
  longitude:      52.4883494,
  latitude:       13.4093948,
  image:          'https://www.martinguitar.com/media/8681/dx2mae_f_new.jpg',
  user_id:        User.first.id
},
{
  brand:          'Dean',
  category:       'Aucustic',
  description:    'The Dean CE Acoustic-Electric Resonator Guitar features a modern body design and electronics. The resonator guitar has a mahogany top, back and sides, a mahogany neck, and a 21 fret black walnut fingerboard. The cutaway body lets you reach the upper frets. Grover tuners make a cinch to get in tune and stay there. A Dean "lipstick" pickup has controls for volume and tone so you can plug-in and be heard in any setting.',
  address:        'Berolinastraße 10, 10178 Berlin',
  longitude:      52.5220856,
  latitude:       13.4202168,
  image:          'http://www.deanguitars.com/images/productimages/rcenm/rcenm.png',
  user_id:        User.first.id
},
{
  brand:          'First Act',
  category:       'Electric',
  description:    'Fucking garbage',
  address:        'An der Brauerei, 10249 Berlin',
  longitude:      52.524488,
  latitude:       13.4430341,
  image:          'https://polaris-web-pub.s3.amazonaws.com/media/first-act/products/full/e8268650-6afe-11e7-beb9-0fe1c11520b2.png',
  user_id:        User.first.id
}
]
guitar_attributes.each do |attribute|
  guitar = Guitar.new(attribute)
  guitar.remote_image_url = attribute[:image]
  guitar.save
end




