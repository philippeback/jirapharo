testing-agile
testGetBoard

| r res boardSelf boardId |
r := JiraAgileBoardResource new.

"res := j execute: r getAllBoards."
"res := j execute: r getAllScrumBoards."

res := jira execute: (r getBoardMatching: (self defaultProjectKey)).

boardSelf := (res at: #values) first at: #self.
boardId := (res at: #values) first at: #id.

res := jira execute: (r getBoard: boardId).

"{boardId. boardSelf. res}"
		
	