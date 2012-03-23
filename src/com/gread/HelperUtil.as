package com.gread
{
   import com.gread.flash.components.ButtonComponent;
   import com.gread.flash.graphics.LineGraphic;
   
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.media.Sound;
   import flash.net.URLRequest;
   import flash.text.TextFormat;

   public class HelperUtil extends Object
   {
      public function HelperUtil() {
         super()
         return;
      }
	  
      public static function createLineElement( parent:DisplayObjectContainer, xVal:Number, yVal:Number, 
											    widthVal:Number, heightVal:Number, alphaVal:Number, 
									   		    colorVal:uint, rotationVal:Number) : Sprite {
         var graphic:LineGraphic = new LineGraphic(parent, xVal, yVal, 1, heightVal, alphaVal, colorVal, rotationVal);
         graphic.create();
         return graphic.element;
      }
      
	  public static function createButton( parent:DisplayObjectContainer, xVal:Number, yVal:Number, textVal:String) : ButtonComponent {
          var button:ButtonComponent = new ButtonComponent(parent,xVal,yVal,200,30);
          button.text = textVal;
         
		 button.textFormat = new TextFormat("Times",16);
		 button.create();
         
		 return button;
      }
      
	  public static function justPlaySound(url:String) : void {
         
		var sound:Sound = new Sound(new URLRequest(url));
        sound.play();
        
		return;
      }
   }
}
