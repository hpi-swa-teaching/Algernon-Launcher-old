initialization
initializeInputField

	| helper |
	self textField: (ALGInputField new
		contents: '';
		beAllFont: ALGInputField defaultFont;
		backgroundColor: Color white;
		setProperty: #holdsSeparateDataForEachInstance toValue: true;
		fillsOwner: true).
	helper := RectangleMorph new
		color: Color white;
		extent: (self class defaultWidth - 10) @ 40;
		center: self center;
		borderWidth: 0.
	helper addMorph: self textField.
	self addMorph: helper.