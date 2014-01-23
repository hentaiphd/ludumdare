/*
    This file is part of Ladylike's source.

    Ladylike's source is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Ladylike's source is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with Ladylike's source. If not, see <http://www.gnu.org/licenses/>.
*/

package
{
    import org.flixel.*;

    public class Egg extends FlxSprite{
        [Embed(source="../assets/EggSprite.png")] private var img:Class;

        public var held:Boolean = false;

        public function Egg(x:int, y:int):void{
            super(x, y);

            loadGraphic(img, true, true, 40, 36, true);
            frameWidth = 40;
            frameHeight = 36;
            width = 40;

            addAnimation("whole", [0]);
            addAnimation("break", [1, 2, 3, 4], 5, false);

            play("whole");

            immovable = true;
        }
    }
}
