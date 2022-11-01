create table posts (
	id int primary key auto_increment,
	titulo varchar(150) not null,
	conteudo varchar(10000) not null,
	dataCriacao DATETIME NOT NULL DEFAULT NOW(),
	autorId int,
	foreign key (autorId) references usuarios(id)
)

insert into posts (autorId, titulo, conteudo, dataCriacao)
values
(1, "Garra: O poder da paixão e da perseverança", 'Neste livro obrigatório para todos que desejam alcançar o sucesso, a psicóloga Angela Duckworth demonstra para pais, estudantes, educadores, atletas e empreendedores que o segredo para realizações incríveis não é o talento, mas uma mistura de paixão e perseverança que ela chama de “garra” — a capacidade de perseverar e produzir resultados além do puro talento, da sorte ou das eventuais derrotas.

Ao usar como exemplo a própria história como filha de um cientista que, com frequência, notava sua falta de “genialidade”, Duckworth, agora professora e pesquisadora renomada, descreve as primeiras revelações que a levaram à hipótese de que não é a “genialidade” que realmente conduz ao sucesso, mas uma combinação especial de paixão e perseverança.

Em Garra, ela cita o caso dos cadetes que se esforçam em seus primeiros dias na Academia Militar de West Point e de professores que trabalham nas escolas mais difíceis de lecionar dos Estados Unidos. Destaca conceitos e insights fascinantes buscados tanto na história quanto nos mais modernos experimentos sobre alta performance e, finalmente, compartilha com o leitor o que aprendeu ao entrevistar dezenas de pessoas bem-sucedidas nos mais diversos campos de atuação: do CEO do
J. P. Morgan a um cartunista da The New Yorker e um treinador da National Football League, entre outros.

Pessoal e inspirador, capaz de transformar vidas, Garra é um livro sobre o que se passa na cabeça das pessoas durante as derrotas e como isso — não o talento ou a sorte — pode fazer toda a diferença.

“Garra é uma resposta fascinante e convincente à falsa importância dada ao QI. Duckworth lembra que são o caráter e a perseverança
que diferenciam os bem-sucedidos.”Malcolm Gladwell, autor de O ponto da virada

“Inestimável. Em um mundo onde o acesso ao conhecimento é sem precedentes, Garra descreve a característica-chave daqueles que sabem tirar vantagem disso.”Salman Khan, fundador da Khan Academy

“Incrivelmente atual e original, Garra derruba os preconceitos sobre quão longe nosso potencial pode nos levar. Leia o livro, compre para seus amigos e espalhe a mensagem de que há esperança: todos nós podemos brilhar.”Susan Cain, autora de O poder dos quietos', '2022-10-01'),
(2, "Mindset: A nova psicologia do sucesso", 'Carol S. Dweck, professora de psicologia na Universidade Stanford e especialista internacional em sucesso e motivação, desenvolveu, ao longo de décadas de pesquisa, um conceito fundamental: a atitude mental com que encaramos a vida, que ela chama de "mindset", é crucial para o sucesso. Dweck revela de forma brilhante como o sucesso pode ser alcançado pela maneira como lidamos com nossos objetivos. O mindset não é um mero traço de personalidade, é a explicação de por que somos otimistas ou pessimistas, bem-sucedidos ou não. Ele define nossa relação com o trabalho e com as pessoas e a maneira como educamos nossos filhos. É um fator decisivo para que todo o nosso potencial seja explorado', '2022-10-02'),
(3, "Comece pelo porquê: Como grandes líderes inspiram pessoas e equipes a agir", 'Mais de 160.000 exemplares vendidos no Brasil.



"Um dos livros mais úteis e poderosos que eu li em anos. Simples e elegante, nos mostra como líderes devem liderar." – William Ury, coautor de Como chegar ao sim



Por que algumas pessoas e organizações são mais inovadoras, admiradas e lucrativas do que outras? Por que algumas despertam grande lealdade por parte de clientes e funcionários?



Para Simon Sinek, a resposta está no forte senso de propósito que as inspira a darem o melhor de si para uma causa expressiva – o porquê.



Ao publicar esse livro, o autor iniciou um movimento que tem ajudado milhões de pessoas a encontrar um sentido maior no próprio trabalho e, assim, inspirar colegas e clientes.



Ilustrando suas ideias com as fascinantes histórias de Martin Luther King, Steve Jobs e os irmãos Wright, Simon mostra que as pessoas só irão se dedicar de corpo e alma a um movimento, ideia, produto ou serviço se compreenderem o verdadeiro propósito por trás deles.



Nesse livro, você verá como pensam, agem e se comunicam os líderes que exercem a maior influência, e também descobrirá um modelo a partir do qual as pessoas podem ser inspiradas, movimentos podem ser criados e organizações, construídas. E tudo isso começa pelo porquê.', '2022-10-03'),
(4, "Líderes Se Servem Por Último", 'Por que apenas algumas pessoas dizem "Adoro meu trabalho"? Parece injusto que encontrar realização no trabalho seja como ganhar na loteria. Que só apenas alguns sortudos consigam se sentir valorizados por suas empresas.

Porém, em várias partes do mundo, líderes estão construindo ambientes em que as pessoas sentem que fazem parte. Em algumas equipes, as pessoas confi am tanto umas nas outras que literalmente dão a vida pelos colegas.

É o caso, por exemplo, dos Fuzileiros Navais norte-americanos, que têm esse lema: "Os oficiais se servem por último". A partir da observação desta e de outras corporações, e também do estudo das substâncias biológicas desenvolvidas ao longo do processo evolutivo do homem, o etnógrafo Simon Sinek mostra como certos locais criam Círculos de Segurança, que levam a equipes estáveis, adaptadas e confi antes, onde todos se sentem à vontade e devotam toda a sua energia para, junto com a empresa, prosperar e aproveitar oportunidades.

Depoimentos:

"Traz muitos insights sobre liderança do ponto de vista biológico e sobre a influência poderosa de serotonina, dopamina e outras substâncias. Realmente me ajudou a entender o mecanismo por trás das decisões de grandes e pequenas empresas."

Jefta Bade, da empresa JAM Visual Thinking, em Amsterdã

"Livro incrível! Analisa de forma muito simples e surpreendente como os seres humanos são programados para funcionar, sugerindo maneiras de encontrar o equilíbrio entre nossa natureza humana e as necessidades atuais. É um guia perfeito para liderar grupos organizados de pessoas, melhorando os relacionamentos no trabalho e construindo empresas significativas."

Alexandros Samaras, relações públicas na C-Strategist, de Bruxelas

"De início, pensei que fosse mais um livro maternal sobre liderança. Mas a parte sobre nossa dependência dos estimulantes naturais como dopamina e ocitocina mudou minha visão. É realmente importante saber como os seres humanos reagem e por quê. E unir isso a casos reais realmente me ajudou a entender o impacto das reações humanas em longo prazo."

Raymond Warren, gestor de mídias sociais e digitais da Cadillac', '2022-10-04'),
(5, "Como fazer amigos e influenciar pessoas", 'Um dos maiores clássicos de todos os tempos, Como fazer amigos e influenciar pessoas é considerado a Bíblia dos relacionamentos interpessoais.

“O livro de desenvolvimento pessoal mais bem-sucedido de todos os tempos. Carnegie nunca foi tão relevante.” – The Times

Mais de 16 milhões de livros vendidos.

“Os princípios ensinados neste livro só funcionam quando são de coração. Não estou defendendo um conjunto de truques. Estou falando sobre um novo estilo de vida.

Se inspirarmos as pessoas a perceber os próprios tesouros ocultos, poderemos fazer bem mais do que mudá-las – poderemos literalmente transformá-las.” – Dale Carnegie



Ao longo de oito décadas, este livro se tornou a referência quando o assunto é o desenvolvimento das relações humanas, das habilidades sociais e da comunicação eficiente.

Partindo do princípio de que é preciso se interessar genuinamente por aqueles com quem interagimos, ele mudou a vida de milhões de pessoas, fazendo-as se sentirem mais seguras, abertas e confiantes em seus encontros sociais e profissionais.

Com saborosas histórias, exemplos práticos e ótimos conselhos, esta é uma leitura prazerosa e fundamental para quem deseja criar bons vínculos, se tornar mais persuasivo, deixar uma marca positiva e inspirar os outros com energia e gentileza.', '2022-10-06'),
(1, "A coragem de ser imperfeito", 'PRIMEIRO LUGAR NA LISTA DO THE NEW YORK TIMES.

Como aceitar a própria vulnerabilidade, vencer a vergonha e ousar ser quem você é.

Brené Brown ousou tocar em assuntos que costumam ser evitados por causarem grande desconforto. Sua palestra a respeito de vulnerabilidade, medo, vergonha e imperfeição já teve mais de 55 milhões de visualizações.

Viver é experimentar incertezas, riscos e se expor emocionalmente. Mas isso não precisa ser ruim. Como mostra Brené Brown, a vulnerabilidade não é uma medida de fraqueza, mas a melhor definição de coragem.

Quando fugimos de emoções como medo, mágoa e decepção, também nos fechamos para o amor, a aceitação e a criatividade. Por isso, as pessoas que se defendem a todo custo do erro e do fracasso acabam se frustrando e se distanciando das experiências marcantes que dão significado à vida.

Por outro lado, as que se expõem e se abrem para coisas novas são mais autênticas e realizadas, ainda que se tornem alvo de críticas e de inveja. É preciso lidar com os dois lados da moeda para se ter uma vida plena.

Em sua pesquisa pioneira sobre vulnerabilidade, Brené Brown concluiu que fazemos uso de um verdadeiro arsenal contra a vergonha de nos expor e a sensação de não sermos bons o bastante, e que existem estratégias eficazes para serem usadas nesse "desarmamento".

Nesse livro, ela apresenta suas descobertas e estratégias bem-sucedidas, toca em feridas delicadas e provoca grandes insights, desafiando-nos a mudar a maneira como vivemos e nos relacionamos.', '2022-10-07'),
(2, "Mais forte do que nunca: Caia. Levante-se. Tente outra vez.", '"Brené Brown é especialista em esperança, em acreditar que as coisas podem ficar bem e em encontrar formas de tentar melhorá-las." — Metro

"Ao encorajar os leitores a serem curiosos em relação às próprias emoções, Brené Brown os guia através do processo de aceitação da vulnerabilidade e de superação da sombra da vergonha e do medo." — Publishers Weekly

Errar faz parte da vida. Se você correr riscos e for corajoso, mais cedo ou mais tarde poderá se dar mal. Às vezes aquele projeto em que estava apostando todas as fichas vai pelo ralo ou um casamento de muitos anos chega ao fim, dei­xando dor e muito sofrimento pelo caminho. Não importa: todos precisam aprender a lidar com o fracasso.

Apesar disso, temos medo de falar sobre o assunto. Conhecemos inúmeras histórias bonitas de superação, mas sempre há nelas uma espécie de lacuna: passa-se diretamente do infortúnio à vitória – e o doloroso processo que nos leva de um ponto a outro nem sequer é mencionado.

Tomando como ponto de partida seu trabalho pioneiro sobre a importância da vulnerabilidade, em Mais forte do que nunca, a pesquisadora Brené Brown faz a pergunta inevitável: se todos nós levamos rasteiras da vida, como certas pessoas conseguem enfrentar tantas adversidades e, mesmo assim, sair mais fortes?

Para responder a isso, a autora conversou com inúmeras pes­soas, coletou dados e passou a compreender melhor a volta por cima. Nesse livro, você vai aprender quais são as características de personalidade, os padrões emocionais e os hábitos mentais que nos possibilitam transcender as catástrofes da vida e renascer – não totalmente ilesos, porém mais plenos e realizados, vivendo com mais propósito e significado.', '2022-10-08'),
(3, "O lado difícil das situações difíceis: Como construir um negócio quando não existem respostas prontas", 'MUITA GENTE FALA SOBRE COMO É BOM SER EMPRESÁRIO, MAS SÓ BEN HOROWITZ DIZ SEM PAPAS NA LÍNGUA COMO É DIFÍCIL DIRIGIR UMA EMPRESA
Em "O lado difícil das situações difíceis", Ben Horowitz, cofundador da Andreessen Horowitz e um dos empreendedores mais respeitados e experientes do Vale do Silício, conta a história de como ele mesmo fundou, dirigiu, vendeu, comprou, geriu e investiu em empresas de tecnologia, oferecendo conselhos essenciais e normas de sabedoria prática para ajudar os empreendedores a resolver os problemas mais difíceis - aqueles de que as faculdades de administração não tratam.

Horowitz, grande fã de rap, ilustra as lições empresariais com letras de suas músicas favoritas e fala a verdade nua e crua sobre os assuntos mais espinhosos, desde como demitir um amigo até saber o melhor momento para vender a empresa.

"A experiência e perícia de Ben o tornam um dos líderes mais importantes não somente do Vale do Silício, mas também da economia global do conhecimento. Para quem quer que esteja interessado em construir, fazer crescer ou liderar uma empresa de primeira linha, este livro é um recurso incrivelmente valioso - e ao mesmo tempo é bem humorado e cheio de surpresas."
(Mark Zuckerberg, cofundador e diretor executivo do Facebook)', '2022-10-09'),
(4, "Dedique-se de coração: A história de como a Starbucks se tornou uma grande empresa de xícara em xícara", 'A história da Starbucks não é apenas um registro de crescimento e sucesso. Ela conta também como uma empresa pode ser construída de maneira diferente. Em Dedique-se de coração percebemos que uma empresa pode, sim, funcionar com o coração, nutrir a alma e ainda dar lucros. Neste livro, vemos que é possível, a longo prazo, oferecer valor aos seus acionistas sem sacrificar a crença central de que se deve tratar os funcionários com respeito e dignidade, tanto porque a Starbucks tem uma equipe de líderes que acreditam que isso é o certo quanto porque essa é a melhor forma de se fazer negócios.

É difícil imaginar qualquer café que seja mais agradável do que esta narrativa.
— PUBLISHERS WEEKLY —

Para empreendedores, gerentes e admiradores da Starbucks: Dedique-se de coração é a história definitiva de como uma empresa de ponta construiu sua reputação no varejo mundialmente, conduzindo tudo com o coração.
— BUSINESS TIMES —

Ao nos presentear com a história detalhada de como a Starbucks compreendeu a mente de seus clientes, Schultz nos revela um autêntico truísmo norte-americano: se você for capaz de entender a imaginação de sua clientela, será um vencedor.
— USA TODAY —', '2022-10-10'),
(5, "Flow (Edição revista e atualizada): A psicologia do alto desempenho e da felicidade", 'Edição revista e atualizada do clássico best-seller sobre flow — a chave para a criatividade, o alto desempenho e a felicidade.

Durante mais de vinte anos, o renomado psicólogo Mihaly Csikszentmihalyi pesquisou sobre o estado de concentração total e satisfação profunda. Seus estudos revelaram que o que torna uma experiência genuinamente agradável é o que ele chama de "flow" — um momento de completa concentração, em que estamos tão absortos em uma atividade que conseguimos alcançar um estado ideal de felicidade.
Neste livro revolucionário, ele explica como esse mecanismo funciona no comportamento humano e o que podemos fazer para aprimorá-lo. Flow é um clássico sobre felicidade e uma das grandes contribuições à psicologia contemporânea.

"Flowdestaca a exatidão do que os filósofos vêm dizendo há séculos: o caminho para a felicidade não está no hedonismo irracional, mas sim no desafio consciente." — The New York Times

"Uma profunda análise cultural… A maneira com que Csikszentmihalyi integra pesquisas em consciência, psicologia pessoal e espiritualidade é reveladora." — Los Angeles Times

"Repensa o que motiva as pessoas." — Newsweek', '2022-10-11'),
(1, "Extreme Ownership: How U.S. Navy SEALs Lead and Win", 'An updated edition of the blockbuster bestselling leadership book that took America and the world by storm, two U.S. Navy SEAL officers who led the most highly decorated special operations unit of the Iraq War demonstrate how to apply powerful leadership principles from the battlefield to business and life.

Sent to the most violent battlefield in Iraq, Jocko Willink and Leif Babin’s SEAL task unit faced a seemingly impossible mission: help U.S. forces secure Ramadi, a city deemed “all but lost.” In gripping firsthand accounts of heroism, tragic loss, and hard-won victories in SEAL Team Three’s Task Unit Bruiser, they learned that leadership—at every level—is the most important factor in whether a team succeeds or fails.

Willink and Babin returned home from deployment and instituted SEAL leadership training that helped forge the next generation of SEAL leaders. After departing the SEAL Teams, they launched Echelon Front, a company that teaches these same leadership principles to businesses and organizations. From promising startups to Fortune 500 companies, Babin and Willink have helped scores of clients across a broad range of industries build their own high-performance teams and dominate their battlefields.

Now, detailing the mind-set and principles that enable SEAL units to accomplish the most difficult missions in combat, Extreme Ownership shows how to apply them to any team, family or organization. Each chapter focuses on a specific topic such as Cover and Move, Decentralized Command, and Leading Up the Chain, explaining what they are, why they are important, and how to implement them in any leadership environment.

A compelling narrative with powerful instruction and direct application, Extreme Ownership revolutionizes business management and challenges leaders everywhere to fulfill their ultimate purpose: lead and win.', '2022-10-12'),
(2, "Paixão por vencer", 'Durante seus vinte anos como CEO da General Eletric, Jack Welch levou a empresa a crescer e a conquistar diversos mercados, mesmo enfrentando uma concorrência acirrada. Seu estilo honesto e determinado de administrar — com foco nas pessoas, no trabalho em equipe e na qualidade dos produtos — se tornou o padrão-ouro da indústria. Após sua aposentadoria, Welch viajou pelo mundo e, com palestras e simpósios, instruiu mais de 250 mil pessoas sobre sua maneira de gerir negócios. Inspirado pelo público e por seu desejo de demonstrar as regras da liderança objetiva, escreveu Paixão por vencer, obra clássica e indispensável no segmento empresarial. A obra de Welch é para todos — do estagiário ao CEO. Seus conselhos são tão universais que não importa quem você seja, que cargo ocupe ou se o lugar em que trabalha é um pequeno negócio local ou um conglomerado multinacional. Ao analisar o funcionamento de uma empresa, o autor mostra como se tornar um líder e fazer as mudanças acontecerem. Ele também reflete sobre o valor da concorrência e aborda estratégias, fusões e a famosa metodologia Six Sigma — o processo de qualidade que implementou na GE e que permitiu sua constante busca por excelência. Além disso, também há espaço para estudar o gerenciamento da carreira do próprio leitor, com conselhos para conseguir o emprego dos sonhos e alcançar o equilíbrio entre a vida pessoal e a profissional. Para vencer, basta ter paixão. E, para alcançar novos patamares em sua carreira, basta seguir os conselhos e a metodologia de um dos maiores pensadores empresariais de nossa época. Suba na escada corporativa, tire projetos do papel e assuma a liderança com Paixão por vencer.', '2022-10-13')

