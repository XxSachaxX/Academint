# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "Creating 5 users...."
puts "Creating user 1"
user1 = User.new(email: 'academint@gmail.com', password: '123456', username: 'academint')
avatar1 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NRPQCG1F-119a57eec9f6-512")
user1.photo.attach(io: avatar1, filename: 'John Webber', content_type: "image/jpg")
user1.save!

puts "Creating user 2"
user2 = User.new(email: 'b.poncet@gmail.com', password: '123456', username: 'B.PONCET')
avatar2 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NRPQCG1F-119a57eec9f6-512")
user2.photo.attach(io: avatar2, filename: 'Baptiste Poncet', content_type: "image/jpg")
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
course1 = Course.new(name: 'Apprendre à coder en Ruby (1ère partie)',
                     description: "Tout ce qu'il faut savoir pour pouvoir créer vos propres applications web en Ruby", level: 'intermédiaire',
                     user_id: user1.id)

# cover1 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/feb1bb9c-d4bb-45be-b997-22069b5bb889/1.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153408Z&X-Amz-Expires=86400&X-Amz-Signature=fc77682a444b731d2d4ef761944a4c335881fd2ec3771a5a92d2d2c439cde85b&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%221.png%22&x-id=GetObject")
cover1 = URI.open("https://stackify.com/wp-content/uploads/2018/09/Learn-Ruby-Tutorial.jpg")

course1.photo.attach(io: cover1, filename: "Cours 1", content_type: "image/jpg")
course1.save!

puts "Creating course 2"
course2 = Course.new(name: 'Comprendre la blockchain?',
                     description: "Ce cours a pour but de faire comprendre de manière simple ce qu'est la blockchain
                     et ses usages.", level: 'débutant',
                     user_id: user1.id)

# cover2 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d98d18ca-6e39-4871-ba46-5ef979ddb349/2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153450Z&X-Amz-Expires=86400&X-Amz-Signature=1cdc01488405df0ce912f6b759d323635eb027d18fd45b93bf333039777ed583&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%222.png%22&x-id=GetObject")
cover2 = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/v1662363783/production/f39cirw4i8q2sa2dwfnaitum12gu.png")
course2.photo.attach(io: cover2, filename: "Cours 2", content_type: "image/jpg")
course2.save!

puts "Creating course 3"
course3 = Course.new(name: 'Introduction à Ethereum',
                     description: "Comprendre ce qu'est Ethereum, comment cette blockchain fonctionne et les différentes
                     technologies et fonctionnalités qui y sont attachées.", level: 'débutant',
                     user_id: user1.id)

# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover3 = URI.open("https://res.cloudinary.com/dunslpwim/image/upload/v1662363783/production/zi583w0qg0zt5g9qyed3jn4dwib4.png")

course3.photo.attach(io: cover3, filename: "Cours 3", content_type: "image/jpg")
course3.save!

puts "Creating course 4"
course4 = Course.new(name: 'Trading de cryptomonnaies',
                     description: "Comprendre plus en détail le fonctionnement des cryptomonnaies et leurs échanges.", level: 'intermédiaire',
                     user_id: user1.id)
cover4 = URI.open("https://images.unsplash.com/photo-1640826514546-7d2eab70a4e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80")
# cover4 = URI.open("https://images.unsplash.com/photo-1621761191319-c6fb62004040?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
course4.photo.attach(io: cover4, filename: "Cours 4", content_type: "image/jpg")
course4.save!

