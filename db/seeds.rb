User.create(email: 'blah@gmail.com', password: 'string')
guitar_attributes = [
  {
    address:      '7 Boundary St, London E2 7JE',
    latitude:     '51.5245352',
    longitude:    '-0.0791151',
    description:  'This ultra-affordable dreadnought acoustic guitar features a whitewood body, which brings out lots of mid-range punch. The nato neck adds sustain without losing any strength in tone.',
    category:     'Acoustic',
    brand:        'Rogue RA-090 Dreadnought',
    image:        'https://images.pexels.com/photos/164897/pexels-photo-164897.jpeg?w=940&h=650&dpr=2&auto=compress&cs=tinysrgb',
    user_id:      User.first.id
  },
  {
    address:      '22763 Hamburg',
    latitude:     '53.5448881',
    longitude:    '9.922022',
    description:  'The best-in-class Mitchell MD400 offers a carved, double cutaway mahogany body and a one-piece mahogany set neck for superior tone and sustain. Both the neck and body are carefully bound in a stunning multi-ply binding/purfling to produce an amazing eye-catching aesthetic.',
    category:     'Electric',
    brand:        'Mitchell MD400 Modern Rock Double-Cutaway',
    image:        'https://ssli.ebayimg.com/images/g/DVAAAOSwTm9aFdas/s-l1600.jpg',
    user_id:      User.first.id
  },
  {
    address:      'Jansastraße 9, 12045 Berlin',
    latitude:     '52.4995597',
    longitude:    '13.3563751',
    description:  'Fucking garbage.',
    category:     'Electric',
    brand:        'Fretlight FG-621 Wireless Guitar',
    image:        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEhIREhIVFRUVFxYaFRUVExYYFRUYFxcWGhcXFRYYHSghGBomGxcZITIhJikrLi4uGB8zODMvNygtLisBCgoKDg0OGBAQGC0lHR0tLS0tLS0tNy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAwECBAUHBgj/xABCEAACAQIEAgUIBwYGAwEAAAABAgADEQQSITEiQQUTUWFxBgcjMoGRobEUM0JSYsHhQ3KCktHwJDRTk6KyFXPxFv/EABcBAQEBAQAAAAAAAAAAAAAAAAABAgP/xAAcEQEBAAIDAQEAAAAAAAAAAAAAAQIREiExUUH/2gAMAwEAAhEDEQA/AO4xEQEREBERAREQEREBERA1XlQ9sLV7wo1F/WZV/OfNWDxxZ8MclPXF4n9kn3MMb7b67z6S8ramXCubA3eitj+KtTW/iL3HeJ829E1brgWNOkOsq4kjKWJXLToAkgPdSSvPlY85nJvFDhseeqwx6ulrQxp+rW3AlUgAcr218Z2rzF4nrOj2OVV9K2iiw2HKch6OoGpSwtqNHXDY5wDUKgBUqiwvU5kjQ67kbXHYvMktsB9WqZnLAKSQQ2x1JtpymZZtrLDOTt0KIidHIiIgIiICIiAiIgIiICIiAiIgIiICIiAiJjtVJJA2G57+wQLcdj6dAKajZQzZQbEi9idbDTY787DnJ6NVXAZWDKdmUggjuI3mB0j0bSxNM06qZhY2NyGFwQSpGxsTM7D08qqt72AF7AXsN7KAB7ABAkiIgaTyxqZcMTYG9bCjW+mbE0Vvodxe47wJ81dCV1IwnokHpcTsamlsPhzcXfc7T6P8u6+TCXsDevhF4hcDNiqIuO8XuDyIE+dOh8Tw4P0dMXfFbJtahR1Gu5taZyaxMFiE6vCehTWhjra1dLJXuBx8/wD5Oy+YuordHkqgQGo+gLHmR9onsnHcDixkwnoaYvRxv2TplSve3Fzsb+M7D5iq4fAMQqr6RtFvYcTdpPZf2ySFvTpERE2yREQEREBERAREQEREBERAREQEREBERAhxdXIhPPl4nQfEyGmmUBezfx5yuO1NNe1/gAf0lSbkmWIv5HwkqHQeEiSSoNLRVXRESDzfnBqMuDuv+vhb8IPD9IpZtwbaX15T586Lr1MmCuAL/Ss3olFrU1tsumx8Z9BecMkYJyDaz0idbaCoum84D0ctfLhLsdExOb0ym91cL9ri2HhOeXrpj4yaTANQRaqMgpYy1U4fJnsK2WyFbpfsPZOreZN74NtUN2uciBbElrggAXOnLSciwYxIXCXLX6rFZvSjn12XXNrynWPMb1owdQVSxbPrmbMbln53PLL7pMfWrlOGuPf10mIidXEiIgIiICIiAiIgIiICIiAiIgIiICIiBh4z16J/ER7x+kqI6SHCG+6yn42/OXEaywBJUaRCXCETAysiDS4xpXkfObXH0Kquwtmva+xG3vv7Jwno9Ka/QrVL2p4ki9M8Wte9+LbfxtO2+dA/4Wrpf0b6a62F+XcDOJ4IL/gwaIW9LE6k1bJribk6nx5nXTlOeXrc8SP1VY4VwyJmp4shKdFlpi5rEhFucoHZrOr+Y6srYWoFKkKVW6oVJsahu19zckX7pypUpo2FRUVgExaqytUy2DYgZhmN7Na+vbOo+YhlOFq5aeTVbjMT9ut2+/2yT1eVmNk/XT4iJ0cyQtW4sg5C59u0mmtxNXIMRV+6tx/Cl/nAzqNdXF1YMNrqQRf2SSee6IFSk6q4QL9UhQniRUujOD6rCzL35vCegWBWIiAiIgIiICIiAiIgIiICIiBHXp5lZe0ETGovmVT3a+I0PymbMGmLNUXvzDwbf4ywSSsoJUSounncVQNWuzM+lNyhptTDAgpSZcrH1bXvexuXI5C3obzV4gFa7W2ZEOw1Kl1b4GmPYIHlfOHUyYat6RgOqqjm1jlNiCeLa5te2mgnH6FQ/wCGAxDk/R8VYAPx64vs7LbfhnXPOSKn0d8lLrOGoCLFtDSqWAXdrvkGmvsvOMpjf8v6KmL4TFNbKRaxx2g109X4mcs526Y3ptKVOrSODSpWZXFLEhlfrVYnNiALqVvobb9k6f5jHY4etmqiobrsWNtav3gOwe6cowuPztgmZaZZ6WIbMbk3FTE3Ny19cup750nzI4hlo1KjUslN8uUqj2NjUvYX1Gt7gczeMZ2W9OtxI6VZXF1YMO0EEfCXO9hf57TbBUfKCZp8afUpcyRUqdwDXUfxOoFuYV+yTVsfn0p2c8m/ZL3lvteC89CVveRUkCqftMzXZjuTbe425C3IASyIjqE3UafWU/8Auv5Xm7XczUBc1WkLHQs5N9wqlf8AtUU/wza0uZ74pEkREikREBERAREQEREBERAREQExMWtmRv4T4Hb4/OZchxqZkYDe2niNR8RAji8ojZgD2gH3ys0iomu6QHpqZG/VVvg9D+s2E13SYvVQdtKsDrbQtRvry2MCDEvmA4RoyW9lROftMgGDDZsxvqAATe1xTuBfYanlzPbMSr0aipSpFC60aitSvUa6m9wSxN2tmYanYjslrYGkwqK1FiHqq7+kOrcGujaeG0o2qdHqMuS4tfmRodSLDvv75JicEKqNTNwGFiVNmHeCPCYVbounVWtmoMwrgCsOsYZgt8oFmBW1/s23k1GmOseqKZV6gVWZmNsq3y2W9u3a3jAnqUF4SUDEWGZhmbQc2Ot4fCLckIptsSqkjwPI6n3RhsKtNBTRjYaDMbnfQX/u1pezDle/eB7fGEVYXbs/I27ovyGx9/h75WnUsRfl463MwukKRdkcMysrWUIeEs/CM4I4lF81tNiYGf0YLmrV78i+CEhj/uFx3hVM2lMWAmPRohQlNRwqAPYosLzKma0RESBERAREQEREBERAREQEREBEShNoGvwR9Gnh8iZPIMGvo08L+8mTzSE1eJYdc/YqIo/eJdmFvAofbNmTNFgcRndzkbi9Lny2VlbRAp++KS0wR4wJcSLW7DlOt+87CUpUzZiOTLr/ALf9JTEA6Dsb42bf3RSXu+0unbqnuGm8DJRdBysNz48pWnc2F9xtzPgOcogJA0/rL0p8gDobg/HlzlFzgcI1OmhHO+0sqrz079de+VItZgdufwgEmxJB7dddvnpCDEb25Dny1/vtlKK5q1MdgqPe+t7Kgv7KjypI2310/WX9H/Wt+4tvazX+QijYUdSx9kmllIae+XzDRERAREQEREBERAREQEREBERATHx72Ru08I8TpMiYVY5qgHJNT+8dv774FwW1h2ACLRAmkYfSrcApjeocvgtiXPdwggH7zLMVqeYNxFSQVzKNRcWB79dfZL63HWc6ejUIO0FgHf2W6r3S7sU6Eb7W0ubfOEaardRRR6z3pvxOq/W+s2oC6A7EAczaWo4sw+kVNaue/VNwrp6MWX1RvNm7AMLW9fQkbjI+ljtvIgFvsCL7/wAUqoaj5hUAxNVessUK0jekATcJmQ3uNNfnqcqk56yqwqOwcKEpGnlWmVBDEMVBN73NzpbSSlV0trp3yVCco+Hgfy1gWUFZaapUfPUFgz5QoNr62G3LbslwU8tZcwy9mu/dLb66eyEVN+em/KWdFGoKimqEGYVFGTNlIDIUHF9rLn90s+kgv1YJzWzW12vY67b/ADl1U5bONerYNYWN7XDWtzKFgPEQN6m0uliNfUag8xL5hoiIgIiICIiAiIgIiICIiAiIgWVqgVSx5f2BMWktl13OreJlcSczqnIcTfkJUnnLEBLYvAmkaTC4kE1RnGcVKhZQdcpqOtM239RVEzMy6Ft7ctNtpi9H0V42CjNnqqWy8RCVXA1tr6t5fiyxRlQ5TbQkA2PbY7wNWmIJcCpUCh6tYUVVWD5aKur52JZSeFiLAaEbmSLiKRUHrrA1jSBsfrM5GQab357d8wPJwVKTHra71OurYl6ainw0wjMH1AJuzBnsTu1gL3vt6XSNPKhzNZqzUhwNq+ZuHbQcJ1OnfIpXxFNVdmxCqtIhXOWwQtawPebj2mRY3GPSGSlWoOaRRqtNlIqdWxOZlZXsGCJUIGU3ycpmVOk6SrUZnsKbhHOVtGbKANBr667X3mq8ratSrTqUsNiEp1KT0HrqyElqWfMVzXGUFabnncKV0zXiq9C9zccxy/S3hLUO47d9ddNdJr8NiKgUq2V2poWdl0zkXsB2ctZndYFy2J4gOfz7ZU0jxNLrFK5mUnZ0NiCNQRyvcA2IIOxBBIlmAxBa9OpYVUAz5fUYH1alPnlYqdDcqQQSbAnJZeenPW3Lmb3mFlqAuadsxU2D3CXsbZrXNoRteiqls1L7uqfuHYfwm6+GTtmyE0CuyBahGtM3cjYodHF+YsMw7Sgm9UzNWLoiJFIiICIiAiIgIiICIiAlGNtZWYnSb2QjmxCj27/C8CPDG6lzu5+A2l1pewtZewASMmaiVWUEqYlRqqi5Krqdn41sB2BXA8Hsx/8AaJIXG5AAG/h3mZWLwy1Vsbgg3Vh6ytqMyntsSNdCCQQQSJo8dgq1JcS1y/WoVFnACnq8lxTe2QaAmzm5ubCBq/pNGi9RqWNUK7u/V1WpFUZ2uwTYgEkm19wed5kf+X5LjMMbE68Oup/Ht+k5h5QVMPp1uIyZEo0ynVlmCUjXCKCDqSmxsbZdd7TVdbgnL5cSQcqrZkUjYBbFmT7pv2XHgJ0brtC9KVNP8Xhtuwba6j0v92MrinNcKrYxAgdHYUsilxTdWCMS7EKSBe1rjS9iQeLDGYEFScWfR02T/KvrmNUg6vp9aDb8Ld19n5L1cKK2WjXNSpTy39BlQq1fDrUZXLHQAGxt90+Fuvpu/HYalFg5dCOIWYHY38d9BMjC4drKSRlAAC3vYDa/s05zB6Hw1ZUUtTqlclKy+hsuWmoP7bUEi+wOpm1GLVbCpnQAalkYKo/ftl/5QbWmsCWUHYXY66aHXbXW2nfJKaKSpFyGF+XcdZrizK2dLOGB2sQ3gb2toJNQUkhcuVV0Ub6dx1Px7IVPiaJfIVqMmV81ltxAXGR/w90z+iX4DT/0zlHetgUsefCQL9qmYoYC1tfDcdt785fhnC1lI/aKVOnNbsg93WH2yVG2ErLVMumWiIiAiIgIiICIiAiIgJgY83qUh2Et7rW+ZmfNbifrvBB8SZYJmNzeWwDE0ySstlZQmD0z9WR4/KZwkOLpB1secI+e+l3wnSNTOKi00c0gajOAaIJrsyZcp1tfW9r5N9Jh/wDj8KalVs2S9OnZUF11UPnp9bUuSAgBUtmJqacxO6VPJxCb8gPVKoR8Vv8AGR//AJalpdVPbelS18eCTiu3Cj0dRz0cilwcPxBh1YayVOPNmfj30tbhuDtNh5LJTw5UO1EEJUD1kqXBJqYaoA7McoIHDw6XsN807EfJGj9xN7/UUPd6m3x75Wn5HYfNc0qR206ijpbsIS8nE29VhBZFHYB8pITLUFhaa7yj6YTBYd8Q9rLlABJALOwVQSASBci5sbAE20lRJX6MViWXgY65ltqfxrs/ZrqORG8x0YowSoAHOin9nUsCTkJ2awvkOu9iwBM5FjfOr0lRxJyfRq9HhP1XVgAqCy3WqxUg3F8zDS/dOpeTflJh+lcPcKVYqrVKFQEOobVXXbMhIutRdDbkRYFX4fEMyFwAzZxdRrwHThGwNj4aGZNaqAwIvcVKVjrbidVbU6bORpMGtg2pkklinJwLsO6oAD/OBa3rWtdqYDM9QpTKPTzU2Do2a2V1d85HCp4SAN9RpbNYr1Q3Evkd9vH8pJMLCIiAiIgIiICIiAiIgJr8QPS+KD5mbCYPSIsUbxU+3UfIywWmAZQNFpWV0CUBlQZRWVlsreVCXS2VgVtAlIgVvNL5adCHH4Oth1IDkBqZJsOsQhlBPIEjKT2MZuhK3gfOHRXQbl3auhp9VVFPq6ihiaosWz078SIpVsuzZl1yhjPTUmriphsQjMuJqvcp16O1CjWzsjC+XMQUyMlstS5U2Koy9J8p/JhcX6RMi1hl1db06oQ3VKwGuhuVccSEm1wSreY6Co0qaPhq+f6UitmpVwGqmjmLhaRQD6RSU3KunELtYKWKzN7qzqPWeTfT30hqlCqgp4mjbrEBujqTZa1Bjq1JreKm6nUa+gvPnvG+VeISt9Ioq7phGVqVdgt2RnWnWw+IcHW+dVGgb0asVBJM730djEr0qdambpVRXU/hcAj4GBlHdfE/KSyFTxeAk0lWEREikREBERAREQEREBIsVRzqV93iNpLEDTU37dxuOwyUNJMfhdc6i/3gOfeO+YtOpeajNZIMCRq0vBlReDKy2VEoraIiBWIiAlZSVgVEwOm+g8PjU6vE0hUAN1OodG+9TcWZD3gzYCVElHOMZ5r6hqpUTH1KiobrTxamuAeVmzDbTdTsOye76D6PGFw9KhcEU1tcLlXcmyrrlUXsBc2AEzZj4rDmujIGZFYEZ1tm104bgj22kVdgVDk1/vCy/u337wTqD2eMzpbSphQFGgAAA7htLploiIgIiICIiAiIgIiICIiAmJicEG1XQ/A+My4gad6TLuPaNRCPNxIqmGRt1HjsfeJraaYIMvBkpwI5Mw9t/nLTgm+//wAf1jaaWysfQ3++P5f1lGw1QDRlJ5Agj462l2aXSs8t5J+Vg6Rd0prkyrmu5PGubKGp8Izrsbg6B0vYmw9SMK/3x/L+sbholRKjCnm59glfog5s3vH9I5GlpNpYcQL2Gp7BJhg07L+JMmRAugAA7haTa6QJRJ9b+UfnMm0RMqREQEREBERAREQEREBERAREQEREBERAREQEo+xiIHk/I/62p+5+az1sRAREQEREBERAREQEREBERAREQP/Z',
    user_id:      User.first.id
  },
  {
    address:      '22763 Hamburg',
    latitude:     '52.4862229',
    longitude:    '13.4316318',
    description:  'The best-in-class Mitchell MD400 offers a carved, double cutaway mahogany body and a one-piece mahogany set neck for superior tone and sustain. Both the neck and body are carefully bound in a stunning multi-ply binding/purfling to produce an amazing eye-catching aesthetic.',
    category:     'Acoustic',
    brand:        'Savannah SO-SGO-09E-BK 000',
    image:        'https://musicalinstrumentmagazine.com/wp-content/uploads/2017/06/Mitchell-Guitars-MD400-Series-800x445.jpg',
    user_id:      User.first.id
  },
  {
    address:      'Schloßpl. 1, 10178 Berlin',
    latitude:     '52.5058516',
    longitude:    '13.1445553',
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
  longitude:      '52.5315784',
  latitude:       '13.4006038',
  image:          'https://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/USA/LP-Standard-HP-2018-2/H2LPS18O8CH1_MAIN_HERO_01.jpg',
  user_id:        User.first.id
},
{
  brand:          'Gibson SG',
  category:       'Electric',
  description:    'The SG Faded brings legendary Gibson SG performance alive with a spirited, worn finish. Simple style comes from the faded gloss-nitro finish and classic dot inlays. Slim Taper neck, mahogany body, solid rosewood fingerboard and classic PAF humbucking pickups deliver the signature sound and feel of the great SG of the past six decades.',
  address:        'Linienstrasse 214, 10119 Berlin',
  longitude:      '52.528590',
  latitude:       '13.405644',
  image:          'http://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/Custom/SG-Standard-Bohemian/SGSR4PSL11866_MAIN_HERO_01.jpg',
  user_id:        User.first.id
},
{
  brand:          'Gibson',
  category:       'Electric',
  description:    'The Les Paul Classic guitar conveys major elements of the iconic Les Paul look with the legendary tonewood combination of a mahogany-and-maple non-weight relief body, bound body top and fingerboard with trapezoid fingerboard inlays. Fast and comfortable playability is increased with a Slim Taper neck. Additional appointments include a pair of P-90 pickups, ABR bridge, nickel-plated hardware, and hand-wired electronics including Orange Drop capacitors.',
  address:        'Hegelpl. 1, 10117 Berlin',
  longitude:      '52.5195086',
  latitude:       '13.3919768',
  image:          'http://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/Custom/Modern-Les-Paul-Standard-Trans-Metal/MLPSPSL11282_MAIN_HERO_01.jpg',
  user_id:        User.first.id
},
{
  brand:          'Gibson Hummingbird',
  category:       'Aucustic',
  description:    'From a company that has brought the guitar world so many great originals, the Hummingbird stands out strong and proud. Introduced in 1960 as Gibson’s first square-shouldered dreadnought, the Hummingbird arrived at the dawn of a new era in music, and was rapidly embraced by several prime movers on the scene. In the hands of everyone from Keith Richards to Gram Parsons, it quickly proved itself equally adept at folk, country and rock, and excelled at many of the crossovers genres in between that helped to set the scene for the ’60s.',
  address:        'Glinkastraße 15, 10117 Berlin',
  longitude:      '52.5144378',
  latitude:       '13.3840647',
  image:          'https://uploads.disquscdn.com/images/c580b6cb1db071de2df62f02f0a998437d33841c5e6fdf1a96e63dce06f60d6d.jpg',
  user_id:      User.first.id
},
{
  brand:          'Gibson Flying V',
  category:       'Electric',
  description:    'The Flying V Custom adds the classic, refined and upscale Custom looks to one of Gibsons most legendary designs. The pointed, unorthodox lines of the V have always been magnetizing to the more daring guitar players among us - a visual statement with uncompromised Gibson tone. This rare edition adds a new layer of boldness to an already outspoken guitar.',
  address:        'Neue Grünstraße 10',
  longitude:      '52.5091396',
  latitude:       '13.4029376',
  image:          'http://images.gibson.com.s3.amazonaws.com/Products/Electric-Guitars/2017/Custom/Flying-V-Custom/CSFVCPSL11050_MAIN_HERO_01.jpg',
  user_id:      User.first.id
},
{
  brand:          'Gibson',
  category:       'Electric',
  description:    'The Les Paul Classic guitar conveys major elements of the iconic Les Paul look with the legendary tonewood combination of a mahogany-and-maple non-weight relief body, bound body top and fingerboard with trapezoid fingerboard inlays. Fast and comfortable playability is increased with a Slim Taper neck. Additional appointments include a pair of P-90 pickups, ABR bridge, nickel-plated hardware, and hand-wired electronics including Orange Drop capacitors.',
  address:        'Feilnerstraße 1-4, 10969 Berlin',
  longitude:      '52.5057589',
  latitude:       '13.3967373',
  image:          'https://s3.amazonaws.com/images.gibson.com/Products/Electric-Guitars/2018/USA/LP-Standard-HP-2018-2/H2LPS18O8CH1_MAIN_HERO_01.jpg',
  user_id:        User.first.id

},
{
  brand:          'Fender',
  category:       'Electric',
  description:    'In der American Elite Telecaster warten ein gutes Dutzend heißer Innovationen darauf, dass du sie zum Leben erweckst. Optisch ein Remake der Tele®, bestückt mit allem, was du für eine moderne, überzeugende Performance brauchst. Sie spielt sich fast wie von selbst, ist ein echtes Arbeitstier und erfüllt alle musikalischen Ansprüche, ob im Studio oder auf der Bühne.',
  address:        'Körtestraße 28, 10967 Berlin',
  longitude:      '52.4901375',
  latitude:       '13.4078275',
  image:          "http://www.fmicassets.com/Damroot/Zoom/10001/0114212700_gtr_frtbdydtl_001_nr.png",
  user_id:        User.first.id
},
{
  brand:          'Martin',
  category:       'Aucustic',
  description:    'Designed for those who have fallen in love with the look of Martin’s 15 and 17 Series solid mahogany guitars, this full-sized Dreadnought version of Martin’s recent 0XMAE features mahogany high-pressure laminate (HPL) top, back and sides, a herringbone applied rosette, a high performance neck, and a Forest Stewardship Council® (FSC®)-certified Richlite® fingerboard and bridge. This warm, projective X Series guitar is stage and studio ready with Fishman®Sonitone electronics and built for strength to endure endless miles on the road.',
  address:        'Hasenheide 69, 10967 Berlin',
  longitude:      '52.4883494',
  latitude:       '13.4093948',
  image:          'https://www.martinguitar.com/media/8681/dx2mae_f_new.jpg',
  user_id:        User.first.id
},
{
  brand:          'Dean',
  category:       'Aucustic',
  description:    'The Dean CE Acoustic-Electric Resonator Guitar features a modern body design and electronics. The resonator guitar has a mahogany top, back and sides, a mahogany neck, and a 21 fret black walnut fingerboard. The cutaway body lets you reach the upper frets. Grover tuners make a cinch to get in tune and stay there. A Dean "lipstick" pickup has controls for volume and tone so you can plug-in and be heard in any setting.',
  address:        'Berolinastraße 10, 10178 Berlin',
  longitude:      '52.5220856',
  latitude:       '13.4202168',
  image:          'http://www.deanguitars.com/images/productimages/rcenm/rcenm.png',
  user_id:        User.first.id
},
{
  brand:          'First Act',
  category:       'Electric',
  description:    'Ficking garbage',
  address:        'An der Brauerei, 10249 Berlin',
  longitude:      '52.524488',
  latitude:       '13.4430341',
  image:          'https://polaris-web-pub.s3.amazonaws.com/media/first-act/products/full/e8268650-6afe-11e7-beb9-0fe1c11520b2.png',
  user_id:        User.first.id
}
]
Guitar.create!(guitar_attributes)
