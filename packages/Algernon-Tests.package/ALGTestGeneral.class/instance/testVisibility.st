testing
testVisibility
	
	algerstance class initializeAlgertems.
	algerstance deactivate.
	
	self deny: algerstance visible.
	self assert: algerstance itemList selectedListItem isNil.
	
	algerstance activate.
	self assert: algerstance visible.
	