puts "Creating course 5"
course5 = Course.new(name: 'Qu’est-ce qu’un stablecoin?',
                     description: "Le stablecoin, une nouvelle alternative régulée aux cryptomonnaies", level: 'intermédiaire',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover5 = URI.open("https://images.unsplash.com/photo-1621761191319-c6fb62004040?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
course5.photo.attach(io: cover5, filename: "Cours 5", content_type: "image/jpg")
course5.save!

puts "Creating course 6"
course6 = Course.new(name: "Qu'est-ce que Metamask?",
                     description: "Une alternative à moindre côut au ledger", level: 'intermédiaire',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover6 = URI.open("https://i0.wp.com/financededemain.com/wp-content/uploads/2022/05/metamask-image-cryptoast.webp?resize=1140%2C600&ssl=1")
course6.photo.attach(io: cover6, filename: "Cours 6", content_type: "image/jpg")
course6.save!

puts "Creating course 7"
course7 = Course.new(name: "Cryptokitties",
                     description: "Le premier jeu articulé autour des NFT", level: 'débutant',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover7 = URI.open("https://cdn.consensys.net/uploads/1jbaJS-72rAbw5jKR4BmGVA-1920x998.png")
course7.photo.attach(io: cover7, filename: "Cours 7", content_type: "image/jpg")
course7.save!

puts "Creating course 8"
course8 = Course.new(name: "Les SBT, une nouvelle révolution?",
                     description: "Découvrez les SoulBound Tokens et leurs futurs usages.", level: 'intermédiaire',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover8 = URI.open("https://images.unsplash.com/photo-1639152201720-5e536d254d81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80")
course8.photo.attach(io: cover8, filename: "Cours 8", content_type: "image/jpg")
course8.save!

puts "Creating course 9"
course9 = Course.new(name: "Apprendre à coder vos NFT en solidity",
                     description: "Les bases pour coder vos premier smart contracts en Solidity", level: 'expert',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover9 = URI.open("https://images.unsplash.com/photo-1580927752452-89d86da3fa0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
course9.photo.attach(io: cover9, filename: "Cours 9", content_type: "image/jpg")
course9.save!

puts "Creating course 10"
course10 = Course.new(name: "Que sont les gas-fees?",
                     description: "Un point détaillé sur ce que sont les fameux gas-fees et comment les réduire", level: 'expert',
                     user_id: user1.id)
# cover3 = URI.open("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b17c8e8c-01a2-471f-be55-4c56d3d160b8/3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220830%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220830T153742Z&X-Amz-Expires=86400&X-Amz-Signature=8133c797a89915a03e0c877573182eddfa7e4943f5131cb153ae6f7fd41fd686&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%223.png%22&x-id=GetObject")
cover10 = URI.open("https://images.unsplash.com/photo-1616710556977-cc70311a68a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
course10.photo.attach(io: cover10, filename: "Cours 10", content_type: "image/jpg")
course10.save!


puts "All courses created"

puts "Creating chapters..."
puts "Creating course 1 chapter 1"
course1_chapter1 = Chapter.create(name: 'Les bases de la programmation', description: 'Notions
                                  élémentaires pour comprendre la programmation', course_id: course1.id)
course1_chapter1.save!

puts "Creating course 1 chapter 2"
course1_chapter2 = Chapter.create(name: 'Les différents types de données',
                                  description: 'Apprendre à manipuler les différents types de données existants en ruby', course_id: course1.id)
course1_chapter2.save!

puts "Creating course 1 chapter 3"
course1_chapter3 = Chapter.create(name: 'Programmation orientée objet',
                                  description: "Les bases de l'itération et de des blocs de code", course_id: course1.id)
course1_chapter3.save!

puts "Creating course 1 chapter 4"
course1_chapter4 = Chapter.create(name: 'Ruby on Rails', description:
                                  "Comprendre et apprendre à utliser le framework Ruby on Rails", course_id: course1.id)
course1_chapter4.save!

puts "Creating course 2 chapter 1"
course2_chapter1 = Chapter.create(name: 'Explication de la blockchain', description: "Comprendre ce qu'est
                                  concrètement une blockchain", course_id: course2.id)
course2_chapter1.save!

puts "Creating course 2 chapter 2"
course2_chapter2 = Chapter.create(name: 'Pourquoi la blockchain a t-elle été créée?', description:
                                  'Création de la technologie blockchain', course_id: course2.id)
course2_chapter2.save!

puts "Creating course 2 chapter 3"
course2_chapter3 = Chapter.create(name: 'Fonctionnement du pair à pair', description:
                                  "Comprendre ce qu'est le pair-a-pair et son usage", course_id: course2.id)
course2_chapter3.save!

puts "Creating course 2 chapter 4"
course2_chapter4 = Chapter.create(name: 'Les applications de la blockchain', description:
                                  'Comprendre quand et comment la blockchain est utilisée', course_id: course2.id)
course2_chapter4.save!

puts "Creating course 3 chapter 1"
course3_chapter1 = Chapter.create(name: 'Introduction à la technologie Blockchain & Ethereum', description:
                                  "Comprendre ce qu'est Ethereum", course_id: course3.id)
course3_chapter1.save!

puts "Creating course 3 chapter 2"
course3_chapter2 = Chapter.create(name: 'Explication de l’algorithme Proof of Work', description:
                                  "Comprendre ce qu'est Proof of Work", course_id: course3.id)
course3_chapter2.save!

puts "Creating course 3 chapter 3"
course3_chapter3 = Chapter.create(name: 'Anatomie d’une transaction Ethereum', description:
                                  'Comment fonctionnent les transactions sur Ethereum', course_id: course3.id)
course3_chapter3.save!

puts "Creating course 3 chapter 4"
course3_chapter4 = Chapter.create(name: 'Les différents réseaux d’Ethereum', description:
                                  'Aller plus loin sur Ethereum', course_id: course3.id)
course3_chapter4.save!

puts "All chapters created"

puts "Creating lessons..."
puts "Creating Course 1 Chapter 1 Lesson 1"

course_1_chapter1_lesson1 = Lesson.new(title: "Les éléments de base de la programmation",
                                         chapter_id: course1_chapter1.id, quizz_answers: "3,1,3,1,1,1,2,1,4,1", media: "texte", content: "Les NFT sont des medias
                                         relativement nouveaux d’actifs numériques conçus pour représenter la propriété
                                         de quelque chose d’unique et de rare. Il peut s’agir d’actifs physiques
                                         tokenisés, de ressources digitales rares, d’actions ou de pratiquement
                                         n’importe quoi d’autre.

  Comme les NFT sont uniques, il n’y en a pas deux qui se ressemblent. Un NFT ne peut donc pas être remplacé par un
  autre token identique. C’est une caractéristique connue sous le nom de « non-fongibilité». Elle est mise en œuvre
  par des smart contracts qui empêchent toute duplication, tandis que les blockchains
  publiques permettent de prouver la rareté.

  Les NFT peuvent se présenter sous différentes formes, selon la norme sur laquelle ils sont créés, par exemple:
  les ERC721 et les ERC1155 sont des NFT d’Ethereum, et TRC721 pour TRON. Chacune de ces normes a ses avantages et ses
  limites, qui peuvent influer sur les medias de NFT créés. De la même manière qu’une personne qui cuisine est limitée
  par les ingrédients dont elle dispose.La grande majorité des NFT est actuellement basée sur la norme ERC721.")
  course_1_chapter1_lesson1.save!

puts "Creating Course 1 Chapter 1 Lesson 2"
course1_chapter1_lesson2 = Lesson.new(title: "Pratique: executer son code", quizz_answers: "3,1,3,1,1,1,2,1,4,1", media: "podcast",
                                         chapter_id: course1_chapter1.id, content: "Comme les principaux actifs
                                         numériques comme l’ether (ETH) et le bitcoin (BTC), les NFT sont stockés sous
                                        forme de données sur une blockchain. Ils sont placés dans des wallets qui leur
                                        sont compatibles, comme le Ledger Nano X. Mais contrairement à la plupart des
                                        actifs numériques, les NFT possèdent une propriété appelée « non-fongibilité»
                                        qui, dans le cas des actifs numériques, est essentiellement un terme élaboré
                                        pour désigner leur unicité. Chaque NFT possède son propre ensemble d’attributs
                                         (par exemple des métadonnées en chaîne et hors chaîne). Cela les rend uniques.
                                        Cette unicité signifie qu’un NFT ne peut pas être remplacé par une autre unité
                                        identique, tout simplement parce qu’il n’en existe pas d’autre.
                                        Cela diffère radicalement des dollars américains par exemple qui, eux,
                                        sont fongibles. Un billet de cinq dollars a en effet généralement la même valeur
                                         qu’un autre billet de cinq dollars, peu importe son numéro de série ou ses
                                          autres caractéristiques.")
course1_chapter1_lesson2.save!

puts "Creating Course 1 Chapter 2 Lesson 1"
course1_chapter2_lesson1 = Lesson.new(title: "La manipulation des différents types de données",
                                        chapter_id: course1_chapter2.id, media: "texte", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                        content: "Vous l’avez peut-être déjà constaté, mais certains NFT ont une grande
                                                valeur. Plusieurs d’entre eux dépassent les 100000$US sur le marché libre.
                                                Par exemple, une parcelle de Decentraland s’est vendue 215000US$ en novembre
                                                2018, unCryptoKittyrare connu sous le nom de Dragon s’est vendu 600ETH
                                                (soit une valeur d’environ 170000$US à l’époque).
                                                Puisque les NFT sont uniques et peuvent différer en termes de rareté,
                                                de désirabilité et d’utilité, un marché s’est développé autour des plus
                                                recherchés d’entre eux. Les collectionneurs et les tradeurs achètent et
                                                vendent des NFT, dont la valeur est déterminée par la spéculation, l’offre
                                                et la demande, et bien d’autres facteurs. Comme de nombreux objets
                                                « collectors», les NFT valent autant que ce que quelqu’un est prêt à payer
                                                pour les acquérir… ce qui peut être une somme considérable.")
course1_chapter2_lesson1.save!

puts "Creating Course 1 Chapter 2 Lesson 2"
course1_chapter2_lesson2 = Lesson.new(title: "Les blocs et les itérateurs",
                                        chapter_id: course1_chapter2.id, media: "texte", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                        content: "Vous l’avez peut-être déjà constaté, mais certains NFT ont une grande
                                                valeur. Plusieurs d’entre eux dépassent les 100000$US sur le marché libre.
                                                Par exemple, une parcelle de Decentraland s’est vendue 215000US$ en novembre
                                                2018, unCryptoKittyrare connu sous le nom de Dragon s’est vendu 600ETH
                                                (soit une valeur d’environ 170000$US à l’époque).
                                                Puisque les NFT sont uniques et peuvent différer en termes de rareté,
                                                de désirabilité et d’utilité, un marché s’est développé autour des plus
                                                recherchés d’entre eux. Les collectionneurs et les tradeurs achètent et
                                                vendent des NFT, dont la valeur est déterminée par la spéculation, l’offre
                                                et la demande, et bien d’autres facteurs. Comme de nombreux objets
                                                « collectors», les NFT valent autant que ce que quelqu’un est prêt à payer
                                                pour les acquérir… ce qui peut être une somme considérable.")
course1_chapter2_lesson2.save!

puts "Creating Course 1 Chapter 3 Lesson 1"
course1_chapter3_lesson1 = Lesson.new(title: "Classes et instances de classe", media: "texte", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                         chapter_id: course1_chapter3.id, content: "Comme nous l’avons évoqué plus
                                         haut, les NFT sont stockés dans des wallets d’actifs numériques compatibles.
                                         Pour les NFT sur Ethereum, MyEtherWallet est l’un des choix les plus
                                         populaires, car il peut être utilisé pour gérer facilement tout NFT basé sur
                                         Ethereum, et pour accéder aux NFT stockés sur des wallets physiques.
                                         Tout comme l’ether classique (ETH) et lestokens ERC20, les NFT peuvent être
                                         transférés d’une adresse à une autre. Mais il est important de comprendre que
                                         les frais de transaction sont toujours payés en ether, car les tokens NFT sont
                                         généralement indivisibles par nature et ne
                                         peuvent pas être utilisés comme gaz.")
course1_chapter3_lesson1.save!

puts "Creating Course 1 Chapter 3 Lesson 2"
course1_chapter3_lesson2 = Lesson.new(title: "Inhéritance et 'Self'", media: "texte", quizz_answers: "3,2,3,1,1,1,2,1,4,1",
                                         chapter_id: course1_chapter3.id, content: "MyEtherWallet dispose d’un guide
                                         complet sur l’utilisation des NFT via son gestionnaire de NFT")
course1_chapter3_lesson2.save!

puts "Creating Course 1 Chapter 4 Lesson 1"
course1_chapter4_lesson1 = Lesson.new(title: "Controlleurs, vues et routes, un premier aperçu de Rails", media: "video", quizz_answers: "3,1,3,1,1,1,2,1,4,1",
                                         chapter_id: course1_chapter4.id, content: "Apprendre_Ruby_on_Rails_15_30___Vues_Helpers_gz1i9x")
course1_chapter4_lesson1.save!

puts "Creating Course 1 Chapter 4 Lesson 2"
course1_chapter4_lesson2 = Lesson.new(title: "Quizz", media: "quizz", quizz_answers: "2,2,2,2", chapter_id: course1_chapter4.id,
                                      content: "Vous allez maintenant pouvoir tester vos connaissances sur le langage de
                                       programmation Ruby à travers un cours quizz. Pour le réussir vous devrez valider
                                       90% de bonnes réponses, mais si vous échouez ne vous découragez pas! Révisez
                                       tranquillement vos cours et revenez plus tard le refaire. A la réussite de
                                       celui-ci vous obtiendrez votre NFT, preuve de vos compétences.")
course1_chapter4_lesson2.save!

puts "Creating course 1 chapter 4 lesson 2 Question 1"
course1_chapter4_lesson2_question1 = Question.new(content: "Ruby est un langage orienté _____", lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question1.save!

puts "Creating course 1 chapter 4 lesson 2 Question 1 Answers"
course1_chapter4_lesson2_question1_answers = Answer.new(content: "Programmation,Objet,Web", question_id: course1_chapter4_lesson2_question1.id)
course1_chapter4_lesson2_question1_answers.save!

puts "Creating course 1 chapter 4 lesson 2 Question 2"
course1_chapter4_lesson2_question2 = Question.new(content: "La commande mkdir sert à:",
                                                  lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question2.save!

puts "Creating course 1 chapter 4 lesson 2 Question 2 Answers"
course1_chapter4_lesson2_question2_answers = Answer.new(content: "Créer un nouveau fichier,Créer un nouveau dossier,Se déplacer vers un autre dossier", question_id: course1_chapter4_lesson2_question2.id)
course1_chapter4_lesson2_question2_answers.save!

puts "Creating course 1 chapter 4 lesson 2 Question 3"
course1_chapter4_lesson2_question3 = Question.new(content: "Le keyword 'if' est un:",
                                                  lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question3.save!

puts "Creating course 1 chapter 4 lesson 2 Question 3 Answers"
course1_chapter4_lesson2_question3_answers = Answer.new(content: "Itérateur,Conditionnel", question_id: course1_chapter4_lesson2_question3.id)
course1_chapter4_lesson2_question3_answers.save!

puts "Creating course 1 chapter 4 lesson 2 Question 4"
course1_chapter4_lesson2_question4 = Question.new(content: "Quel est le meilleur moyen d'obtenir un petit déjeuner?",
                                                  lesson_id: course1_chapter4_lesson2.id)
course1_chapter4_lesson2_question4.save!

puts "Creating course 1 chapter 4 lesson 2 Question 4 Answers"
course1_chapter4_lesson2_question4_answers = Answer.new(content: "Aller à la boulangerie,Trafiquer le code de ses voisins pour qu'ils fassent une erreur 500", question_id: course1_chapter4_lesson2_question4.id)
course1_chapter4_lesson2_question4_answers.save!

puts "Creating Course 2 Chapter 1 Lesson 1"
course2_chapter1_lesson1 = Lesson.new(title: "Définition", media: "texte",
                                        chapter_id: course2_chapter1.id, content: "La plupart du temps, les gens
                                        parlent de blockchains décentralisées ou publiques, à l’instar de Bitcoin.
                                        Il convient toutefois de mentionner que cette technologie peut également être
                                        utilisée pour développer des blockchains centralisées, qui présentent des
                                        avantages pour les entreprises par rapport aux blockchains publiques.&&

                                        Une blockchain est un registre distribué, similaire à une base de données.
                                        Toutefois, au lieu d’être contrôlé par une autorité centrale (une société comme
                                        Google, une petite entreprise ou un particulier), le registre s’étend sur
                                        plusieurs ordinateurs, qui peuvent se trouver aux quatre coins du monde,
                                        avec aux commandes quiconque disposant d’une connexion Internet.
                                        Une blockchain est essentiellement un registre par le biais duquel des données
                                        sont ajoutées et mises à jour en temps réel via le consensus des différents
                                        nœuds exécutant le logiciel sur le réseau.&&

                                        En revanche, une fois ajoutées au registre, les données ne peuvent être ni
                                        supprimées ni modifiées, contrairement à une base de données.
                                        C’est le résultat même de la conception globale des blockchains.")
course2_chapter1_lesson1.save!
course_2_chapter1_lesson1_1 = Lesson.new(title: "Illustration Blockchain",
chapter_id: course2_chapter1.id, media: "video", content: "COMPRENDRE_LA_BLOCKCHAIN_EN_7_MINUTES_f38q9n")
course_2_chapter1_lesson1_1.save!

puts "Creating Course 2 Chapter 1 Lesson 3"
course2_chapter1_lesson3 = Lesson.new(title: "Pourquoi une chaîne? ", media: "texte",
                                        chapter_id: course2_chapter1.id, content: "Un bloc est en fait composé d’une
                                        liste de données. La « chaîne » est une pile de blocs de données,
                                        qui grandit en permanence sur une période donnée. Si une transaction est
                                        intégrée profondément dans une blockchain (c’est-à-dire au début de la chaîne),
                                        il devient exceptionnellement difficile d’en modifier les données. De ce fait,
                                        les blockchains constituent un moyen unique de stocker des données précieuses.&&

                                        Imaginez une tour numérique composée de blocs, au sommet de laquelle un nouveau
                                        bloc de données est ajouté toutes les 10 minutes, en partant du bloc « Genesis»
                                        , à la base de la tour. Le principe est le même pour le Bitcoin:
                                        les données de chaque bloc sont les transactions financières diffusées par les
                                        utilisateurs du réseau, ainsi que les preuves cryptographiques
                                        de leur validité.")
course2_chapter1_lesson3.save!

puts "Creating Course 2 Chapter 2 Lesson 1"
course2_chapter2_lesson1 = Lesson.new(title: "Pourquoi une blockchain?", media: "texte",
                                        chapter_id: course2_chapter2.id, content: "Le recours au consensus compte
                                        parmi les composantes essentielles à l’origine de la matérialisation des
                                        blockchains. Pour comprendre ce qu’est le consensus, il faut en premier lieu
                                        savoir pourquoi Satoshi Nakamoto, créateur ou créatrice anonyme de Bitcoin,
                                        a créé une blockchain**. Qui plus est, ce récit offre un excellent aperçu du
                                        problème important que les blockchains résolvent.

                                        Dans le monde financier conventionnel, les banques et les chambres de
                                        compensation jouent le rôle d’arbitre ultime de l’hégémonie financière reposant
                                        sur les comptes. Si Alice envoie 100$US à François, 100$US sont alors débités
                                        du compte d’Alice et crédités sur celui de François.
                                        En revanche, l’actuel règlement de la transaction (lorsque la banque compense
                                        la transaction et la considère comme valide) peut prendre plusieurs jours.
                                        La compensation est effectuée par les chambres de compensation et plusieurs
                                        autres institutions financières, qui vérifient l’authenticité de la
                                        transaction et le fait qu’Alice dispose bien des fonds nécessaires qu’elle
                                        souhaite envoyer à François. Mais les chambres de compensation sont des
                                        entités centralisées, soumises à l’influence externe des gouvernements et
                                        d’autres organisations.

                                        Le monde en pleine mutation des cypherpunks (groupes informels de personnes
                                        intéressées par la cryptographie) et des monnaies numériques des années 2000
                                        s’est vu confronté à une problématique essentielle: comment échapper au joug
                                        de la chambre de compensation centrale à l’aide d’une monnaie 100% numérique?
                                        C’est le « problème de la double dépense»:
                                        il n’y avait aucun moyen de valider que, si Alice avait envoyé 100$US
                                        à François, elle n’aurait pas pu changer d’avis et dépenser à nouveau ces
                                        mêmes 100$US. Si Alice remet à François 100$US en espèces, elle ne peut plus
                                        dépenser ces mêmes 100$US. En revanche, le processus est plus complexe dans
                                        le monde numérique, sans recourir à une chambre de compensation centrale.
                                        Et les blockchains sont arrivées.")
course2_chapter2_lesson1.save!

puts "Creating Course 2 Chapter 3 Lesson 1"
course2_chapter3_lesson1 = Lesson.new(title: "Réseau pair à pair", media: "texte",
                                        chapter_id: course2_chapter3.id, content: "La blockchain Bitcoin est un
                                        réseau de pair à pair (P2P): il n’y a aucune autorité centrale. Tous les
                                        « pairs» du réseau y sont égaux et jouent le rôle de validateurs de l’état du
                                        registre. Toutefois, alors que les chambres de compensation centrales
                                        déterminent l’état des registres dans l’univers de la finance conventionnelle,
                                        Satoshi Nakamoto a pris conscience qu’une méthode innovante qui ne sacrifiait
                                        pas la nature décentralisée du réseau (que l’on appelle consensus) se révélait
                                        nécessaire à la convergence sur l’état exact d’un registre de blockchain dans un
                                        réseau P2P. Sur la blockchain Bitcoin, un nouveau bloc est créé et ajouté à la
                                        chaîne toutes les 10 minutes. Ce sont les nœuds distribués du réseau, et non
                                        une quelconque chambre de compensation, qui déterminent la validité de ces
                                        blocs et les ajoutent à la blockchain. Ils s’acquittent de cette tâche via le
                                        Consensus Nakamoto, une version d’un concept connu sous le nom de Preuve de
                                        travail Proof of Work ou de Tolérance aux pannes byzantines
                                        dans le domaine de l’informatique distribuée.

                                        Grâce à une série d’incitations astucieuses issues de la théorie des jeux,
                                        à la cryptographie et au consensus distribué, une blockchain peut parvenir
                                        à un consensus sûr et précis sur l’état du registre, tout comme une chambre
                                        de compensation centrale, mais sur un réseau décentralisé où
                                        aucune entité n’a le contrôle.")
course2_chapter3_lesson1.save!

puts "Creating Course 2 Chapter 3 Lesson 2"
course2_chapter3_lesson2 = Lesson.new(title: "Protocole de consensus", media: "texte",
                                        chapter_id: course2_chapter3.id, content: "Dans l’univers des blockchains,
                                        la cryptographie rend le processus de vérification des données (c’est-à-dire des
                                        transactions) des plus simples et presque impossible à falsifier. Cette tâche
                                        est réalisée par les opérateurs du réseau, qui exécutent les nœuds et valident
                                        automatiquement les blocs et les transactions au sein du réseau par le biais
                                        d’un ensemble de règles consensuelles. Ces règles peuvent être exécutées par
                                        toute personne disposant d’un ordinateur sur une blockchain publique et sans
                                        permission, à l’instar de la blockchain Bitcoin.")
course2_chapter3_lesson2.save!

puts "Creating Course 2 Chapter 4 Lesson 1"
course2_chapter4_lesson1 = Lesson.new(title: "Fonctionnement de la blockchain", media: "texte",
                                        chapter_id: course2_chapter4.id,
                                        content: "Depuis l’introduction de Bitcoin, le concept de blockchain s’est
                                        encore étendu. Au lieu d’utiliser une blockchain pour les seules données
                                        financières, les projets visent à faire de la blockchain un support de
                                        stockage et de validation de données arbitraires, qu’il s’agisse d’applications
                                        de réseaux sociaux ou de données relatives aux jeux. Il s’agit là du concept
                                        sous-jacent des plateformes comme Ethereum, qui utilisent une
                                        « machine virtuelle» superposée à la blockchain,
                                        à titre de couche de règlement de base.

                                        Dans l’ensemble, les blockchains constituent une nouvelle architecture de
                                        protocole qui rend la nécessité de faire confiance aux individus superflue
                                        dans un réseau sans permission. Cela favorise donc l’évolutivité sociale, ainsi
                                        qu’un moyen de transfert de valeur exempt du contrôle ou de la corruption de
                                        parties malveillantes.

                                        Dans le réseau d’une blockchain, le stockage et les données sont redondants,
                                        en ce sens que, tant que des opérateurs exécutent les nœuds
                                        (c’est-à-dire le client logiciel), il n’y a aucun point de défaillance.
                                        En conséquence, les blockchains ont fait l’objet d’une attention et d’une hype
                                        importants pour toute une série d’utilisations, dont certaines sont prometteuses
                                         et d’autres, au mieux, fallacieuses.")
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
course3_chapter3_lesson1 = Lesson.new(title: "Qu’est ce qu’une transaction?", media: "texte",
                                        chapter_id: course3_chapter3.id,
                                        content: "Une transaction Ethereum est une action initiée par un compte externe,
                                          c'est-à-dire un compte géré par un être humain et non par un contrat.
                                          Par exemple, si Marc envoie 1 ETH à Alice, le compte de Marc doit être
                                          débité et celui d'Alice doit être crédité. Cette action, qui modifie l'état,
                                          se produit dans le cadre d'une transaction. Les transactions, qui modifient
                                          l'état de l'EVM, doivent être diffusées sur l'ensemble du réseau. N'importe
                                          quel nœud peut diffuser une demande pour qu'une transaction soit exécutée sur
                                          l'EVM. Un mineur exécutera ensuite la transaction et propagera au reste du
                                          réseau le changement d'état qui en résultera.
                                        Les transactions impliquent le paiement de frais et doivent être minées pour
                                        être valides. Pour simplifier ce
                                        chapitre, nous aborderons les frais de gaz et le minage dans d'autres sections.

                                        Une transaction soumise comprend les informations suivantes:

                                        - `recipient`: adresse de réception (S'il s'agit d'un compte externe, la
                                          transaction va transférer la valeur. S'il
                                        s'agit d'un compte de contrat, la transaction exécutera le code du contrat.)
                                        - `signature`: identifiant de l'expéditeur. Cette signature est générée lorsque
                                        la clé privée de l'expéditeur signe la
                                        transaction, et confirme que l'expéditeur a autorisé cette transaction.
                                        - `value`: quantité d'ETH à transférer de l'expéditeur au destinataire (en WEI,
                                          une dénomination de l'ETH).
                                        - `data`: champ facultatif pour inclure des données arbitraires.
                                        - `gasLimit`: Quantité maximum d’unités de gaz pouvant être consommée par la
                                        transaction. Les unités de gaz
                                        représentent les étapes de calcul.
                                        - `maxPriorityFeePerGas`: la quantité maximale de gaz à inclure comme un
                                        pourboire  pour le mineur.
                                        - `maxFeePerGas`: Montant maximum de gaz prêt à être payé pour la transaction
                                        (incluant `baseFeePerGas`
                                        et `maxPriorityFeePerGas`).

                                        Le gaz est une référence au calcul nécessaire au traitement de la transaction
                                        par un mineur. Les utilisateurs doivent
                                        payer des frais pour ce calcul. La `gasLimit` et le `gasPrice` déterminent les
                                        frais de transaction maximum payés
                                        au mineur.

                                        L'objet de transaction ressemblera un peu à ceci :

                                        `1{2  from: '0xEA674fdDe714fd979de3EdF0F56AA9716B898ec8',3  to:
                                          '0xac03bb73b6a9e108530aff4df5077c2b3d481e5a',4
                                        gasLimit: '21000',5  maxFeePerGas: '300',6  maxPriorityFeePerGas: '10',
                                        7  nonce: '0',8  value: '10000000000'9}10`

                                        Un objet de transaction doit être signé avec la clé privée de l'expéditeur.
                                        Cela prouve que la transaction ne pouvait venir que de l'expéditeur et n'a
                                        pas été envoyée de façon frauduleuse.

                                        Un client Ethereum comme Geth gérera ce processus de signature.

                                        - `raw`est la transaction signée sous forme de préfixe de longueur récursive
                                        (RLP)
                                        - `tx`est la transaction signée sous la forme JSON

                                        Grâce au hachage de la signature, il est possible de prouver de façon
                                        cryptographique que la transaction provient de l'expéditeur et
                                        qu'elle a été soumise au réseau.")
course3_chapter3_lesson1.save!

puts "Creating Course 3 Chapter 3 Lesson 1"
course3_chapter3_lesson2 = Lesson.new(title: "Transactions, gaz et minage", media: "video",
                                        chapter_id: course3_chapter3.id,
                                        content: "Transactions_-_ETH.BUILD_d3cx09")
course3_chapter3_lesson2.save!

puts "Creating Course 3 Chapter 4 Lesson 1"
course3_chapter4_lesson1 = Lesson.new(title: "Introduction", media: "texte",
                                        chapter_id: course3_chapter4.id,
                                        content: "Ethereum étant un protocole, il peut exister plusieurs «réseaux»
                                        indépendants conformes à ce protocole, qui n'interagissent pas entre eux.
                                        Les réseaux sont différents environnements Ethereum auxquels vous pouvez
                                        accéder pour du développement, du test ou une utilisation en production.
                                        Votre compte Ethereum fonctionnera sur les différents réseaux, mais le
                                        solde de votre compte et votre historique de transactions ne seront pas
                                        transférés du réseau Ethereum principal. Pour les tests, il est utile de
                                        savoir quels réseaux sont disponibles et comment obtenir de l'ETH de
                                        réseau de test pour pouvoir vous amuser avec.")
course3_chapter4_lesson1.save!

puts "Creating Course 3 Chapter 4 Lesson 2"
course3_chapter4_lesson2 = Lesson.new(title: "Réseaux publics", media: "texte",
                                        chapter_id: course3_chapter4.id,
                                        content: "Les réseaux publics sont accessibles à toute personne disposant d'une
                                        connexion Internet, partout dans le monde. N'importe qui peut lire ou créer des
                                        transactions sur une blockchain publique, et valider les transactions exécutées.
                                         L'accord sur les transactions et l'état du réseau est décidé par un
                                         consensus des pairs.

                                        Réseau principal:
                                        Le réseau principal Ethereum est la blockchain publique primaire de production,
                                        où des transactions de valeur réelle se produisent sur le registre distribué.
                                        Quand on discute des prix de l'ETH dans les échanges, on fait référence à l'ETH
                                        du réseau principal.

                                        Réseaux de test:
                                        En plus du réseau principal, il existe des réseaux de test publics. Il s'agit
                                        de réseaux utilisés par les développeurs de protocoles ou de contrats
                                        intelligents pour tester, dans un environnement de production, à la fois les
                                        mises à niveau de protocoles et les contrats intelligents avant leur déploiement
                                         sur le réseau principal. Considérez cela comme une analogie entre les serveurs
                                         de production et les serveurs d'essai.
                                        Il est généralement important de tester sur un réseau de test tout code de
                                        contrat que vous écrivez avant de le déployer sur le réseau principal. Si vous
                                        construisez une DApp qui intègre des contrats intelligents existants, la plupart
                                         des projets disposent de copies déployées sur les réseaux de test avec lesquels
                                          vous pouvez déjà interagir.
                                        La plupart des réseaux de test utilisent un mécanisme de consensus de preuve
                                        d'autorité. Cela signifie qu'un petit nombre de nœuds sont choisis pour valider
                                        les transactions et créer des blocs, en mettant en jeu leur identité dans le
                                        processus. Il est difficile d'encourager le minage sur un réseau de test de
                                        preuve de travail qui peut le rendre vulnérable.
                                        L'ETH des réseaux de test n'a pas de valeur réelle, il n'existe donc pas de
                                        marché pour celui-ci. Puisque vous avez besoin d'ETH pour interagir avec
                                        Ethereum, la plupart des utilisateurs obtiennent de l'ETH de réseau de test
                                        via des robinets. La plupart des robinets sont des applications Web dans
                                        lesquelles vous saisissez adresse à laquelle vous demandez l'envoi d'ETH.")
course3_chapter4_lesson2.save!

puts "Creating Course 3 Chapter 4 Lesson 3"
course3_chapter4_lesson3 = Lesson.new(title: "Réseaux privés", media: "texte",
                                        chapter_id: course3_chapter4.id,
                                        content: "Un réseau Ethereum est un réseau privé si ses nœuds ne sont pas
                                        connectés à un réseau public (c'est-à-dire Réseau principal ou
                                        un réseau de test). Dans ce contexte, « privé » signifie « réservé » ou
                                        « isolé », plutôt que « protégé » ou « sécurisé ».

                                        Réseaux de développement:

                                        Quand vous développerez une application Ethereum, vous voudrez l'exécuter sur
                                        un réseau local pour vérifier son fonctionnement avant de la déployer.
                                        De la même façon que vous exécuteriez un serveur local sur votre ordinateur
                                        pour du développement Web, vous pouvez utiliser un réseau de développement pour
                                        créer une occurrence de blockchain locale et tester votre application
                                        décentralisée (dApp). Cela permet une itération beaucoup plus rapide que sur un
                                        réseau de test public.
                                        Il existe des projets et des outils dédiés pour y contribuer. En savoir plus sur
                                        les réseaux de développement.

                                       Réseaux de consortium:

                                        Le processus de consensus est contrôlé par un ensemble de nœuds prédéfinis qui
                                        sont fiables. Par exemple, un réseau privé d'institutions académiques connues
                                        régissant chacune un seul nœud, et où les blocs sont validés par un seuil de
                                        signataires au sein du réseau.
                                        Si un réseau public Ethereum est comme l'Internet public, vous pouvez considérer
                                         un réseau de consortium comme un intranet privé.")
course3_chapter4_lesson3.save!
