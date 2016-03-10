Artist.create!([
  {email: "sam@smith.com", password_digest: "$2a$10$b5G3v8wNffr.ZgvitxN.he65uq1sJo5eFciokNPFzfI1ErmL3ChTW", name: "Sam Smith", image_url: "http://images.latinpost.com/data/images/full/34897/sam-smith-hot-new-music-2015.jpeg", description: nil},
  {email: "madonna@gmail.com", password_digest: "$2a$10$/xmZr/45wj2TpgG3Cplpxu2gMRdpKUIeOjyjTMtTCyHGqLgx3M4aO", name: "Madonna", image_url: "http://www.madonnarama.com/artworks/posts/20140516-pictures-madonna-uomo-vogue-tom-munro-spread-hq-06.jpg", description: nil},
  {email: "rihanna@gmail.com", password_digest: "$2a$10$NreK0cVrHaeEJusEGv4egeMyYZY1fCeru.3HPMS3Per28MIiXaXVe", name: "rihanna", image_url: "http://a2.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTE1ODA0OTcxMzkwNjk5MDIx.jpg", description: nil},
  {email: "adele@gmail.com", password_digest: "$2a$10$Eb5h3m5FkN30VbTpR.qJPe/y5jRS4Q.80CM5q.NmjtPrsRfYKXTPO", name: "Adele", image_url: "https://lh3.googleusercontent.com/-btyoRiX1qEA/VijxPETIslI/AAAAAAAAAts/TiZBFDP4mjc/w2048-h2048/Adele_25_Cover_4000_141015.jpg", description: nil},
  {email: "rusted@root.com", password_digest: "$2a$10$qGU0dXdb0x9RN.U8VBvcMukuh8lQvoTZhHQm3Hbr0CuJRON0d.TUa", name: "Rusted Root", image_url: "https://dl.dropboxusercontent.com/u/1515/fanluv/artist%20images/rustedroot.jpg", description: nil},
  {email: "lady@gaga.com", password_digest: "$2a$10$82neLUmD1gIsax9hoHEmHOqBbrErSoqpRxQdEy1je.yF1B0i6nM9S", name: "Lady Gaga", image_url: "https://dl.dropboxusercontent.com/u/1515/fanluv/artist%20images/gaga.jpg", description: nil},
  {email: "whitney@houston.com", password_digest: "$2a$10$l9MJjO8v8rRkxAX4ZP62UODWP8aa6HH8WxppgSCho7Hdtl4CVGGBW", name: "Whitney Houston", image_url: "https://dl.dropboxusercontent.com/u/1515/fanluv/artist%20images/whitney.jpg", description: nil},
  {email: "prince@prince.com", password_digest: "$2a$10$SQaGklDmhujBeYGQO0ALLOQkB4IBQEei.McpO7H.QsT6YzQraaImu", name: "prince", image_url: "https://dl.dropboxusercontent.com/u/1515/fanluv/artist%20images/prince.jpg", description: nil}
])
Fan.create!([
  {email: "dknutson@gmail.com", password_digest: "$2a$10$YG1EQEuXrnTg6Fn91vQcZeDH7xUY1ond0QGD8m2X0PrUQkA.Tvhmm", name: "Dan", image_url: nil},
  {email: "rusted@root.com", password_digest: "$2a$10$XoMolwf7ZugdUY0kCUIkt.bjG11Qdy1Hmea5P5N0uu4B379fOmECu", name: "Rusted Root", image_url: nil},
  {email: "rihanna@gmail.com", password_digest: "$2a$10$rbC6HQvAtXvsQdAkU0D9cOC.BVYE8hPI45A1ZzcleQX2BnS08Rana", name: "Rihanna", image_url: nil},
  {email: "adele@gmail.com", password_digest: "$2a$10$FJpJZdvD.W8uX07EyOH1ROisEWUVTOzAhbtvFnzLYuPJzQ6Wh7.Ya", name: "Adele", image_url: "https://lh3.googleusercontent.com/-btyoRiX1qEA/VijxPETIslI/AAAAAAAAAts/TiZBFDP4mjc/w2048-h2048/Adele_25_Cover_4000_141015.jpg"}
])
Luv.create!([
  {artist_id: 1, fan_id: 1},
  {artist_id: 3, fan_id: 1}
])
