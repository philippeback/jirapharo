testing-agile
testCreateStory
	| res  storyName |
	"Beware that storyname and summary should be the same."
	storyName := self randomStoryName.
	res := jira
		createStoryNamed: storyName
		inProjectWithKey: (self defaultProjectKey )
		withSummary: storyName