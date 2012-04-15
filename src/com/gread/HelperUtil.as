package com.gread
{
   import com.gread.flash.components.ButtonComponent;
   import com.gread.flash.graphics.LineGraphic;
   
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.media.Sound;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.Font;

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
	  
	  public static function CreateRectagleGraphic(parentObj:DisplayObjectContainer = null, xVal:Number=0, yVal:Number=0, widthVal:Number=0, 
												 heightVal:Number=0, lineThicknessVal:Number = 1, lineAlphaVal:Number=1, alphaVal:Number=1, 
												 colorVal:uint=0x000000, lineColorVal:uint=0x000000, rotationVal:Number=0,
												 isXCenter:Boolean = false, isYCenter:Boolean = false):Sprite{
			var spriteGraphic:Sprite = new Sprite();
			
			spriteGraphic.graphics.lineStyle(lineThicknessVal, lineColorVal, lineAlphaVal);
			spriteGraphic.graphics.beginFill(colorVal, alphaVal);
			
			if(isXCenter){ xVal = -widthVal / 2; }
			if(isYCenter){ yVal = -heightVal / 2; }
			
			spriteGraphic.graphics.drawRect(xVal, yVal, widthVal, heightVal);
			spriteGraphic.graphics.endFill();
			
			spriteGraphic.rotation = rotationVal;
			
			if(parentObj){
				parentObj.addChild(spriteGraphic);
			}
			
			return spriteGraphic;
		}
	  public static function CreateSimpleTextField(parentObj:DisplayObjectContainer = null, textVal:String = "text", color:uint = 0x000000,
								   fontSize:Number = 12, fontName:String = "Arial", xVal:Number=0, yVal:Number=0):TextField{
			var textFormat:TextFormat = new TextFormat(fontName, fontSize, color);
			
			var text:TextField = new TextField();
			text.defaultTextFormat = textFormat;
			text.text = textVal;
			text.autoSize = TextFieldAutoSize.LEFT;
			
			//var textFormat:TextFormat = new TextFormat(fontName, fontSize, color);
			//text.setTextFormat(textFormat);
			
			if(parentObj){
				parentObj.addChild(text);;
			}
			
			return text;
		}
		
		public static function CreateSimpleTextFieldEmbeddedFont(parentObj:DisplayObjectContainer = null, textVal:String = "text",
													 embeddedfont:Font = null, color:uint = 0x000000,
													 fontSize:Number = 12, xVal:Number=0, yVal:Number=0):TextField{
			var text:TextField = new TextField();
			text.text = textVal;
			text.embedFonts = true; 
			text.autoSize = TextFieldAutoSize.LEFT;
			
			var textFormat:TextFormat = new TextFormat();
			textFormat.font = embeddedfont.fontName;
			textFormat.color = color;
			textFormat.size = fontSize;
			
			text.setTextFormat(textFormat);
			
			if(parentObj){
				parentObj.addChild(text);;
			}
			
			return text;
		}	
      
	  public static function justPlaySound(url:String) : void {
         
		var sound:Sound = new Sound(new URLRequest(url));
        sound.play();
        
		return;
      }
   }
}
