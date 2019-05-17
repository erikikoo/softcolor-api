# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
description = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo, vel tempore! Sequi, nostrum quod. Quis mollitia itaque autem suscipit, rem sed officiis sit placeat voluptatibus eveniet maiores rerum sunt ipsa!'
produtos = [
    'Automação Comercial e Industrial',
    'Identificação de produtos',
    'Ampolas',
    'Lacres de Segurança',
    'Segurança e Rastreabilidade',
    'Etiquetas com Fragrância',
    'Scratch-off (Raspadinha)',
    'Rótulos-bula',
    'In-mold Label',
    'Impressão no liner e/ou adesivo',
    'Cupom promocional',
    'Termoencolhível'
]
# puts "Adicionando os produtos"
# produtos.each do |produto|    
#     Produto.create(title: produto, description: description)
#     puts "#{produto} criado"
# end
puts "criando full"
User.create!(password: 'HayHelena', login: 'erikikoo@hotmail.com')
User.create!(password: 'admin', login: 'administrador')

puts "============================================="
puts "Atualizando INDEX"
Home.create(
    painel_one_title: "PRODUTOS", 
    painel_one_description: "Soft Color Etiquetas adesivas trabalha com os melhores materiais e profissionais por consequancia nossos serviços tem um padrão elevado de qualidade.",
    painel_two_title: "QUEM SOMOS",
    painel_two_description: "<p>Desde 1986 a Soft Color Etiquetas adesivas é uma empresa especializada na fabricação de etiquetas, rótulos e termoencolhíveis. Está situada em Guarulhos - SP, margeando a importante Rodovia Ayrton Senna, no KM 28, estrategicamente localizada para facilitar a logistica de nossa produção, tendo acesso rápido às princiais rodovias do país. Sobre planta fabril de 5.000m² de área construída, detém de um dos maiores e mais eficientes parques gráficos de impressão rotativa do Brasil. Moderna e totalmente alinhada as diretrizes do manual de boas práticas de fabricação (GMP), é certificada pela ISO 9001:2015.</p>"
    )
 
puts "=============================================="

puts "Atualizando QUEM SOMOS"
QuemSomo.create(
    painel_title: "QUEM SOMOS", 
    painel_description: '<p>Somos a Soft Color, uma empresa brasileira que vem se destacando há 26 anos no mercado de auto-adesivos, rótulos, etiquetas especiais e In Mold Label por sua ousadia, criatividade, inovação e confiabilidade.</p><p>Nos últimos 8 anos, investimos nos mais modernos equipamentos na área de impressão e controle de qualidade, garantindo uma melhor impressão dos seus rótulos e etiquetas adesivas.</p><p>Nosso propósito é o de enfatizar a importância da comunicação visual, garantido assim a satisfação total dos clientes. Para atingir nosso propósito, nos utilizamos de atendimento e serviços de alto padrão de qualidade. A Soft Color, exerce a GMP (GOOD MANUFACTURING PRACTICES), conhecida no Brasil como BPF (BOAS PRÁTICAS DE FABRICAÇÃO), através de normas encontradas no "Manual de Boas Práticas" da Soft Color, o conceito de boas práticas de fabricação é utilizado de modo a garantir a satisfação do cliente e otimizar processos.</p><p>Com o intuito de transmitirmos confiabilidade total através de uma política de maximização de tempo com redução de custos, nós da Soft Color estamos desempenhando uma linha de trabalho com sucesso, em parceria com as mais variadas empresas que confiaram a nós a produção de suas necessidades gráficas, nos tornando especialistas na solução de problemas.</p><p>Este crescimento é fruto de nossa determinação em trabalhar duro para atender às necessidades de nossos clientes, procurando sempre superar as expectativas de qualidade de produtos, preços e prazos de atendimento.</p>' 
    )

puts "=============================================="


puts "Atualizando NOSSA HISTORIA"
NossaHistorium.create(
    painel_title: "NOSSA HISTÓRIA", 
    painel_description: "<p>Desde 1986 a Soft Color confirma sua vocação de liderança na fabricação de rótulos etiquetas e termoencolhíveis. Neste período, vem investindo fortemente em equipamentos pessoas e processos.</p>"    
    )

puts "=============================================="

puts "Atualizando SISTEMA DE IMPRESSAO"
SistemaDeImpressao.create(
    painel_principal_title: 'SISTEMAS DE IMPRESSÃO',
    painel_principal_description: '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque pariatur, adipisci atque dolorum optio reprehenderit repellat nisi consequatur neque eveniet. Iure cum aut odit quis et labore modi optio. Eaque. &nbsp; Principal</p>',
    painel_one_title: "FLEXOGRÁFICA", 
    painel_one_description: "<p>A flexografia é um processo direto de impressão em relevo rotativo, que utiliza placas de borracha ou fotopolímeros, tintas líquidas ou semilíquidas e cilindros anilox. 1</p>",
    painel_two_title: "LETTER PRESS",
    painel_two_description: "<p>Maquinas rotativas até 10 cores, com Silk-screen, verniz U.V., Hot-Stamping, over lamination, impressão no verso (sobre o adesivo), secagem U.V. em todas as estações de impressão. 2</p>",
    painel_tree_title: 'DIGITAL',
    painel_tree_description: '<p>Processo que permite a impressão e/ou reprodução de imagens e textos a partir de um arquivo digitalizado sem a presença de uma forma de impressão, diferente de processos como a flexografia que utiliza de chapas de fotopolimero como forma de impressão. 3</p>'
    )
 
