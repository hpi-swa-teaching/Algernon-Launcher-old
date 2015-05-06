initialization
initializeMorph
	"setup graphical properties of Morph"
	| r |
	self
		extent: 500 @ 100;
		center: World center;
		color: Color black;
		cornerStyle: #rounded;
		borderWidth: 0;
		borderColor: Color black.
	
	"generate textField"
	r := RectangleMorph new
		color: Color veryLightGray lighter;
		extent: 400 @ 40;
		center: self center;
		borderWidth: 1.
	textField := TextMorph new
		contents: '';
		beAllFont: self class font;
		setProperty: #holdsSeparateDataForEachInstance toValue: true;
		fillingOnOff.
	r addMorph: textField.
	self addMorph: r.

	currentAlgertemLabel := TextMorph new
		contents: self currentAlgertemString;
		center: (self center x)@((self center y)+35);
		color: Color white;
		backgroundColor: nil;
		hasDropShadow: false;
		borderWidth: 0;
		beAllFont: self class font.
	self addMorphFront: currentAlgertemLabel.

	refreshLabel := TextMorph new
		contents: 'Updating';
		center: (self center x)@((self center y)-40);
		color: Color veryLightGray;
		backgroundColor: nil;
		hasDropShadow: false;
		borderWidth: 0.
	self currentAlgertem: nil.