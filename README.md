# GameCenterBubbleEffect-swift
Using swift, Create a squeezing and moving in a constraint area just like the ios game center effect.
Here is the GIF preview of this project : https://www.dropbox.com/s/hutbg19f50ds68i/game.gif?dl=0
(somehow, I fail to add the gif directly to the readme file ... sad).

Code:
The code is quite simple. The whole principle is adding three CAAnimation to a single view, including moving around, squeez in x direction and y direction. If you look into the bubble in iosgamecenter really carefully, the inside image is not really change, so I just use a screenshot and crop the part out side the circle. 

Usage:
Just Drag the bubbleView.swift to your project folder and create a UIView subclass in your desired viewcontroller or just Drag a new UIView in storyboard and set it to be the subclass of bubbleView. You can set the image of the bubble by thumbnail(UIImageView).
