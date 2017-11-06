
/**
 *  Generated by mxmlc 4.0
 *
 *  Package:    edu.isi.bmkeg.kefed.ui.kapit
 *  Class:      DiagramZoomHSlider
 *  Source:     /Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/kapit/DiagramZoomHSlider.mxml
 *  Template:   flex2/compiler/mxml/gen/ClassDef.vm
 *  Time:       2017.08.30 16:17:00 PDT
 */

package edu.isi.bmkeg.kefed.ui.kapit
{

import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.filters.*;
import flash.geom.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.controls.HSlider;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.events.SliderEvent;
import mx.styles.*;



//  begin class def
public class DiagramZoomHSlider
    extends mx.controls.HSlider
{

    //  instance variables

    //  type-import dummies



    //  constructor (Flex display object)
    /**
     * @private
     **/
    public function DiagramZoomHSlider()
    {
        super();





        // layer initializers

       
        // properties
        this.minimum = 0;
        this.maximum = 1.7;
        this.tickInterval = 1;
        this.value = 1;
        this.dataTipFormatFunction = logZoomDataTip;


        // events
        this.addEventListener("change", ___DiagramZoomHSlider_HSlider1_change);




    }

    /**
     * @private
     **/ 
    private var __moduleFactoryInitialized:Boolean = false;

    /**
     * @private
     * Override the module factory so we can defer setting style declarations
     * until a module factory is set. Without the correct module factory set
     * the style declaration will end up in the wrong style manager.
     **/ 
    override public function set moduleFactory(factory:IFlexModuleFactory):void
    {
        super.moduleFactory = factory;
        
        if (__moduleFactoryInitialized)
            return;

        __moduleFactoryInitialized = true;


        // our style settings



                         
    }
 
    //  initialize()
    /**
     * @private
     **/
    override public function initialize():void
    {


        super.initialize();
    }


    //  scripts
    //  <Script>, line 14 - 62

			import com.kapit.diagram.view.DiagramView;
			import mx.controls.sliderClasses.Slider;
			import mx.events.SliderEvent;
			
			[Bindable]
			public var diagram:DiagramView = null;
			
			/** Compute the logarithmic zoom factor.
			 * 
			 * @param x The number
			 * @return 10^x / 10
			 */
			 private function logZoom(x:Number):Number {
	        	return Math.pow(10,x) / 10;
	        }
	        
			/** Provide a tool tip showing the current zoom value as a scale factor
			 * 
			 * @param val The raw value of the zoom
			 * @return The scaled zoom factor
			 */
		    private function logZoomDataTip(val:String):String {
	        	var x:Number = new Number(val);
	        	var y:Number = logZoom(x);
	        	y = Math.round(10*y) / 10;
	        	return "x" + String(y);
	        }
	
			/** Zoom the diagram based on the slider control value.
			 * 
			 * @param event The slider change event
			 */
	        private function zoomDiagram(event:SliderEvent): void {
				var currentSlider:Slider=Slider(event.currentTarget);
				setZoom(currentSlider.value);
	        }
	        
	        /** Set the zoom value and zoom the diagram.  The zoomLevel
	         *  is set logarithmically.
	         * 
	         *  @param zoomLevel The new zoom leve to set.
	         */
	        public function setZoom(zoomLevel:Number):void {
	        	value = zoomLevel;
	        	var z:Number = logZoom(zoomLevel);
	        	diagram.centeredZoom(z, false);
	        }
		

    //  end scripts


    //  supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___DiagramZoomHSlider_HSlider1_change(event:mx.events.SliderEvent):void
{
	zoomDiagram(event)
}





    //  embed carrier vars
    //  end embed carrier vars


//  end class def
}

//  end package def
}