# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# TEST POUR FIX LE SITE

puts "Cleaning database..."
User.destroy_all

puts "Creating 5 users...."
puts "Creating user 1"
user1 = User.new(email: 'academint@gmail.com', password: '123456', username: 'academint')
avatar1 = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/c_crop,w_350/v1662625264/Logo_square_hf56bj.jpg")
user1.photo.attach(io: avatar1, filename: 'John Webber', content_type: "image/jpg")
user1.save!

puts "Creating user 2"
user2 = User.new(email: 'b.poncet@gmail.com', password: '123456', username: 'Arnaud')
avatar2 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NRPQCG1F-119a57eec9f6-512")
user2.photo.attach(io: avatar2, filename: 'Arnaud Lebogoss', content_type: "image/jpg")
user2.save!

puts "Creating user 3"
user3 = User.new(email: 's.villebrun@gmail.com', password: '123456', username: 'S.VILLEBRUN')
avatar3 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NK7993ST-f2719ded36c6-512")
user3.photo.attach(io: avatar3, filename: 'Sebastien Villebrun', content_type: "image/jpg")
user3.save!

puts "Creating user 4"
user4 = User.new(email: 's.gotainer@gmail.com', password: '123456', username: 'S.GOTAINER')
avatar4 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NA1WF0TX-dff6dafc9e44-512")
user4.photo.attach(io: avatar4, filename: 'Sasha Gotainer', content_type: "image/jpg")
user4.save!

puts "Creating user 5"
user5 = User.new(email: 'f.shah@gmail.com', password: '123456', username: 'F.SHAH')
avatar5 = URI.open("https://ca.slack-edge.com/T02NE0241-U03P6G5NK9P-bdc0ee480f0e-512")
user5.photo.attach(io: avatar5, filename: 'Fariha Shah', content_type: "image/jpg")
user5.save!

puts "All users created"

puts "Creating courses..."
puts "Creating course 1"
course1 = Course.new(name: 'Apprendre ?? coder en Ruby (1??re partie)',
                     description: "Tout ce qu'il faut savoir pour pouvoir cr??er vos propres applications web en Ruby", level: 'interm??diaire',
                     user_id: user1.id)

# cover1 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/feb1bb9c-d4bb-45be-b997-22069b5bb889/1.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153408Z&X-Amz-Expires=86400&X-Amz-Signature=fc77682a444b731d2d4ef761944a4c335881fd2ec3771a5a92d2d2c439cde85b&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%221.png%22&x-id=GetObject")
cover1 = URI.open("https://stackify.com/wp-content/uploads/2018/09/Learn-Ruby-Tutorial.jpg")

course1.photo.attach(io: cover1, filename: "Cours 1", content_type: "image/jpg")
course1.save!

puts "Creating course 2"
course2 = Course.new(name: 'Comprendre la blockchain?',
                     description: "Ce cours a pour but de faire comprendre de mani??re simple ce qu'est la blockchain
                     et ses usages.", level: 'd??butant',
                     user_id: user1.id)

# cover2 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d98d18ca-6e39-4871-ba46-5ef979ddb349/2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153450Z&X-Amz-Expires=86400&X-Amz-Signature=1cdc01488405df0ce912f6b759d323635eb027d18fd45b93bf333039777ed583&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%222.png%22&x-id=GetObject")
cover2 = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/v1662363783/production/f39cirw4i8q2sa2dwfnaitum12gu.png")
course2.photo.attach(io: cover2, filename: "Cours 2", content_type: "image/jpg")
course2.save!

puts "Creating course 3"
course3 = Course.new(name: 'Introduction ?? Ethereum',
                     description: "Comprendre ce qu'est Ethereum, comment cette blockchain fonctionne et les diff??rentes
                     technologies et fonctionnalit??s qui y sont attach??es.", level: 'd??butant',
                     user_id: user1.id)

# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover3 = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/v1662363783/production/zi583w0qg0zt5g9qyed3jn4dwib4.png")

course3.photo.attach(io: cover3, filename: "Cours 3", content_type: "image/jpg")
course3.save!

puts "Creating course 4"
course4 = Course.new(name: 'Trading de cryptomonnaies',
                     description: "Comprendre plus en d??tail le fonctionnement des cryptomonnaies et leurs ??changes.", level: 'interm??diaire',
                     user_id: user1.id)
cover4 = URI.open("https://images.unsplash.com/photo-1640826514546-7d2eab70a4e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80")
# cover4 = URI.open("https://images.unsplash.com/photo-1621761191319-c6fb62004040?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
course4.photo.attach(io: cover4, filename: "Cours 4", content_type: "image/jpg")
course4.save!

