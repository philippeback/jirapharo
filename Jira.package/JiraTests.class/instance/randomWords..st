helpers
randomWords: n

	| words |
	"self new randomWords: 10"
	words := 'The Red Fox Is Jumping Over The Lazy Dog Star Boy From Paradise Panther Sample Demo Walk Run' splitOn: Character space.
	
	^Character space join: ((1 to: n) collect:[:each | words atRandom]).