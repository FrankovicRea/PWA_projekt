-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 11:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwa_projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) NOT NULL,
  `naslov` varchar(100) NOT NULL,
  `sazetak` text NOT NULL,
  `tekst` text NOT NULL,
  `kategorija` varchar(64) NOT NULL,
  `slika` varchar(64) NOT NULL,
  `prikaz` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `kategorija`, `slika`, `prikaz`) VALUES
(1, '09.06.2022.', 'Shanghai to lock down 2.7 million, a week after easing Covid restrictions', 'District of Minhang to be closed on Saturday for mass testing, sparking fears the lockdown could be prolonged if cases found.', 'Shanghai will lock down a district of 2.7 million people on Saturday to conduct mass coronavirus testing, city authorities said, as the Chinese metropolis struggles to fully emerge from punishing curbs.\r\n\r\nThe city eased many restrictions last week, after confining most of its 25 million residents to their homes since March as China battled its worst Covid outbreak in two years.\r\n\r\nBut the lockdown was never fully lifted, with hundreds of thousands in China’s biggest city still restricted to their homes and multiple residential compounds put under fresh stay-home orders.\r\n\r\nThe south-western district of Minhang, home to 2.7 million people, will be placed under “closed management” on Saturday morning and all residents will be tested, district authorities said in a social media post on Thursday.\r\n\r\n“The closure will be lifted after samples have been collected,” they added, without giving a specific time or date.\r\n\r\nThe statement also did not say what measures would be imposed if any district residents test positive.\r\n\r\nUnder China’s stringent zero-Covid approach, all positive cases are isolated and close contacts – often including the entire building or community where they live – are made to quarantine.\r\n\r\nShanghai reported nine new local infections on Thursday – none in Minhang.\r\n\r\nThe district’s announcement sparked fear among some social media users that the lockdown could be prolonged beyond Saturday if any cases are found.\r\n\r\n“You need to clarify if [the lockdown] will really be lifted after samples are collected,” one user wrote on Weibo.\r\n\r\n“If there are abnormal results after the tests, what will you do? Continue the lockdown?” asked another.\r\n\r\nThe lockdown in Shanghai – a major global shipping hub – had threatened to pile further pressure on already-strained international supply chains.\r\n\r\nBut the city has slowly come back to life in recent days.\r\n\r\nCommuters are back on subways and buses as people return to working in their offices, while residents have gathered in parks and along the city’s historic waterfront.\r\n\r\nBut others are chafing under continued restrictions, with residents in one compound in the downtown Xuhui district protesting against the rules this week.\r\n\r\nChina’s capital Beijing, meanwhile, is transitioning more smoothly towards normality after shutting restaurants, gyms and subway stations last month to stamp out a smaller outbreak.', 'w_news', 'slika1.PNG', 1),
(13, '09.06.2022.', 'Russia-Ukraine war: western weapons can win Sievierodonetsk battle', 'Ukraine could \'clean up Sievierodonetsk in two or three days with western long-range weapons – governor', 'Serhiy Haidai, Ukraine’s governor of Luhansk, has said that it is currently impossible to evacuate people out of Sievierodonetsk, where fierce fighting continues, but if the west could supply long-range weapons, Ukrainian forces would be able to “clean up Sievierodonetsk in two or three days”.\r\n\r\nHe has written on Telegram this morning saying:\r\n\r\n\"Silence in Sievierodonetsk lasts only when guns are reloaded. Street fights continue in the regional center.\r\n\r\nRussians adhere to their primitive tactics: heavy artillery fire, then - attempts to break through. The same thing happened in the already destroyed Rubizhne and Popasna.\r\n\r\nThe enemy is powerfully pursuing the industrial zone, which we control.\r\n\r\nIf we quickly get western long-range weapons, an artillery duel will begin, the Soviet Union [sic] will lose to the west, and our defenders will be able to clean up Sievierodonetsk in two or three days\r\n\r\nEvacuation from Sievierodonetsk is still impossible, as is the transportation of goods. Currently, the hospital has everything necessary to stabilize the wounded.\r\n\r\nHe has also again emphasized that “Russians do NOT control the Lysychansk-Bakhmut route, but constantly storm it. We do not use this road.\"\r\n\r\nSievierodonetsk situation \'difficult but manageable\' – city mayor\r\nUkrainian forces still hold the industrial zone and adjacent areas in the city of Sievierodonetsk, and the situation is “difficult but manageable”, mayor Oleksandr Stryuk said this morning.\r\n\r\nHe said defense lines were holding despite intense Russian artillery fire but that it was now impossible to evacuate people from Sievierodonetsk. He said about 10,000 civilians remained in the city, Reuters reports.', 'w_news', 'slika2.jpg', 1),
(14, '09.06.2022.', 'Gold rush for gas production threatens to lock in global heating', 'New dash for gas driven by energy disruption and rising prices spurns warnings to cease exploration to meet 1.5 heating limit', 'Countries around the world are pouring funds into new natural gas facilities that could destroy the chances of limiting global heating, in response to soaring energy prices and the war in Ukraine.\r\n\r\nGovernments including the US, Germany, the UK and Canada are investing in new gas production, distribution and use as they seek to sanction Russia over the invasion of Ukraine, according to new research.\r\n\r\nThe findings, from the Climate Action Tracker research initiative, show a dash for gas under way that will lock countries into fossil fuel use at a crucial time, when scientists have warned that a decisive turn towards lower-carbon alternatives within the next few years is the only way to stave off climate breakdown.\r\n\r\nNiklas Höhne, of NewClimate Institute, one of the partners behind the Climate Action Tracker, said: “We’re about to witness a ‘gold rush’ for new fossil gas production, pipelines and LNG [liquefied natural gas] facilities, locking us into another high-carbon decade.”\r\n\r\nThe report highlighted the US, which has signed a deal to export additional LNG to the EU, through an increased effort on fracking. Germany and Italy have also signed deals with Qatar as a gas supplier, as has Egypt, the host of the world’s next climate summit, Cop27 in Sharm El-Sheikh this November.\r\n\r\nCanada also plans new LNG production, fast-tracking construction to meet export demand. Overall, fossil fuel production has increased in Canada, the US, Norway, Italy and Japan, according to Climate Action Tracker.\r\n\r\nThe UK is also facing a massive expansion of oil and gas production in the North Sea, as the government has imposed a windfall tax on the industry that contains a loophole encouraging companies to invest in new production.\r\n\r\nDeveloping countries are getting in on the act, too. Nigeria is reviving gas pipeline projects that had been shelved, and Senegal and other countries are hoping to explore their gas reserves.\r\n\r\nOil and gas companies around the world are enjoying a bonanza after the war in Ukraine sent energy prices – already rising as the world recovered from the economic shock of Covid-19 – to fresh highs.\r\n\r\nThe dash for gas comes as scientists have warned it is “now or never” on the climate. Global greenhouse gas emissions must be halved by 2030, according to the Intergovernmental Panel on Climate Change, to give the world a chance of limiting global temperature rises to 1.5C above pre-industrial levels, the target agreed at last year’s Cop26 climate summit.\r\n\r\nSome countries have argued that gas production has a role in the transition to a clean energy future, as gas produces less carbon dioxide than coal. But the International Energy Agency warned a year ago that no new oil and gas exploration could take place from this year on, if the world was to limit global heating to 1.5C.\r\n\r\nSeparate research has also found that moving directly to renewable energy from coal is cheaper than using gas as a “transition” fuel.\r\n\r\nBill Hare, chief executive of Climate Analytics, also a partner in the Climate Action Tracker, said the world was compounding the mistake made after the Covid-19 pandemic struck, when despite soaring green rhetoric, few countries made a decisive shift in favour of a low-carbon economic recovery.\r\n\r\nHe warned: “Something has to change: we cannot go on responding to short-term shocks, be they pandemics or energy shocks from conflict, by taking steps that would increase emissions, ignoring the looming crisis of climate change.”\r\n\r\nHare also pointed to the many alternative policies governments should use, such as improving energy efficiency, ramping up renewable energy, boosting public transport and imposing windfall taxes on the bumper profits of fossil fuel companies. These have been largely neglected in many countries, the CAT report warned, which have focused on short-term energy supply responses instead.', 'w_news', 'slika3.jpg', 1),
(15, '09.06.2022.', 'US House passes gun control bill but it faces defeat in Senate', 'Legislation would raise age limit for buying a semi-automatic rifle and put curbs on ammunition sales', 'The US House of Representatives has passed a wide-ranging gun control bill in response to recent mass shootings in Buffalo, New York and Uvalde, Texas, but the proposals have almost no chance of being approved by the Senate and becoming law.\r\n\r\nThe bill would raise the age limit for buying a semi-automatic rifle and prohibit the sale of ammunition magazines with a capacity of more than 15 rounds.\r\n\r\nThe legislation passed by a mostly party-line vote of 223-204. It has almost no chance of becoming law as the Senate pursues negotiations focused on improving mental health programmes, bolstering school security and enhancing background checks. But the House bill does give Democratic lawmakers a chance to frame for voters in November where they stand on policies that polls show are widely supported.\r\n\r\n“We can’t save every life, but my God, shouldn’t we try? America we hear you and today in the House we are taking the action you are demanding,” said Veronica Escobar, a Texas Democrat. “Take note of who is with you and who is not.”\r\n\r\nThe vote came after a House committee heard wrenching testimony from recent shooting victims and family members, including from an 11-year-old girl, Miah Cerrillo, who covered herself with a dead classmate’s blood to avoid being shot at Uvalde elementary school.\r\n\r\nThe seemingly never-ending cycle of mass shootings in the US has rarely stirred Congress to act. But the shooting of 19 children and two teachers in Uvalde has revived efforts in a way that has lawmakers from both parties talking about the need to respond.\r\n\r\n“It’s sickening, it’s sickening that our children are forced to live in this constant fear,” said the House speaker, Nancy Pelosi.\r\n\r\nPelosi said the House vote would “make history by making progress”. But it is unclear where the House measure will go after Wednesday’s vote, given that Republicans were adamant in their opposition.\r\n\r\n“The answer is not to destroy the second amendment, but that is exactly where the Democrats want to go,“ said the Republican Jim Jordan of Ohio.\r\n\r\nThe work to find common ground is mostly taking place in the Senate, where support from 10 Republicans will be needed to get a bill signed into law. Nearly a dozen Democratic and Republican senators met privately for an hour on Wednesday in hope of reaching a framework for compromise legislation by the end of the week. Participants said more conversations were needed about a plan that is expected to propose modest steps.\r\n\r\nIn a measure of the political peril that efforts to curb guns pose for Republicans, five of the six lead Senate GOP negotiators do not face re-election until 2026. They are senators Bill Cassidy of Louisiana, Susan Collins of Maine, John Cornyn of Texas, Lindsey Graham of South Carolina and Thom Tillis of North Carolina. The sixth, Pat Toomey of Pennsylvania, is retiring in January. It is also notable that none of the six is seeking the Republican presidential nomination.\r\n\r\nWhile Cornyn has said the talks are serious, he has not joined the chorus of Democrats saying the outlines of a deal could be reached by the end of this week. He told reporters on Wednesday that he considered having an agreement before Congress begins a recess in late June to be “an aspirational goal”.\r\n\r\nThe House bill stitches together a variety of proposals Democrats had introduced before the recent shootings in Buffalo and Uvalde. The suspects in the shootings at Uvalde elementary school and the Buffalo supermarket were both 18, authorities say, when they bought the semi-automatic weapons used in the attacks. The bill would increase the minimum age to buy such weapons to 21.\r\n\r\n“A person under 21 cannot buy a Budweiser. We should not let a person under 21 buy an AR-15 weapon of war,“ said Ted Lieu, a California Democrat.\r\n\r\nRepublicans have noted that a US appeals court ruling last month found California’s ban on the sale of semiautomatic weapons to adults under 21 was unconstitutional. “This is unconstitutional and it’s immoral. Why is it immoral? Because we’re telling 18-, 19- and 20-year-olds to register for the draft. You can go die for your country. We expect you to defend us, but we’re not going to give you the tools to defend yourself and your family,” said Thomas Massie of Kentucky.\r\n\r\nThe House bill also includes incentives designed to increase the use of safe gun storage devices and creates penalties for violating safe storage requirements, providing for a fine and imprisonment of up to five years if a gun is not properly stored and is subsequently used by a minor to injure or kill themselves or another individual.\r\n\r\nIt also builds on executive actions banning fast-action “bump stock” devices and “ghost guns” that are assembled without serial numbers.\r\n\r\nThe White House press secretary, Karine Jean-Pierre, hailed the House bill, tweeting: “We continue to work hard with both parties to save lives and stand up for families.”\r\n\r\nFive Republicans voted for the bill: Brian Fitzpatrick of Pennsylvania, Anthony Gonzalez of Ohio, Chris Jacobs of New York, Adam Kinzinger of Illinois and Fred Upton of Michigan. Only Fitzpatrick is seeking re-election. On the Democratic side, Jared Golden of Maine and Kurt Schrader of Oregon were the only no votes. Schrader lost his re-election attempt in the Democratic primary. Golden faces a competitive election in November.\r\n\r\nThe House is also expected to approve a bill on Thursday that would allow families, police and others to ask federal courts to order the removal of firearms from people who are believed to be at extreme risk of harming themselves or others.\r\n\r\nNineteen states and the District of Columbia currently have such “red flag laws”. Under the House bill, a judge could issue an order to temporarily remove and store the firearms until a hearing can be held no longer than two weeks later to determine whether the firearms should be returned or kept for a specific period.', 'w_news', 'slika4.jpg', 1),
(16, '09.06.2022.', 'Celtics move within two wins of title after holding off Warriors in Game 3', 'Celtics take 2-1 lead in best-of-seven-games NBA finals', 'Jaylen Brown scored 27 points, Jayson Tatum added 26 and the Boston Celtics beat back another third-quarter onslaught by the Golden State Warriors in a 116-100 victory Wednesday night that gave them a 2-1 lead in the NBA finals.\r\n\r\nNBA finals Game 3: Golden State Warriors 100-116 Boston Celtics – as it happened\r\nRead more\r\nMarcus Smart added 24 points and helped lead a defensive effort that held the Warriors to 11 points in the fourth quarter,\r\n\r\nStephen Curry led Golden State with 31 points and six three-pointers. He had 15 points in a 33-25 third quarter by the Warriors but was hurt late in the fourth after Al Horford rolled into his leg on a loose ball. It was similar to a play during the regular season in which Smart dove into Curry’s legs while chasing a loose ball.\r\n\r\nKlay Thompson broke out of a finals slump and finished with 25 points and five threes. But the Warriors’ shooting couldn’t save them on a night the more athletic Celtics outmuscled them for a 47-31 rebounding advantage,\r\n\r\nGame 4 is Friday in Boston.\r\n\r\nThe previous 39 times teams have split the first two games of the finals, the winner of Game 3 went on to win the series 82% of the time.\r\n\r\nFeeding off the energy of a TD Garden crowd that jeered Draymond Green throughout his miserable night in the first NBA finals game in Boston since 2010, the Celtics started fast and led by as many as 18 points in the first half.\r\n\r\nComing off a Game 2 loss in which Boston turned the ball over 19 times, the Celtics’ ball movement was much crisper in the half court, which led to open perimeter shots, favorable 1-on-1 matchups and driving lanes..\r\n\r\nIt left the Warriors scrambling at times, which contributed to three foul calls on Curry in the opening 24 minutes.\r\n\r\nBut as well as Boston played, they had their early lead erased in the third quarter by a Warriors seven-point possession that included a four-point play by Curry when he drew a flagrant 1 foul on Horford and three-pointer by Otto Porter Jr to put Golden State in front 83-82.\r\n\r\nBoston recovered to take a 93-89 edge into the fourth. The Celtics got the lead back up to 102-91 in the fourth and outscored Golden State 23-11 in the quarter.\r\n\r\nThe Celtics led 56-39 before an 8-0 spurt in just 37 seconds by the Warriors trimmed the lead to 56-49 on a layup by Curry with 3:32 left in half. The run included a pair of missed free throws by Boston, along with a missed layup and turnover.\r\n\r\nBoston flurried at the end of the half to take a 68-56 lead into halftime.', 'sport', 'sport1.jpg', 1),
(17, '09.06.2022.', 'Beth Mead focused on England Euro success after Olympic snub', '‘I’ve figured out how to channel my anger and energy better now’ - Beth Mead', 'Beth Mead says she has learned to channel her energy “a little bit better” after going into the 2021-22 campaign fuelled by the disappointment of rejection.\r\n\r\nThe forward was named the Arsenal fans’ player of the season after a stellar campaign in which she scored 11 goals and provided eight assists, the joint highest in the league alongside Manchester United’s Ella Toone. Mead had credited her success to “playing angry” after she was not picked for the Olympics by the temporary England and Team GB manager, Hege Riise, last summer.\r\n\r\nNow, though, with her form suggesting that she will almost certainly be named in Sarina Wiegman’s 23-player squad for the European Championship next week, she has little to be angry about. “I guess I’ve figured out how to channel my anger and energy into my football a little bit better now,” she said.\r\n\r\n“I’m obviously a little bit more confident than I probably was last season. Hopefully I can take that into the Euros. I’m in a good place, I’m in a good headspace, my football has been good so I’m just trying to channel that energy in the right way.”\r\n\r\nMead, who made her debut for England in 2018, is benefiting from the clear messaging and relaxed atmosphere that the former Netherlands manager Wiegman has brought in. “I’ve known where I’ve stood, what she’s expected of me,” she said. “She’s given me a lot of confidence on the pitch and on the training pitch.\r\n\r\n“It’s just been easy for me to go on the pitch and do what I know I can do and have the backing of my manager. I would say I’ve been a lot more free. The expectation she has for me, I understand a lot more than probably in the past.”\r\n\r\nAn emphasis on enjoying the football has been heavily injected into a squad that often seemed fazed by pressure. “It’s a different style, different managers,” the 27-year-old said when asked to compare the buildup to the Euros with the preparations for the 2019 World Cup.\r\n\r\n“Under Phil [Neville] it was very much about hard work and now we’re just on the pitch enjoying our football and the hard work comes with that. It’s part of our DNA. Everyone just feels free, in a good headspace and we’re just really enjoying being here.”\r\n\r\nThe fact that Wiegman wants her team to attack, create chances and take them helps. The Lionesses have hit double figures four times in World Cup qualifying in the past year, but the manager has also pointed out that missed opportunities could prove costly against tougher opponents.', 'sport', 'sport2.jpg', 1),
(18, '09.06.2022.', 'Marcel Hug: ‘The rivalry with David Weir is really important to me’', 'The Swiss wheelchair racer known as the ‘Silver Bullet’ on slaying the Weirwolf and his pride at being recognised by his peers', 'Marcel Hug was named World Sportsperson of the Year with a Disability by Laureus on Sunday, and he is enjoying the feeling. “For me it’s the most important award we can win in sport,” he says, “so I’m very happy and proud to have it.”\r\n\r\nThe Laureus World Sport Awards are international prizes selected each year by a tiny electorate of 71 people. Each of them are former winners – the best of the sporting best – and any success therefore shows the level of respect with which athletes are held by their peers.\r\n\r\nThat Hug should be the winner of this year’s award – his fourth nomination and second success – should come as no surprise. The “Silver Bullet”, as the Swiss wheelchair racer is known due to his distinctive metallic helmet, dominated the Paralympic Games in Tokyo. He won four gold medals in the T54 classification, at 800m, 1500m and 5,000m as well as the marathon, and set world and Paralympic records in the process.\r\n\r\n“I think it is the top of my career,” Hug says, reflecting on what he describes as a “crazy” year. “Of course it was challenging to come to Tokyo, because we had not a lot of competitions. I really didn’t know where I was standing compared with my competitors. So to win that first gold in the 5,000m came as huge relief, and for the next races I was full of confidence.”\r\n\r\nIt was in the heats of the 5,000m that Hug finished nearly a minute clear of ParalympicGB’s David Weir, a performance that signalled the beginning of the very end of their fierce rivalry, one that stretches back to London 2012. Hug may have eventually slayed the “Weirwolf”, but he says the two remain cordial. He got a text from the British racer to congratulate him on his award, plus the two world records in the 5,000m Hug has already recorded this year.\r\n\r\n“The rivalry with David is really important to me and it means a lot,” Hug says. “We have been competing together for so many years and being great rivals means we pushed each other to our limits and made ourselves stronger. I think he was also a very important person for the London Paralympics. London 2012 was a very important games for para-sport, and to have David as a multiple winner there gave us an extra boost.”\r\n\r\nHug is gracious in reflecting Weir’s status as an icon in para-sport, and says it had never occurred to him to reflect on his own legacy until he completed his events at Tokyo last year. “After that, everything was different. After the Paralympics I was reflecting on my future, but I was also thinking ‘what is my legacy in this sport’? Now I think for the years that I am still in racing, I hope that I have more of an impact. I really hope so.”\r\n\r\nHug says he has no idea of what he will do once he retires, but at the age of 35 that consideration is becoming real. He has adjusted his sporting ambitions, switching from plans that were built around four-year Paralympic cycles to those that last only 12 months. “It took me a long time to realise what happened in that crazy season last year,” he says, “Now I want to use [the time] to feel how motivated I am and how I want to continue. From now on, I take it year by year.”\r\n\r\nAlongside his record of success, Hug will also leave a legacy through the way he has pushed development of technology in para-sport. It was his racing chair, designed by a consortium of engineering teams including the Formula One company Sauber and in which he made his debut ride in Tokyo, that Weir described as “a Ferrari of a chair”. It sparked debate over the possibility of a technological divide in a sporting world that was professionalising at rapid speed.', 'sport', 'sport3.jpg', 1),
(19, '09.06.2022.', 'Next generation: Brazil Women ready to build on legends’ achievements', 'Pia Sundhage’s exciting young side before the Copa América in Colombia\r\n', '“You never know if they’re ready, but you have to believe,” Pia Sundhage said recently. The Brazil coach was talking about her squad for the friendlies against Denmark and Sweden later this month, games that will be followed by the Copa América. The Swedish manager has been in charge of the Brazilian women’s national team for the past three years and leading them through a rebuilding process.\r\n\r\nHaving relied heavily on veterans such as Marta, Cristiane and Formiga to win seven out of eight Copas, this will be the first major tournament without any of them in a long, long time. Now younger players such as Kerolin, Geyse, Tainara and Giovana Queiroz have to pick up the baton.\r\n\r\n“Yes, I feel this responsibility,” the 22-year-old North Carolina Courage midfielder Kerolin tells Moving the Goalposts. She is looking forward to the tournament, and not having some of her idols on the pitch will encourage her to look back at their legacy and what they achieved. “It also motivates us to keep them close, even from afar,” she says. “We’re always communicating and learning from them. It’s only fair that we do the same they did for the women’s game.”\r\n\r\nThe manager of the U-20 Brazilian national team, Jonas Urias, works closely with Sundhage to make sure there is a pathway for the best talents to reach the senior side. He says that the main challenge is to nurture the same toughness in this generation that the previous one had. “Previous generations were forced to be resilient to survive in an extremely hostile and prejudiced environment, but they still were able to win,” he says. “Younger players now have better work conditions, but they cannot settle for that.”\r\n\r\nIn Kerolin’s case she has already had a great start to her first season in the NWSL. She won the Challenge Cup with her club and has already seen a change in her football since the move from Madrid CFF, where she spent two seasons. Sundhage has seen it too. “Today, people in the US talk about Kerolin,” she says. “And there are certain things she does on the field, certain qualities that she has, that we want to encourage her to do more with. But it depends on how successful Kerolin will be with Angelina, with Duda, with whoever it is.”\r\n\r\nAnother important aspect of calling up younger players is that those who are based in Brazil are able to get together with those playing in Europe and the United States. The manager invited Duda Sampaio, the 21-year-old midfielder who plays for Internacional in the Brasileirão, to taste the environment of the seleção. Grêmio’s 25-year-old goalkeeper Lorena has won the coaching staff’s confidence after being in the squad for most friendlies this year.\r\n\r\nAnother player, Ary Borges, a 22-year-old midfielder who plays for Palmeiras, understands that the future of the team is in their own hands. “We talk a lot,” she says about her young colleagues such as Kerolin and Geyse. “We are young, but we’ve lived a little. Even the younger players are in big clubs here in Brazil, in Europe or in other places as well. So it’s kind of cool to have this pressure because it motivates me as an athlete.”\r\n\r\nFor Sundhage, looking at the players individually is not enough. She needs to know that, in this process of renewing a group that has played together for more than a decade, there is a balance too. “The key is juntas, the key is to work together”, she says, adding that this process takes time. “Whoever is taking over when we are gone, that will be a fantastic team.”', 'sport', 'sport4.jpg', 1),
(22, '17.06.2022.', 'UN climate talks end in stalemate', 'Adviser says European nations are sourcing fossil fuels abroad but failing to help developing countries\r\n', 'European governments have been accused of seeking to exploit the fossil fuel reserves of the developing world, while failing to help them tackle the climate crisis.\r\n\r\nCampaigners made the charge as the latest round of UN climate negotiations ended in stalemate on Thursday night in Bonn, Germany.\r\n\r\nFew countries have produced the plans on tougher emissions cuts they promised in November at the Cop26 summit in Glasgow, Scotland, and finance and help for poor countries to adapt to the impacts of climate breakdown are still lacking.\r\n\r\nHow countries choose to react to the war in Ukraine and to soaring energy prices – by boosting renewable energy and improving energy efficiency, as the International Energy Agency has advised, or by seeking fresh sources of fossil fuels – will be decisive in determining whether the world manages to stay within the 1.5C threshold (the target of limiting global heating to 1.5C above pre-industrial levels).\r\n\r\nSome EU member states, including Germany, are making plans to expand imports of fossil fuels to replace the vast quantities of gas Europe currently buys from Russia, which is fuelling the war machine of Vladimir Putin.\r\n\r\nBut Harjeet Singh, a senior climate impacts adviser at Climate Action Network International, said it a“hypocritical” for Germany and others to “source new fossil fuels abroad while denying support to developing countries from climate-induced superstorms and rising seas”..\r\n\r\nRachel Rose Jackson, a director of climate research and policy at Corporate Accountability, pointed out this was the 30th anniversary of the signing of the UN Framework Convention on Climate Change (UNFCCC). “Thirty years on, global north countries are still dangerously addicted to fossil fuels. While pontificating about ‘keeping 1.5 alive’ , they are failing on a monumental scale to decrease their own fossil fuel use.”\r\n\r\nChiara Martinelli, the director of Climate Action Network Europe, said: “European countries urgently need to massively ramp up their climate and energy targets, rather than displace oil and gas from Russia with those from developing countries, further locking them into fossil fuels. That’s what a climate leader should do.”\r\n\r\nDeveloping countries at Bonn voiced concern that wealthy countries had been slow to propose commitments on “loss and damage”, the term for the impacts of the climate crisis that are too severe to be adapted to. They want a funding mechanism to help their societies and economies to recover but so far there has been little progress on the issue.\r\n\r\nAlden Meyer, a senior associate at the E3G thinktank, said the G7 must step forward with funding plans to help poor countries cope with the impacts of the climate crisis when it meets in Germany this month.\r\n\r\n“G7 leaders must respond to the clear call by developing countries to sharply scale up finance for loss and damage, and they should instruct their finance ministers to develop concrete proposals on how to fulfil their pledge made last December to help ‘shift the trillions’ for developing country decarbonisation,” he said.\r\n\r\nThe UN said important technical work had been done at the Bonn conference on 6-16 June. The first steps were taken on a “global stocktake”, stipulated in the 2015 Paris agreement as a way to review global progress towards the 1.5C target.\r\n\r\nThe Bonn conference, known as an intersessional to the annual conference of the party meetings under the UNFCCC, parent treaty to the 2015 Paris agreement, was intended to provide a bridge between Cop26 and this year’s Cop27 in Sharm el-Sheikh, Egypt.\r\n\r\nPatricia Espinosa, the executive secretary of the UNFCCC and the world’s top official on the climate crisis, said: “While much work remains, parties have made progress in several technical areas here in Bonn. Such steps are a key part of negotiations and important to achieve our overall goals.\r\n\r\n“The world is moving closer to an overall shift towards implementation of the Paris agreement. Major political decisions, notably on finance for loss and damage, need to be taken at Cop27. We now need to ensure that Sharm el-Sheikh will truly be the place where important promises of the Paris agreement are turned into reality.”\r\n\r\nThis was Espinosa’s last UN climate conference, as she will reach the end of her second three-year term on 15 July. There was an emotional tribute from delegates in the hall.\r\n\r\nDelegates at the conference also recognised the new scientific reports presented by the Intergovernmental Panel on Climate Change this year. Espinosa was presented with a T-shirt bearing the slogan “Science does not negotiate” at the closing session of the talks.', 'w_news', 'slika5.jpg', 1),
(23, '17.06.2022.', 'Julian Assange’s extradition', 'Appeal likely after Priti Patel gives green light to extradition of WikiLeaks co-founder', 'Priti Patel has approved the extradition of the WikiLeaks co-founder Julian Assange to the US, a decision the organisation immediately said it would appeal against in the high court.\r\n\r\nThe case passed to the home secretary last month after the supreme court ruled there were no legal questions over assurances given by US authorities over how Assange was likely to be treated.\r\n\r\nWhile Patel has given a green light, WikiLeaks immediately released a statement to say it would appeal against the decision.\r\n\r\n“Today is not the end of fight,” it said. “It is only the beginning of a new legal battle. We will appeal through the legal system; the next appeal will be before the high court.”\r\n\r\nThe statement said anyone who cared about freedom of expression should be “deeply ashamed” that the home secretary approved Assange’s extradition.\r\n\r\n“Julian did nothing wrong. He has committed no crime and is not a criminal. He is a journalist and a publisher and he is being punished for doing his job,” it said.\r\n\r\n“It was in Priti Patel’s power to do the right thing. Instead she will for ever be remembered as an accomplice of the United States in its agenda to turn investigative journalism into a criminal enterprise.”\r\n\r\nAny appeal is likely to focus on grounds such as the right to freedom of expression and whether the extradition request is politically motivated. Patel had been considering whether the US extradition request met remaining legal tests, including a promise not to execute him.\r\n\r\nThe Australian is being held at Belmarsh prison in London after a lengthy battle to avoid being extradited.\r\n\r\nThe saga was triggered in 2010 when WikiLeaks published a series of leaks by Chelsea Manning, a former US army soldier, as well as a dump of more than 250,000 US diplomatic cables, some of which were published in the Guardian and elsewhere, containing classified diplomatic analysis from world leaders. The US government launched a criminal investigation into the leaks.\r\n\r\nAlso in 2010, an arrest warrant for Assange was issued for two separate sexual assault allegations in Sweden. The UK ruled he should be extradited to Sweden.\r\n\r\nThis prompted the WikiLeaks founder to enter the Ecuadorian embassy in London in August 2012, claiming political asylum. He feared if he was extradited to Sweden, he would in turn be extradited to the US.\r\n\r\nHe finally left the embassy in 2019. He was arrested in the UK for skipping bail and ultimately jailed. Then extradition proceedings to the US were started against him.\r\n\r\nPatel’s decision was met with immediate criticism from campaigners, journalists and MPs.\r\n\r\nCaroline Lucas, the Green party MP for Brighton Pavilion, said: “Absolutely shameful that Priti Patel has approved Julian Assange’s extradition to US – this sets a dangerous precedent for press freedom and democracy.\r\n\r\n“US authorities are determined to silence him because they don’t like what he revealed.”\r\n\r\nThe former cabinet minister David Davis said: “Sadly, I do not believe Mr Assange will get a fair trial. This extradition treaty needs to be rewritten to give British and American citizens identical rights, unlike now.”', 'w_news', 'slika6.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `korisnicko_ime` varchar(32) NOT NULL,
  `lozinka` varchar(225) NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(1, 'Rea', 'Franković', 'administrator', '$2y$10$SfFlt3y6vMusuUd3cwZoPeWWzkQapeRLcSpWw4iL//UYbp2gHfQBC', 1),
(10, 'Zdravko', 'Dren', 'user1', '$2y$10$oUGqefHLFU06Ds6DOfNt6eufdcOU6dH6O9LzOARwpP1b.91u4r4nm', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;