puts "=============================================="

puts "Atualizando SUSTENTABILIDADE"
Sustentabilidade.create(
    painel_title: "Responsabilidade Social e Ambiental", 
    painel_description: '<p>"A Soft Color exercita sua Responsabilidade com relação ao Meio-ambiente e a sociedade através de diversos projetos e ações voltadas para a disseminação de práticas sociais e ambientais, tanto por parte de seus colaboradores internos como também através de seus clientes e fornecedores.</p><p>Os Resíduos químicos, provenientes da revelação de fotolitos são recolhido e repassados para empresas responsáveis por reciclá-los e, posteriormente, descartá-los de maneira a não agredir o meio-ambiente. Nossos parceiros têm licença da CETESB para operar."</p><p>A Soft Color Etiquetas Adesivas recicla todos insumos possíveis e implantou em 2008 o Programa Reciclar, de incentivo aos seus colaboradores. Toda renda do Programa Reciclar é revertido para melhorias em prol dos mesmos e por eles apontadas. Desde o início do Programa, já foram recicladas mais de 3 toneladas de papelão e 300 Kg de plásticos, além de metais e aparas limpas. (ver relatório do programa reciclar).</p><p>Além dos programas ambientais, a Soft Color Etiquetas Adesivas é uma das empresas que contribui com a fundação ABCD Nossa Casa, participando financeiramente e também em ações Sociais, como o Arraial ABCD Nossa Casa, que ocorre todos os anos no mês de Julho (Visite o site da ABCD Nossa Casa e torne-se também um colaborador).</p><p>"Em 2009, a Soft Color apresentou durante a FCE Pharma/Cosmetique, dois lançamentos utilizando materiais reciclados e biodegradaveis. O material biodegradavel é um material que ao entrar em contato com os agentes decompositores, se degrada em 16 semanas.</p><p>A Soft Color Etiquetas e Rótulos Adesivos, também utiliza água de re-uso em seu prédio, ou seja a empresa possui coletores de água da chuva e toda a água coletada é armazenada em uma caixa de re-uso de 32.000 L. Esta água é usada para o saneamento básico da empresa e limpeza da faixada e pisos, além de ser usada para regar os jardins da empresa.</p><p>A Soft Color Etiquetas Adesivas promove seminários internos sobre diversos temas, dentre eles segurança do trabalho, rótulos adesivos, inovação, respeito ao meio ambiente, responsabilidade social , no intuito de gerar conhecimento para seus colaboradores a respeito de assuntos atuais."</p>'    
    )

puts "=============================================="

puts "Atualizando POLITICA DE QUALIDADE"
PoliticaDeQualidade.create(
    painel_one_title: "Política de Qualidade", 
    painel_one_description: "<p>Buscando sempre o melhor atendimento, dispomos de variados serviços para suprirmos as necessidades de nossos clientes.</p><p><strong>1)</strong> Análise pelo Controle de Qualidade com revisão e rebobinamento – Sistemas inovadores de vídeo-inspeção garantem a qualidade do seu pedido.</p><p><strong>2)</strong> Editoração eletrônica nas plataformas MAC e PC – serviço indispensável para a confecção da sua etiqueta ou rótulo auto-adesivo, levam ao cliente uma melhor qualidade na etiqueta ou rótulo auto-adesivo a ser impresso.</p><p><strong>3)</strong> Gravação de chapas e clichês para impressão – Nós possuímos um setor para gravação de chapas e clichês, aonde utilizamos a mais alta tecnologia, gerando uma melhor qualidade, mais sigilo e menor custo.</p><p><strong>4)</strong> Formulação de tintas especiais para uso na impressão.</p><p><strong>5)</strong> Datação e numeração no liner e no frontal.</p>",
    painel_two_title: "PRÊMIOS E CONQUISTAS",
    painel_two_description: "<p>Nos orgulhamos de nossas conquistas e dividimos o mérito com nossos clientes, fornecedores e colaboradores.</p>"
    )
 
puts "=============================================="

puts "Atualizando Material Coletado"
MaterialColetado.create(
    ano: '2018',
    qnt_plastico: '3.352,2 kg',
    qnt_aparas: '749 kg',
    qnt_fotolitos: '83,6 kg',
    qnt_ferro: '1.620 kg',
    qnt_papelao: '13.862 kg',
    qnt_aluminio: '34,8 kg'

    )
 
puts "=============================================="


puts "adicionando telefones"

telefones = [
    '2489-8800',
    '2726-3000',
    '2201-3443'
]
telefones.each_with_index do |telefone, index|
    if (index === 0) 
        Telefone.create(numero: telefone, principal: true)
    else    
        Telefone.create(numero: telefone)
    end    
    puts "#{telefone} adicionado"
end

puts "=============================================="

puts "adicionando emails"

emails = [
   'vendas@softcolor.com.br', 
   'adm@softcolor.com.br' 
]
emails.each_with_index do |email, index|
    if index === 0 
        Email.create(email: email, principal: true)
    else 
        Email.create(email: email)
    end
    puts "#{email} adicionado"
end

puts "=============================================="

puts "adicionando contato"


    Contato.create(
        endereco: 'Estrada do Capão Bonito',
        numero: '1071',
        bairro: 'V. Maria de Lourdes',
        cidade: 'Guarulhos',
        estado: 'SP',
        cep: '07263-010'
        )
    


puts "=============================================="