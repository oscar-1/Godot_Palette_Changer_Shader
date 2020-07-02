# Godot Palette Changer Shader

![image](https://github.com/oscar-1/Godot_Palette_Changer_Shader/blob/master/Images/Sprite%20changed.png?raw=true?raw=true)

This shader allows to change the palette of a sprite. I needed a way to use the same sprite but with different colors. I the past this was a very easy task thanks to the indexed color format for the images, used to save memory. Every pixel was a reference to a color in a palette. So you just had to change the colors of the palette. Sadly I didn't found a easy way of emulating this. So I've made a very simple shader to get the same effect.

I haven't spent so much time trying to work around the limitations of the Godot shader language. So the shader has a fixed capacity of changing 8 colors, that I think could be enough for the most of retro games, which have limited palettes.

![image](https://github.com/oscar-1/Godot_Palette_Changer_Shader/blob/master/Images/Controls.png?raw=true?raw=true)

You have to choose pairs of colors. The old and the new, the former is the color that you want to change, and the second is the one you want instead. You can pick the color with the color picker tool, using the dropper in the screen. Or you can do it programatically.

Tolerance control is neccesary due the shaders works with float numbers for color. So sometimes it's imposible to match the exact color to change. It also allows you to select similar colors in the image.

Just create a ColorRect node and apply this shader to it. The shader itself is in the PaletteChanger.shader file.
