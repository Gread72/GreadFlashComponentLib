package com.gread{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	
	
	public class DisplayObjectHelper{
		
		public static function removeChildElement(parent:DisplayObjectContainer, childReference:DisplayObject):void{
			for(var i:Number = 0; i < parent.numChildren; i++){
				if(parent.getChildAt( i ) == childReference){
					parent.removeChildAt( i );
				}
			}
		}
		
		public static function removeAllChildrenElements(parent:DisplayObjectContainer):void{
			for(var i:Number = parent.numChildren; i >= parent.numChildren; i--){
				parent.removeChildAt( i );
			}
		}
	}
}