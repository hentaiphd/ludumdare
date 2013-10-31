package
{
    import org.flixel.*;

    public class DoorState extends FlxState{
        [Embed(source = '../assets/doorclose.mp3')] public static var sndDoorClose:Class;

        public var timeFrame:Number = 0;
        public var timeSec:Number = 0;

        override public function create():void
        {
            var t:FlxText;
            t = new FlxText(0,FlxG.height/2-10,FlxG.width,"GET OUT OF THE CAR");
            t.size = 16;
            t.alignment = "center";
            add(t);
            FlxG.play(sndDoorClose);
        }

        override public function update():void
        {
            super.update();
            timeFrame++;

            if(timeFrame%100 == 0){
                timeSec++;
            }

            if(timeSec == 2){
                FlxG.switchState(new RoadState());
            }

        }
    }
}