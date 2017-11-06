
/**
 *  Generated by mxmlc 4.0
 *
 *  Package:    edu.isi.bmkeg.kefed.ui
 *  Class:      TextDisplayDialog
 *  Source:     /Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/TextDisplayDialog.mxml
 *  Template:   flex2/compiler/mxml/gen/ClassDef.vm
 *  Time:       2017.08.30 16:17:01 PDT
 */

package edu.isi.bmkeg.kefed.ui
{

import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.events.MouseEvent;
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
import mx.binding.IBindingClient;
import mx.containers.TitleWindow;
import mx.containers.VBox;
import mx.controls.Button;
import mx.controls.TextArea;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.styles.*;



//  begin class def
public class TextDisplayDialog
    extends mx.containers.TitleWindow
    implements mx.binding.IBindingClient
{

    //  instance variables
    [Bindable]
	/**
 * @private
 **/
    public var content : mx.controls.TextArea;


    //  type-import dummies


    //  Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.TitleWindow
  ,
  propertiesFactory: function():Object { return {
    width: 550,
    height: 400,
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.containers.VBox
        ,
        propertiesFactory: function():Object { return {
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.controls.TextArea
              ,
              id: "content"
              ,
              propertiesFactory: function():Object { return {
                width: 525,
                height: 325,
                wordWrap: false
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Button
              ,
              events: {
                click: "___TextDisplayDialog_Button1_click"
              }
              ,
              propertiesFactory: function():Object { return {
                label: "Close"
              }}
            })
          ]
        }}
      })
    ]
  }}
})

    //  constructor (Flex display object)
    /**
     * @private
     **/
    public function TextDisplayDialog()
    {
        super();

        mx_internal::_document = this;


        var bindings:Array = _TextDisplayDialog_bindingsSetup();
        var watchers:Array = [];

        var target:Object = this;

        if (_watcherSetupUtil == null)
        {
            var watcherSetupUtilClass:Object = getDefinitionByName("_edu_isi_bmkeg_kefed_ui_TextDisplayDialogWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
        }

        _watcherSetupUtil.setup(this,
                    function(propertyName:String):* { return target[propertyName]; },
                    function(propertyName:String):* { return TextDisplayDialog[propertyName]; },
                    bindings,
                    watchers);

        mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
        mx_internal::_watchers = mx_internal::_watchers.concat(watchers);


        // layer initializers

       
        // properties
        this.layout = "absolute";
        this.width = 550;
        this.height = 400;


        // events


        for (var i:uint = 0; i < bindings.length; i++)
        {
            Binding(bindings[i]).execute();
        }


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
        mx_internal::setDocumentDescriptor(_documentDescriptor_);


        super.initialize();
    }


    //  scripts
    //  <Script>, line 8 - 13

		 	import mx.managers.PopUpManager;
	 	
	 		[Bindable]
	 		public var displayText:String = "<default>";
	 	

    //  end scripts


    //  supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___TextDisplayDialog_Button1_click(event:flash.events.MouseEvent):void
{
	PopUpManager.removePopUp(this);
}


    //  binding mgmt
    private function _TextDisplayDialog_bindingsSetup():Array
    {
        var result:Array = [];

        result[0] = new mx.binding.Binding(this,
            null,
            null,
            "content.text"
            , "displayText");


        return result;
    }


    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil2):void
    {
        (TextDisplayDialog)._watcherSetupUtil = watcherSetupUtil;
    }

    private static var _watcherSetupUtil:IWatcherSetupUtil2;



    //  embed carrier vars
    //  end embed carrier vars

    //  binding management vars
    /**
     * @private
     **/
    mx_internal var _bindings : Array = [];
    /**
     * @private
     **/
    mx_internal var _watchers : Array = [];
    /**
     * @private
     **/
    mx_internal var _bindingsByDestination : Object = {};
    /**
     * @private
     **/
    mx_internal var _bindingsBeginWithWord : Object = {};

//  end class def
}

//  end package def
}