puts "Creating course 5"
course5 = Course.new(name: 'Qu???est-ce qu???un stablecoin?',
                     description: "Le stablecoin, une nouvelle alternative r??gul??e aux cryptomonnaies", level: 'interm??diaire',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover5 = URI.open("https://images.unsplash.com/photo-1621761191319-c6fb62004040?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
course5.photo.attach(io: cover5, filename: "Cours 5", content_type: "image/jpg")
course5.save!

puts "Creating course 6"
course6 = Course.new(name: "Qu'est-ce que Metamask?",
                     description: "Une alternative ?? moindre c??ut au ledger", level: 'interm??diaire',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover6 = URI.open("https://i0.wp.com/financededemain.com/wp-content/uploads/2022/05/metamask-image-cryptoast.webp?resize=1140%2C600&ssl=1")
course6.photo.attach(io: cover6, filename: "Cours 6", content_type: "image/jpg")
course6.save!

puts "Creating course 7"
course7 = Course.new(name: "Cryptokitties",
                     description: "Le premier jeu articul?? autour des NFT", level: 'd??butant',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover7 = URI.open("https://cdn.consensys.net/uploads/1jbaJS-72rAbw5jKR4BmGVA-1920x998.png")
course7.photo.attach(io: cover7, filename: "Cours 7", content_type: "image/jpg")
course7.save!

puts "Creating course 8"
course8 = Course.new(name: "Les SBT, une nouvelle r??volution?",
                     description: "D??couvrez les SoulBound Tokens et leurs futurs usages.", level: 'interm??diaire',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover8 = URI.open("https://images.unsplash.com/photo-1639152201720-5e536d254d81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80")
course8.photo.attach(io: cover8, filename: "Cours 8", content_type: "image/jpg")
course8.save!

puts "Creating course 9"
course9 = Course.new(name: "Apprendre ?? coder vos NFT en solidity",
                     description: "Les bases pour coder vos premier smart contracts en Solidity", level: 'expert',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover9 = URI.open("https://images.unsplash.com/photo-1580927752452-89d86da3fa0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
course9.photo.attach(io: cover9, filename: "Cours 9", content_type: "image/jpg")
course9.save!

puts "Creating course 10"
course10 = Course.new(name: "Que sont les gas-fees?",
                     description: "Un point d??taill?? sur ce que sont les fameux gas-fees et comment les r??duire", level: 'expert',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover10 = URI.open("https://images.unsplash.com/photo-1616710556977-cc70311a68a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
course10.photo.attach(io: cover10, filename: "Cours 10", content_type: "image/jpg")
course10.save!


puts "All courses created"

puts "Creating chapters..."
puts "Creating course 1 chapter 1"
course1_chapter1 = Chapter.create(name: 'Les bases de la programmation', description: 'Notions
                                  ??l??mentaires pour comprendre la programmation', course_id: course1.id)
course1_chapter1.save!

puts "Creating course 1 chapter 2"
course1_chapter2 = Chapter.create(name: 'Les diff??rents types de donn??es',
                                  description: 'Apprendre ?? manipuler les diff??rents types de donn??es existants en ruby', course_id: course1.id)
course1_chapter2.save!

puts "Creating course 1 chapter 3"
course1_chapter3 = Chapter.create(name: 'Programmation orient??e objet',
                                  description: "Les bases de l'it??ration et de des blocs de code", course_id: course1.id)
course1_chapter3.save!

puts "Creating course 1 chapter 4"
course1_chapter4 = Chapter.create(name: 'Ruby on Rails', description:
                                  "Comprendre et apprendre ?? utliser le framework Ruby on Rails", course_id: course1.id)
course1_chapter4.save!

puts "Creating course 2 chapter 1"
course2_chapter1 = Chapter.create(name: 'Explication de la blockchain', description: "Comprendre ce qu'est
                                  concr??tement une blockchain", course_id: course2.id)
course2_chapter1.save!

puts "Creating course 2 chapter 2"
course2_chapter2 = Chapter.create(name: 'Pourquoi la blockchain a t-elle ??t?? cr????e?', description:
                                  'Cr??ation de la technologie blockchain', course_id: course2.id)
course2_chapter2.save!

puts "Creating course 2 chapter 3"
course2_chapter3 = Chapter.create(name: 'Fonctionnement du pair ?? pair', description:
                                  "Comprendre ce qu'est le pair-a-pair et son usage", course_id: course2.id)
course2_chapter3.save!

puts "Creating course 2 chapter 4"
course2_chapter4 = Chapter.create(name: 'Les applications de la blockchain', description:
                                  'Comprendre quand et comment la blockchain est utilis??e', course_id: course2.id)
course2_chapter4.save!

puts "Creating course 3 chapter 1"
course3_chapter1 = Chapter.create(name: 'Introduction ?? la technologie Blockchain & Ethereum', description:
                                  "Comprendre ce qu'est Ethereum", course_id: course3.id)
course3_chapter1.save!

puts "Creating course 3 chapter 2"
course3_chapter2 = Chapter.create(name: 'Explication de l???algorithme Proof of Work', description:
                                  "Comprendre ce qu'est Proof of Work", course_id: course3.id)
course3_chapter2.save!

puts "Creating course 3 chapter 3"
course3_chapter3 = Chapter.create(name: 'Anatomie d???une transaction Ethereum', description:
                                  'Comment fonctionnent les transactions sur Ethereum', course_id: course3.id)
course3_chapter3.save!

puts "Creating course 3 chapter 4"
course3_chapter4 = Chapter.create(name: 'Les diff??rents r??seaux d???Ethereum', description:
                                  'Aller plus loin sur Ethereum', course_id: course3.id)
course3_chapter4.save!

puts "All chapters created"

puts "Creating lessons..."
puts "Creating Course 1 Chapter 1 Lesson 1"

course_1_chapter1_lesson1 = Lesson.new(title: "Les ??l??ments de base de la programmation",
                                         chapter_id: course1_chapter1.id, quizz_answers: "3,1,3,1,1,1,2,1,4,1", media: "texte", content: "Les NFT sont des medias
                                         relativement nouveaux d???actifs num??riques con??us pour repr??senter la propri??t??
                                         de quelque chose d???unique et de rare. Il peut s???agir d???actifs physiques
                                         tokenis??s, de ressources digitales rares, d???actions ou de pratiquement
                                         n???importe quoi d???autre.

  Comme les NFT sont uniques, il n???y en a pas deux qui se ressemblent. Un NFT ne peut donc pas ??tre remplac?? par un
  autre token identique. C???est une caract??ristique connue sous le nom de ????non-fongibilit????. Elle est mise en ??uvre
  par des smart contracts qui emp??chent toute duplication, tandis que les blockchains
  publiques permettent de prouver la raret??.

  Les NFT peuvent se pr??senter sous diff??rentes formes, selon la norme sur laquelle ils sont cr????s, par exemple:
  les ERC721 et les ERC1155 sont des NFT d???Ethereum, et TRC721 pour TRON. Chacune de ces normes a ses avantages et ses
  limites, qui peuvent influer sur les medias de NFT cr????s. De la m??me mani??re qu???une personne qui cuisine est limit??e
  par les ingr??dients dont elle dispose.La grande majorit?? des NFT est actuellement bas??e sur la norme ERC721.")
  course_1_chapter1_lesson1.save!

puts "Creating Course 1 Chapter 1 Lesson 2"
course1_chapter1_lesson2 = Lesson.new(title: "Pratique: executer son code", quizz_answers: "3,1,3,1,1,1,2,1,4,1", media: "podcast",
                                         chapter_id: course1_chapter1.id, content: "Comme les principaux actifs
                                         num??riques comme l???ether (ETH) et le bitcoin (BTC), les NFT sont stock??s sous
                                        forme de donn??es sur une blockchain. Ils sont plac??s dans des wallets qui leur
                                        sont compatibles, comme le Ledger Nano X. Mais contrairement ?? la plupart des
                                        actifs num??riques, les NFT poss??dent une propri??t?? appel??e ????non-fongibilit????
                                        qui, dans le cas des actifs num??riques, est essentiellement un terme ??labor??
                                        pour d??signer leur unicit??. Chaque NFT poss??de son propre ensemble d???attributs
                                         (par exemple des m??tadonn??es en cha??ne et hors cha??ne). Cela les rend uniques.
                                        Cette unicit?? signifie qu???un NFT ne peut pas ??tre remplac?? par une autre unit??
                                        identique, tout simplement parce qu???il n???en existe pas d???autre.
                                        Cela diff??re radicalement des dollars am??ricains par exemple qui, eux,
                                        sont fongibles. Un billet de cinq dollars a en effet g??n??ralement la m??me valeur
                                         qu???un autre billet de cinq dollars, peu importe son num??ro de s??rie ou ses
                                          autres caract??ristiques.")
course1_chapter1_lesson2.save!

puts "Creating Course 1 Chapter 2 Lesson 1"
course1_chapter2_lesson1 = Lesson.new(title: "La manipulation des diff??rents types de donn??es",
                                        chapter_id: course1_chapter2.id, media: "texte", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                        content: "Vous l???avez peut-??tre d??j?? constat??, mais certains NFT ont une grande
                                                valeur. Plusieurs d???entre eux d??passent les 100000$US sur le march?? libre.
                                                Par exemple, une parcelle de Decentraland s???est vendue 215000US$ en novembre
                                                2018, unCryptoKittyrare connu sous le nom de Dragon s???est vendu 600ETH
                                                (soit une valeur d???environ 170000$US ?? l?????poque).
                                                Puisque les NFT sont uniques et peuvent diff??rer en termes de raret??,
                                                de d??sirabilit?? et d???utilit??, un march?? s???est d??velopp?? autour des plus
                                                recherch??s d???entre eux. Les collectionneurs et les tradeurs ach??tent et
                                                vendent des NFT, dont la valeur est d??termin??e par la sp??culation, l???offre
                                                et la demande, et bien d???autres facteurs. Comme de nombreux objets
                                                ????collectors??, les NFT valent autant que ce que quelqu???un est pr??t ?? payer
                                                pour les acqu??rir??? ce qui peut ??tre une somme consid??rable.")
course1_chapter2_lesson1.save!

puts "Creating Course 1 Chapter 2 Lesson 2"
course1_chapter2_lesson2 = Lesson.new(title: "Les blocs et les it??rateurs",
                                        chapter_id: course1_chapter2.id, media: "texte", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                        content: "Vous l???avez peut-??tre d??j?? constat??, mais certains NFT ont une grande
                                                valeur. Plusieurs d???entre eux d??passent les 100000$US sur le march?? libre.
                                                Par exemple, une parcelle de Decentraland s???est vendue 215000US$ en novembre
                                                2018, unCryptoKittyrare connu sous le nom de Dragon s???est vendu 600ETH
                                                (soit une valeur d???environ 170000$US ?? l?????poque).
                                                Puisque les NFT sont uniques et peuvent diff??rer en termes de raret??,
                                                de d??sirabilit?? et d???utilit??, un march?? s???est d??velopp?? autour des plus
                                                recherch??s d???entre eux. Les collectionneurs et les tradeurs ach??tent et
                                                vendent des NFT, dont la valeur est d??termin??e par la sp??culation, l???offre
                                                et la demande, et bien d???autres facteurs. Comme de nombreux objets
                                                ????collectors??, les NFT valent autant que ce que quelqu???un est pr??t ?? payer
                                                pour les acqu??rir??? ce qui peut ??tre une somme consid??rable.")
course1_chapter2_lesson2.save!

puts "Creating Course 1 Chapter 3 Lesson 1"
course1_chapter3_lesson1 = Lesson.new(title: "Classes et instances de classe", media: "texte", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                         chapter_id: course1_chapter3.id, content: "Comme nous l???avons ??voqu?? plus
                                         haut, les NFT sont stock??s dans des wallets d???actifs num??riques compatibles.
                                         Pour les NFT sur Ethereum, MyEtherWallet est l???un des choix les plus
                                         populaires, car il peut ??tre utilis?? pour g??rer facilement tout NFT bas?? sur
                                         Ethereum, et pour acc??der aux NFT stock??s sur des wallets physiques.
                                         Tout comme l???ether classique (ETH) et lestokens ERC20, les NFT peuvent ??tre
                                         transf??r??s d???une adresse ?? une autre. Mais il est important de comprendre que
                                         les frais de transaction sont toujours pay??s en ether, car les tokens NFT sont
                                         g??n??ralement indivisibles par nature et ne
                                         peuvent pas ??tre utilis??s comme gaz.")
course1_chapter3_lesson1.save!

puts "Creating Course 1 Chapter 3 Lesson 2"
course1_chapter3_lesson2 = Lesson.new(title: "Inh??ritance et 'Self'", media: "texte", quizz_answers: "3,2,3,1,1,1,2,1,4,1",
                                         chapter_id: course1_chapter3.id, content: "MyEtherWallet dispose d???un guide
                                         complet sur l???utilisation des NFT via son gestionnaire de NFT")
course1_chapter3_lesson2.save!

puts "Creating Course 1 Chapter 4 Lesson 1"
course1_chapter4_lesson1 = Lesson.new(title: "Mod??le-Vue-Contr??leur", media: "texte enrichi + video", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                         chapter_id: course1_chapter4.id, content: "Apprendre_Ruby_on_Rails_15_30___Vues_Helpers_gz1i9x")

course1_chapter4_lesson1.enriched_content.body = '<div class="trix-content"><div>Nous allons maintenant rentrer dans le vif du sujet en cr??ant notre premi??re page, ce qui nous permettra de d??couvrir rapidement le fonctionnement du framework. <br>Le but est d\'avoir un aper??u rapide de la <strong>structure MVC</strong>.<strong><br><br></strong></div></div>'
course1_chapter4_lesson1.save!

puts "Creating Course 1 Chapter 4 Lesson 2"
course1_chapter4_lesson2 = Lesson.new(title: "Quizz", media: "quizz", quizz_answers: "2,2,2,2", chapter_id: course1_chapter4.id,
                                      content: "Vous allez maintenant pouvoir tester vos connaissances sur le langage de
                                       programmation Ruby ?? travers un cours quizz. Pour le r??ussir vous devrez valider
                                       90% de bonnes r??ponses, mais si vous ??chouez ne vous d??couragez pas! R??visez
                                       tranquillement vos cours et revenez plus tard le refaire. A la r??ussite de
                                       celui-ci vous obtiendrez votre NFT, preuve de vos comp??tences.")
course1_chapter4_lesson2.save!

puts "Creating course 1 chapter 4 lesson 2 Question 1"
course1_chapter4_lesson2_question1 = Question.new(content: "Ruby est un langage orient?? _____", lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question1.save!

puts "Creating course 1 chapter 4 lesson 2 Question 1 Answers"
course1_chapter4_lesson2_question1_answers = Answer.new(content: "Programmation,Objet,Web", question_id: course1_chapter4_lesson2_question1.id)
course1_chapter4_lesson2_question1_answers.save!

puts "Creating course 1 chapter 4 lesson 2 Question 2"
course1_chapter4_lesson2_question2 = Question.new(content: "Que va me retourner [1, 51, 22, 33][1] ?",
                                                  lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question2.save!

puts "Creating course 1 chapter 4 lesson 2 Question 2 Answers"
course1_chapter4_lesson2_question2_answers = Answer.new(content: "1,51,22,33", question_id: course1_chapter4_lesson2_question2.id)
course1_chapter4_lesson2_question2_answers.save!

puts "Creating course 1 chapter 4 lesson 2 Question 3"
course1_chapter4_lesson2_question3 = Question.new(content: "Le keyword 'if' est un:",
                                                  lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question3.save!

puts "Creating course 1 chapter 4 lesson 2 Question 3 Answers"
course1_chapter4_lesson2_question3_answers = Answer.new(content: "It??rateur,Conditionnel", question_id: course1_chapter4_lesson2_question3.id)
course1_chapter4_lesson2_question3_answers.save!

puts "Creating course 1 chapter 4 lesson 2 Question 4"
course1_chapter4_lesson2_question4 = Question.new(content: "Quel est le meilleur moyen d'obtenir un petit d??jeuner?",
                                                  lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question4.save!

puts "Creating course 1 chapter 4 lesson 2 Question 4 Answers"
course1_chapter4_lesson2_question4_answers = Answer.new(content: "Aller ?? la boulangerie,Trafiquer le code de ses voisins pour qu'ils fassent une erreur 500", question_id: course1_chapter4_lesson2_question4.id)
course1_chapter4_lesson2_question4_answers.save!

puts "Creating Course 2 Chapter 1 Lesson 1"
course2_chapter1_lesson1 = Lesson.new(title: "D??finition", media: "texte",
                                        chapter_id: course2_chapter1.id, content: "La plupart du temps, les gens
                                        parlent de blockchains d??centralis??es ou publiques, ?? l???instar de Bitcoin.
                                        Il convient toutefois de mentionner que cette technologie peut ??galement ??tre
                                        utilis??e pour d??velopper des blockchains centralis??es, qui pr??sentent des
                                        avantages pour les entreprises par rapport aux blockchains publiques.&&

                                        Une blockchain est un registre distribu??, similaire ?? une base de donn??es.
                                        Toutefois, au lieu d?????tre contr??l?? par une autorit?? centrale (une soci??t?? comme
                                        Google, une petite entreprise ou un particulier), le registre s?????tend sur
                                        plusieurs ordinateurs, qui peuvent se trouver aux quatre coins du monde,
                                        avec aux commandes quiconque disposant d???une connexion Internet.
                                        Une blockchain est essentiellement un registre par le biais duquel des donn??es
                                        sont ajout??es et mises ?? jour en temps r??el via le consensus des diff??rents
                                        n??uds ex??cutant le logiciel sur le r??seau.&&

                                        En revanche, une fois ajout??es au registre, les donn??es ne peuvent ??tre ni
                                        supprim??es ni modifi??es, contrairement ?? une base de donn??es.
                                        C???est le r??sultat m??me de la conception globale des blockchains.")
course2_chapter1_lesson1.save!
course_2_chapter1_lesson1_1 = Lesson.new(title: "Illustration Blockchain",
chapter_id: course2_chapter1.id, media: "video", content: "COMPRENDRE_LA_BLOCKCHAIN_EN_7_MINUTES_f38q9n")
course_2_chapter1_lesson1_1.save!

puts "Creating Course 2 Chapter 1 Lesson 3"
course2_chapter1_lesson3 = Lesson.new(title: "Pourquoi une cha??ne? ", media: "texte",
                                        chapter_id: course2_chapter1.id, content: "Un bloc est en fait compos?? d???une
                                        liste de donn??es. La ????cha??ne ?? est une pile de blocs de donn??es,
                                        qui grandit en permanence sur une p??riode donn??e. Si une transaction est
                                        int??gr??e profond??ment dans une blockchain (c???est-??-dire au d??but de la cha??ne),
                                        il devient exceptionnellement difficile d???en modifier les donn??es. De ce fait,
                                        les blockchains constituent un moyen unique de stocker des donn??es pr??cieuses.&&

                                        Imaginez une tour num??rique compos??e de blocs, au sommet de laquelle un nouveau
                                        bloc de donn??es est ajout?? toutes les 10 minutes, en partant du bloc ????Genesis??
                                        , ?? la base de la tour. Le principe est le m??me pour le Bitcoin:
                                        les donn??es de chaque bloc sont les transactions financi??res diffus??es par les
                                        utilisateurs du r??seau, ainsi que les preuves cryptographiques
                                        de leur validit??.")
course2_chapter1_lesson3.save!

puts "Creating Course 2 Chapter 2 Lesson 1"
course2_chapter2_lesson1 = Lesson.new(title: "Pourquoi une blockchain?", media: "texte",
                                        chapter_id: course2_chapter2.id, content: "Le recours au consensus compte
                                        parmi les composantes essentielles ?? l???origine de la mat??rialisation des
                                        blockchains. Pour comprendre ce qu???est le consensus, il faut en premier lieu
                                        savoir pourquoi Satoshi Nakamoto, cr??ateur ou cr??atrice anonyme de Bitcoin,
                                        a cr???? une blockchain**. Qui plus est, ce r??cit offre un excellent aper??u du
                                        probl??me important que les blockchains r??solvent.

                                        Dans le monde financier conventionnel, les banques et les chambres de
                                        compensation jouent le r??le d???arbitre ultime de l???h??g??monie financi??re reposant
                                        sur les comptes. Si Alice envoie 100$US ?? Fran??ois, 100$US sont alors d??bit??s
                                        du compte d???Alice et cr??dit??s sur celui de Fran??ois.
                                        En revanche, l???actuel r??glement de la transaction (lorsque la banque compense
                                        la transaction et la consid??re comme valide) peut prendre plusieurs jours.
                                        La compensation est effectu??e par les chambres de compensation et plusieurs
                                        autres institutions financi??res, qui v??rifient l???authenticit?? de la
                                        transaction et le fait qu???Alice dispose bien des fonds n??cessaires qu???elle
                                        souhaite envoyer ?? Fran??ois. Mais les chambres de compensation sont des
                                        entit??s centralis??es, soumises ?? l???influence externe des gouvernements et
                                        d???autres organisations.

                                        Le monde en pleine mutation des cypherpunks (groupes informels de personnes
                                        int??ress??es par la cryptographie) et des monnaies num??riques des ann??es 2000
                                        s???est vu confront?? ?? une probl??matique essentielle: comment ??chapper au joug
                                        de la chambre de compensation centrale ?? l???aide d???une monnaie 100% num??rique?
                                        C???est le ????probl??me de la double d??pense??:
                                        il n???y avait aucun moyen de valider que, si Alice avait envoy?? 100$US
                                        ?? Fran??ois, elle n???aurait pas pu changer d???avis et d??penser ?? nouveau ces
                                        m??mes 100$US. Si Alice remet ?? Fran??ois 100$US en esp??ces, elle ne peut plus
                                        d??penser ces m??mes 100$US. En revanche, le processus est plus complexe dans
                                        le monde num??rique, sans recourir ?? une chambre de compensation centrale.
                                        Et les blockchains sont arriv??es.")
course2_chapter2_lesson1.save!

puts "Creating Course 2 Chapter 3 Lesson 1"
course2_chapter3_lesson1 = Lesson.new(title: "R??seau pair ?? pair", media: "texte",
                                        chapter_id: course2_chapter3.id, content: "La blockchain Bitcoin est un
                                        r??seau de pair ?? pair (P2P): il n???y a aucune autorit?? centrale. Tous les
                                        ????pairs?? du r??seau y sont ??gaux et jouent le r??le de validateurs de l?????tat du
                                        registre. Toutefois, alors que les chambres de compensation centrales
                                        d??terminent l?????tat des registres dans l???univers de la finance conventionnelle,
                                        Satoshi Nakamoto a pris conscience qu???une m??thode innovante qui ne sacrifiait
                                        pas la nature d??centralis??e du r??seau (que l???on appelle consensus) se r??v??lait
                                        n??cessaire ?? la convergence sur l?????tat exact d???un registre de blockchain dans un
                                        r??seau P2P. Sur la blockchain Bitcoin, un nouveau bloc est cr???? et ajout?? ?? la
                                        cha??ne toutes les 10 minutes. Ce sont les n??uds distribu??s du r??seau, et non
                                        une quelconque chambre de compensation, qui d??terminent la validit?? de ces
                                        blocs et les ajoutent ?? la blockchain. Ils s???acquittent de cette t??che via le
                                        Consensus Nakamoto, une version d???un concept connu sous le nom de Preuve de
                                        travail Proof of Work ou de Tol??rance aux pannes byzantines
                                        dans le domaine de l???informatique distribu??e.

                                        Gr??ce ?? une s??rie d???incitations astucieuses issues de la th??orie des jeux,
                                        ?? la cryptographie et au consensus distribu??, une blockchain peut parvenir
                                        ?? un consensus s??r et pr??cis sur l?????tat du registre, tout comme une chambre
                                        de compensation centrale, mais sur un r??seau d??centralis?? o??
                                        aucune entit?? n???a le contr??le.")
course2_chapter3_lesson1.save!

puts "Creating Course 2 Chapter 3 Lesson 2"
course2_chapter3_lesson2 = Lesson.new(title: "Protocole de consensus", media: "texte",
                                        chapter_id: course2_chapter3.id, content: "Dans l???univers des blockchains,
                                        la cryptographie rend le processus de v??rification des donn??es (c???est-??-dire des
                                        transactions) des plus simples et presque impossible ?? falsifier. Cette t??che
                                        est r??alis??e par les op??rateurs du r??seau, qui ex??cutent les n??uds et valident
                                        automatiquement les blocs et les transactions au sein du r??seau par le biais
                                        d???un ensemble de r??gles consensuelles. Ces r??gles peuvent ??tre ex??cut??es par
                                        toute personne disposant d???un ordinateur sur une blockchain publique et sans
                                        permission, ?? l???instar de la blockchain Bitcoin.")
course2_chapter3_lesson2.save!

puts "Creating Course 2 Chapter 4 Lesson 1"
course2_chapter4_lesson1 = Lesson.new(title: "Fonctionnement de la blockchain", media: "texte",
                                        chapter_id: course2_chapter4.id,
                                        content: "Depuis l???introduction de Bitcoin, le concept de blockchain s???est
                                        encore ??tendu. Au lieu d???utiliser une blockchain pour les seules donn??es
                                        financi??res, les projets visent ?? faire de la blockchain un support de
                                        stockage et de validation de donn??es arbitraires, qu???il s???agisse d???applications
                                        de r??seaux sociaux ou de donn??es relatives aux jeux. Il s???agit l?? du concept
                                        sous-jacent des plateformes comme Ethereum, qui utilisent une
                                        ????machine virtuelle?? superpos??e ?? la blockchain,
                                        ?? titre de couche de r??glement de base.

                                        Dans l???ensemble, les blockchains constituent une nouvelle architecture de
                                        protocole qui rend la n??cessit?? de faire confiance aux individus superflue
                                        dans un r??seau sans permission. Cela favorise donc l?????volutivit?? sociale, ainsi
                                        qu???un moyen de transfert de valeur exempt du contr??le ou de la corruption de
                                        parties malveillantes.

                                        Dans le r??seau d???une blockchain, le stockage et les donn??es sont redondants,
                                        en ce sens que, tant que des op??rateurs ex??cutent les n??uds
                                        (c???est-??-dire le client logiciel), il n???y a aucun point de d??faillance.
                                        En cons??quence, les blockchains ont fait l???objet d???une attention et d???une hype
                                        importants pour toute une s??rie d???utilisations, dont certaines sont prometteuses
                                         et d???autres, au mieux, fallacieuses.")
course2_chapter4_lesson1.save!

puts "Creating Course 3 Chapter 1 Lesson 1"

course3_chapter1_lesson1 = Lesson.new(title: "Introduction Ethereum", media: "video",
                                        chapter_id: course3_chapter1.id,
                                        content: "videoplayback_gktqqo")
course3_chapter1_lesson1.save!

puts "Creating Course 3 Chapter 2 Lesson 1"
course3_chapter2_lesson1 = Lesson.new(title: "Les algorithmes de consensus", media: "video",
                                        chapter_id: course3_chapter2.id,
                                        content: "videoplayback_2_j4hbb3")
course3_chapter2_lesson1.save!

puts "Creating Course 3 Chapter 3 Lesson 1"
course3_chapter3_lesson1 = Lesson.new(title: "Qu???est ce qu???une transaction?", media: "texte",
                                        chapter_id: course3_chapter3.id,
                                        content: "Une transaction Ethereum est une action initi??e par un compte externe,
                                          c'est-??-dire un compte g??r?? par un ??tre humain et non par un contrat.
                                          Par exemple, si Marc envoie 1 ETH ?? Alice, le compte de Marc doit ??tre
                                          d??bit?? et celui d'Alice doit ??tre cr??dit??. Cette action, qui modifie l'??tat,
                                          se produit dans le cadre d'une transaction. Les transactions, qui modifient
                                          l'??tat de l'EVM, doivent ??tre diffus??es sur l'ensemble du r??seau. N'importe
                                          quel n??ud peut diffuser une demande pour qu'une transaction soit ex??cut??e sur
                                          l'EVM. Un mineur ex??cutera ensuite la transaction et propagera au reste du
                                          r??seau le changement d'??tat qui en r??sultera.
                                        Les transactions impliquent le paiement de frais et doivent ??tre min??es pour
                                        ??tre valides. Pour simplifier ce
                                        chapitre, nous aborderons les frais de gaz et le minage dans d'autres sections.

                                        Une transaction soumise comprend les informations suivantes:

                                        - `recipient`: adresse de r??ception (S'il s'agit d'un compte externe, la
                                          transaction va transf??rer la valeur. S'il
                                        s'agit d'un compte de contrat, la transaction ex??cutera le code du contrat.)
                                        - `signature`: identifiant de l'exp??diteur. Cette signature est g??n??r??e lorsque
                                        la cl?? priv??e de l'exp??diteur signe la
                                        transaction, et confirme que l'exp??diteur a autoris?? cette transaction.
                                        - `value`: quantit?? d'ETH ?? transf??rer de l'exp??diteur au destinataire (en WEI,
                                          une d??nomination de l'ETH).
                                        - `data`: champ facultatif pour inclure des donn??es arbitraires.
                                        - `gasLimit`: Quantit?? maximum d???unit??s de gaz pouvant ??tre consomm??e par la
                                        transaction. Les unit??s de gaz
                                        repr??sentent les ??tapes de calcul.
                                        - `maxPriorityFeePerGas`: la quantit?? maximale de gaz ?? inclure comme un
                                        pourboire  pour le mineur.
                                        - `maxFeePerGas`: Montant maximum de gaz pr??t ?? ??tre pay?? pour la transaction
                                        (incluant `baseFeePerGas`
                                        et `maxPriorityFeePerGas`).

                                        Le gaz est une r??f??rence au calcul n??cessaire au traitement de la transaction
                                        par un mineur. Les utilisateurs doivent
                                        payer des frais pour ce calcul. La `gasLimit` et le `gasPrice` d??terminent les
                                        frais de transaction maximum pay??s
                                        au mineur.

                                        L'objet de transaction ressemblera un peu ?? ceci :

                                        `1{2  from: '0xEA674fdDe714fd979de3EdF0F56AA9716B898ec8',3  to:
                                          '0xac03bb73b6a9e108530aff4df5077c2b3d481e5a',4
                                        gasLimit: '21000',5  maxFeePerGas: '300',6  maxPriorityFeePerGas: '10',
                                        7  nonce: '0',8  value: '10000000000'9}10`

                                        Un objet de transaction doit ??tre sign?? avec la cl?? priv??e de l'exp??diteur.
                                        Cela prouve que la transaction ne pouvait venir que de l'exp??diteur et n'a
                                        pas ??t?? envoy??e de fa??on frauduleuse.

                                        Un client Ethereum comme Geth g??rera ce processus de signature.

                                        - `raw`est la transaction sign??e sous forme de pr??fixe de longueur r??cursive
                                        (RLP)
                                        - `tx`est la transaction sign??e sous la forme JSON

                                        Gr??ce au hachage de la signature, il est possible de prouver de fa??on
                                        cryptographique que la transaction provient de l'exp??diteur et
                                        qu'elle a ??t?? soumise au r??seau.")
course3_chapter3_lesson1.save!

puts "Creating Course 3 Chapter 3 Lesson 1"
course3_chapter3_lesson2 = Lesson.new(title: "Transactions, gaz et minage", media: "video",
                                        chapter_id: course3_chapter3.id,
                                        content: "Transactions_-_ETH.BUILD_d3cx09")
course3_chapter3_lesson2.save!

puts "Creating Course 3 Chapter 4 Lesson 1"
course3_chapter4_lesson1 = Lesson.new(title: "Introduction", media: "texte",
                                        chapter_id: course3_chapter4.id,
                                        content: "Ethereum ??tant un protocole, il peut exister plusieurs ??r??seaux??
                                        ind??pendants conformes ?? ce protocole, qui n'interagissent pas entre eux.
                                        Les r??seaux sont diff??rents environnements Ethereum auxquels vous pouvez
                                        acc??der pour du d??veloppement, du test ou une utilisation en production.
                                        Votre compte Ethereum fonctionnera sur les diff??rents r??seaux, mais le
                                        solde de votre compte et votre historique de transactions ne seront pas
                                        transf??r??s du r??seau Ethereum principal. Pour les tests, il est utile de
                                        savoir quels r??seaux sont disponibles et comment obtenir de l'ETH de
                                        r??seau de test pour pouvoir vous amuser avec.")
course3_chapter4_lesson1.save!

puts "Creating Course 3 Chapter 4 Lesson 2"
course3_chapter4_lesson2 = Lesson.new(title: "R??seaux publics", media: "texte",
                                        chapter_id: course3_chapter4.id,
                                        content: "Les r??seaux publics sont accessibles ?? toute personne disposant d'une
                                        connexion Internet, partout dans le monde. N'importe qui peut lire ou cr??er des
                                        transactions sur une blockchain publique, et valider les transactions ex??cut??es.
                                         L'accord sur les transactions et l'??tat du r??seau est d??cid?? par un
                                         consensus des pairs.

                                        R??seau principal:
                                        Le r??seau principal Ethereum est la blockchain publique primaire de production,
                                        o?? des transactions de valeur r??elle se produisent sur le registre distribu??.
                                        Quand on discute des prix de l'ETH dans les ??changes, on fait r??f??rence ?? l'ETH
                                        du r??seau principal.

                                        R??seaux de test:
                                        En plus du r??seau principal, il existe des r??seaux de test publics. Il s'agit
                                        de r??seaux utilis??s par les d??veloppeurs de protocoles ou de contrats
                                        intelligents pour tester, dans un environnement de production, ?? la fois les
                                        mises ?? niveau de protocoles et les contrats intelligents avant leur d??ploiement
                                         sur le r??seau principal. Consid??rez cela comme une analogie entre les serveurs
                                         de production et les serveurs d'essai.
                                        Il est g??n??ralement important de tester sur un r??seau de test tout code de
                                        contrat que vous ??crivez avant de le d??ployer sur le r??seau principal. Si vous
                                        construisez une DApp qui int??gre des contrats intelligents existants, la plupart
                                         des projets disposent de copies d??ploy??es sur les r??seaux de test avec lesquels
                                          vous pouvez d??j?? interagir.
                                        La plupart des r??seaux de test utilisent un m??canisme de consensus de preuve
                                        d'autorit??. Cela signifie qu'un petit nombre de n??uds sont choisis pour valider
                                        les transactions et cr??er des blocs, en mettant en jeu leur identit?? dans le
                                        processus. Il est difficile d'encourager le minage sur un r??seau de test de
                                        preuve de travail qui peut le rendre vuln??rable.
                                        L'ETH des r??seaux de test n'a pas de valeur r??elle, il n'existe donc pas de
                                        march?? pour celui-ci. Puisque vous avez besoin d'ETH pour interagir avec
                                        Ethereum, la plupart des utilisateurs obtiennent de l'ETH de r??seau de test
                                        via des robinets. La plupart des robinets sont des applications Web dans
                                        lesquelles vous saisissez adresse ?? laquelle vous demandez l'envoi d'ETH.")
course3_chapter4_lesson2.save!

puts "Creating Course 3 Chapter 4 Lesson 3"
course3_chapter4_lesson3 = Lesson.new(title: "R??seaux priv??s", media: "texte",
                                        chapter_id: course3_chapter4.id,
                                        content: "Un r??seau Ethereum est un r??seau priv?? si ses n??uds ne sont pas
                                        connect??s ?? un r??seau public (c'est-??-dire R??seau principal ou
                                        un r??seau de test). Dans ce contexte, ?? priv?? ?? signifie ?? r??serv?? ?? ou
                                        ?? isol?? ??, plut??t que ?? prot??g?? ?? ou ?? s??curis?? ??.

                                        R??seaux de d??veloppement:

                                        Quand vous d??velopperez une application Ethereum, vous voudrez l'ex??cuter sur
                                        un r??seau local pour v??rifier son fonctionnement avant de la d??ployer.
                                        De la m??me fa??on que vous ex??cuteriez un serveur local sur votre ordinateur
                                        pour du d??veloppement Web, vous pouvez utiliser un r??seau de d??veloppement pour
                                        cr??er une occurrence de blockchain locale et tester votre application
                                        d??centralis??e (dApp). Cela permet une it??ration beaucoup plus rapide que sur un
                                        r??seau de test public.
                                        Il existe des projets et des outils d??di??s pour y contribuer. En savoir plus sur
                                        les r??seaux de d??veloppement.

                                       R??seaux de consortium:

                                        Le processus de consensus est contr??l?? par un ensemble de n??uds pr??d??finis qui
                                        sont fiables. Par exemple, un r??seau priv?? d'institutions acad??miques connues
                                        r??gissant chacune un seul n??ud, et o?? les blocs sont valid??s par un seuil de
                                        signataires au sein du r??seau.
                                        Si un r??seau public Ethereum est comme l'Internet public, vous pouvez consid??rer
                                         un r??seau de consortium comme un intranet priv??.")
course3_chapter4_lesson3.save!

puts "Creating certifications"

puts "Creating certification 1 for user2"
certification1 = Certification.new(name: "Comprendre la blockchain", description: "Certificat d??livr?? par Academint pour le cours Comprendre la blockchain", user_id: user2.id)
certif1 = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/v1662548352/NFT_Academint_blockchain_tkrngz.svg")
certification1.photo.attach(io: certif1, filename: 'certif1', content_type: "image/jpg")
certification1.save!

puts "Creating certification 2 for user2"
certification2 = Certification.new(name: "Introduction ?? Ethereum", description: "Certificat d??livr?? par Academint pour le cours Introduction ?? Ethereum", user_id: user2.id)
certif2 = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/v1662548352/NFT_Academint_ethereum_oflkmz.svg")
certification2.photo.attach(io: certif2, filename: 'certif2', content_type: "image/jpg")
certification2.save!
