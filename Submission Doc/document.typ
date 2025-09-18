#set page(paper: "us-letter")
#set text(size: 16pt)

#show heading.where(level: 1): it => {
	set align(center);
	set text(20pt);
	v(0.6em);
	it;
	v(0.4em);
}
#show link: it => {
	underline(text(fill: blue, it));
}
#set par(linebreaks: "optimized")
#show quote: it => {
	block(
		fill: color.hsl(0deg, 0, 245),
		inset: (x: 0.3in, y: 0.2in),
	)[
		#set text(style: "italic")
		“
		#it.body
		”
	];
}


// Title

#{
	set align(center);
	text(weight: "bold", size: 24pt)[Submission for GSND 6250 Project 1];
	parbreak();
	text(style: "italic")[Team 03];
	parbreak();
}


= Team Members

#block(width: 100%)[
	#set align(center);
	#table(
		columns: 2,
		stroke: none,
		gutter: 0.5em,
		[Yichi Zhang],
		[Sadaf Nezameddini],
		[Zhuowen Song],
		[Nianyi Wang],
	);
];


= Links

#block(width: 100%)[#{
	set align(center);
	let gutter = 1em;
	link("https://trello.com/invite/b/68c5b357358026f818dadc98/ATTIfb4c5472ff955d651ebc3a11f8df1e71D3D8BDF7/project-1-shelter-upgrade")[Trello board];
	h(gutter);
	link("https://github.com/Nianyi-GSND-Projects/GSND-6250-GP1-Shelter-and-Upgrade")[GitHub repository]
	h(gutter);
	link("https://nianyi-wang.itch.io/shelter-and-upgrade")[itch.io page];
	parbreak();
	link("https://docs.google.com/spreadsheets/d/12BDLr64xIlaHBN1bUq-UYfs7yvNBcFNOdym9wJBjEPQ/edit?gid=0#gid=0")[Design Doc];
	h(gutter);
	link("https://github.com/Nianyi-GSND-Projects/GSND-6250-GP1-Shelter-and-Upgrade/blob/master/CREDITS.md")[External credits];
}];

= Design Problem and Target Experience

The design problem we tried to solve is: How to guide players to follow the designed route, create a place that makes them feel uneasy, and then give them a sense of safety.

The experience we hope to create is to make players feel uneasy and confused first, and then try to find other places. Along the way, they encounter clues that guide them to a place where they feel safe.


= Project Description

When players first enter the game, they will face a dense forest shrouded in fog. The level is set at night, with a hazy glow of moonlight. The design of this scene is intended to create a sense of confusion in players. The key level design method used is obstructing the player’s view, which creates an unknown feeling through the obstruction effect of trees and fog on the field of view, inducing players to feel uneasy and try to find a safe point. If the player turns around, they will see a broken bridge and cannot go back, and can only move forward.

The player will come across a road sign, which will lead their sight to the two branches. Then the player will notice a faint firelight shining through the fog. We use the campfire’s glow to attract the player’s attention and guide them forward. In the situation that limited visibility creates unease, the light provides hopeful safety.

Following the light, the player will discover a camp with signs of people living. 
The campfire and various clues of human activity in the camp release the player from feelings of loneliness and confusion. We tried to minimize potentially threatening environmental elements in the camp, such as weapons. Instead, we emphasized traces of daily life, such as placing a sleeping bag and other daily necessities. Players can upgrade the facilities of the campsite by clicking on them.


= Selected Patterns

== #link("https://patternlanguageforgamedesign.com/PatternLibraryApp/PatternLibrary/3649")[Give Me a Break]

#quote[
	Designers can provide safe spaces in the game world, using common elements that have universal symbolic meanings—such as campfires, benches, or shelters—to establish a psychological anchor in players’ mind, making there the “default” option players will want to go whenever they are lost or in danger.
]

In this level, we used this pattern to alleviate the unease caused by environmental shaping, release players from their tense mentality, and strengthen their sense of security through comparison.

== #link("https://patternlanguageforgamedesign.com/PatternLibraryApp/PatternLibrary/3646")[Bat Cave Builder!]

#quote[
	Players can spend resources collected from levels to build or upgrade several facilities in their shelter/settlement. Each facility built and each upgrade may unlock new functions for players or provide improvement. 
]

In this level, we provide a small camp for the player. They can not only have a rest and get relaxed from the dark environment, but can also upgrade the camp. In this way the player will have a sense of autonomy and feel belonging to the shelter.

== #link("https://patternlanguageforgamedesign.com/PatternLibraryApp/PatternLibrary/1160")[You Should Go This Way!]

#quote[
	Using covers could guide the way in a imperceptible way, instead of using way such as arrow, which is decrease the immersive of the game.
]

In this level, a road sign is placed at the intersection not to directly guide the way but to remind players to look around. And then they will notice the bright campfire light through the foggy night, which can be an imperceptible guide.


= Sketches

#figure(
	image("images/Song 2.png", height: 3in),
	caption: [Forest - Front View.],
)

#figure(
	image("images/Nianyi 1.png", height: 4in),
	caption: [Camp - Top View.],
)

#figure(
	image("images/Song 1.png", height: 4in),
	caption: [Level - Top view.],
)

#figure(
	image("images/OuterSketch.png", height: 3.5in),
	caption: [Level - Top view, with scale.],
)

#figure(
	image("images/CampSketch_2.png", height: 3.5in),
	caption: [Camp - Top view, with scalen],
)


= Gray Box

#figure(
	image("images/Outer Graybox.png", height: 3.5in),
	caption: [The outer environment.],
)

#figure(
	image("images/Interier Graybox.png", height: 3.5in),
	caption: [The interior space of the shelter.],
)

#figure(
	image("images/Obstruction.png", height: 3.5in),
	caption: [The mountain on the right obstructs the player's view to the shelter.],
)

#figure(
	image("images/Approaching.png", height: 3.5in),
	caption: [A lit corner of the shelter could be seen as the player walk along the path.],
)


= Final Screenshots

#figure(
	image("images/P 1.png", height: 3in),
	caption: [When the player reaches the road sign and needs to choose their path, the warm light and the cover around the shelter encourages them to go that way first, as it feels like a safe space in this darkness.],
)

#figure(
	image("images/P 2.png", height: 3in),
	caption: [Every item in the shelter suggests that this is a safe place that players can stay for a while. The light and warmth from the campfire, a bed to sleep in, a worktable for crafting, and a storage pile for their belongings.],
)

#figure(
	image("images/P 3.png", height: 3in),
	caption: [All the items can be upgraded to a better version, to better support the player's needs. A cooking tripod adds the ability of cooking, the tent instead of a blanket can provide a better sleep quality, and a chest instead of a pile is a safer and more organized way to store their stuff.],
)


= Time Table

#block(width: 100%)[
	#set align(center)
	#table(
		columns: 3,
		stroke: none,
		table.hline(),
		table.header([*Subject*], [*Estimated Time*], [*Actual Time*]),
		table.hline(stroke: 0.5pt),
		[Team], [32h], [32h 40m],
		[Average], [8h], [8h 10m],
		table.hline(stroke: 0.5pt),
		[Nianyi], [8h 30m], [9h 10m],
		[Yichi], [8h 30m], [8h 30m],
		[Sadaf], [7h], [6h 30m],
		[Zhuowen], [8h], [8h 30m],
		table.hline(),
	)
]