
/**
 *  Generated by mxmlc 4.0
 *
 *  Package:    edu.isi.bmkeg.kefed.ui
 *  Class:      AllowedValuesListComponent
 *  Source:     /Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/AllowedValuesListComponent.mxml
 *  Template:   flex2/compiler/mxml/gen/ClassDef.vm
 *  Time:       2017.08.30 16:17:00 PDT
 */

package edu.isi.bmkeg.kefed.ui
{

import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.events.Event;
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
import mx.containers.HBox;
import mx.containers.VBox;
import mx.controls.Button;
import mx.controls.CheckBox;
import mx.controls.Spacer;
import mx.controls.TextInput;
import mx.controls.TileList;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.events.FlexEvent;
import mx.events.ListEvent;
import mx.styles.*;



//  begin class def
public class AllowedValuesListComponent
    extends mx.containers.VBox
    implements mx.binding.IBindingClient
{

    //  instance variables
    [Bindable]
	/**
 * @private
 **/
    public var allowOtherValuesBox : mx.controls.CheckBox;

    [Bindable]
	/**
 * @private
 **/
    public var allowedValuesAddButton : mx.controls.Button;

    [Bindable]
	/**
 * @private
 **/
    public var allowedValuesList : mx.controls.TileList;

    [Bindable]
	/**
 * @private
 **/
    public var allowedValuesRemoveButton : mx.controls.Button;

    [Bindable]
	/**
 * @private
 **/
    public var moveValueDownButton : mx.controls.Button;

    [Bindable]
	/**
 * @private
 **/
    public var moveValueUpButton : mx.controls.Button;

    [Bindable]
	/**
 * @private
 **/
    public var newValue : mx.controls.TextInput;

    [Bindable]
	/**
 * @private
 **/
    public var orderedBox : mx.controls.CheckBox;


    //  type-import dummies


    //  Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.VBox
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.controls.TileList
        ,
        id: "allowedValuesList"
        ,
        events: {
          change: "__allowedValuesList_change",
          creationComplete: "__allowedValuesList_creationComplete",
          doubleClick: "__allowedValuesList_doubleClick"
        }
        ,
        propertiesFactory: function():Object { return {
          percentHeight: 90.0,
          verticalScrollPolicy: "auto",
          percentWidth: 100.0,
          doubleClickEnabled: true
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.containers.HBox
        ,
        propertiesFactory: function():Object { return {
          percentWidth: 100.0,
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.controls.TextInput
              ,
              id: "newValue"
              ,
              events: {
                change: "__newValue_change"
              }
              ,
              propertiesFactory: function():Object { return {
                width: 100
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Button
              ,
              id: "allowedValuesAddButton"
              ,
              events: {
                click: "__allowedValuesAddButton_click"
              }
              ,
              propertiesFactory: function():Object { return {
                label: "+",
                enabled: false
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Spacer
              ,
              propertiesFactory: function():Object { return {
                width: 5
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Button
              ,
              id: "allowedValuesRemoveButton"
              ,
              events: {
                click: "__allowedValuesRemoveButton_click"
              }
              ,
              stylesFactory: function():void {
                this.fontWeight = "bold";
              }
              ,
              propertiesFactory: function():Object { return {
                label: "-",
                enabled: false
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Button
              ,
              id: "moveValueUpButton"
              ,
              events: {
                click: "__moveValueUpButton_click"
              }
              ,
              propertiesFactory: function():Object { return {
                label: "<",
                enabled: false,
                toolTip: "Move selected item up (earlier) in list"
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Button
              ,
              id: "moveValueDownButton"
              ,
              events: {
                click: "__moveValueDownButton_click"
              }
              ,
              propertiesFactory: function():Object { return {
                label: ">",
                enabled: false,
                toolTip: "Move selected item down (later) in list"
              }}
            })
          ]
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.containers.HBox
        ,
        propertiesFactory: function():Object { return {
          percentWidth: 100.0,
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.controls.CheckBox
              ,
              id: "allowOtherValuesBox"
              ,
              events: {
                change: "__allowOtherValuesBox_change"
              }
              ,
              propertiesFactory: function():Object { return {
                label: "Allow other values"
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Spacer
              ,
              propertiesFactory: function():Object { return {
                width: 10
              }}
            })
          ,
            new mx.core.UIComponentDescriptor({
              type: mx.controls.CheckBox
              ,
              id: "orderedBox"
              ,
              events: {
                change: "__orderedBox_change"
              }
              ,
              propertiesFactory: function():Object { return {
                label: "Ordered"
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
    public function AllowedValuesListComponent()
    {
        super();

        mx_internal::_document = this;


        var bindings:Array = _AllowedValuesListComponent_bindingsSetup();
        var watchers:Array = [];

        var target:Object = this;

        if (_watcherSetupUtil == null)
        {
            var watcherSetupUtilClass:Object = getDefinitionByName("_edu_isi_bmkeg_kefed_ui_AllowedValuesListComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
        }

        _watcherSetupUtil.setup(this,
                    function(propertyName:String):* { return target[propertyName]; },
                    function(propertyName:String):* { return AllowedValuesListComponent[propertyName]; },
                    bindings,
                    watchers);

        mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
        mx_internal::_watchers = mx_internal::_watchers.concat(watchers);


        // layer initializers

       
        // properties
        this.percentHeight = 100.0;
        this.percentWidth = 100.0;


        // events
        this.addEventListener("creationComplete", ___AllowedValuesListComponent_VBox1_creationComplete);


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
    //  <Script>, line 18 - 277

			import mx.controls.listClasses.ListBase;
			import mx.managers.PopUpManager;
			import mx.controls.listClasses.TileListItemRenderer;
			import mx.utils.StringUtil;
			import edu.isi.bmkeg.kefed.elements.KefedFullValueTemplate;
			import edu.isi.bmkeg.kefed.ui.UiUtil;
	import edu.isi.bmkeg.kefed.elements.KefedBaseValueTemplate;
	import mx.collections.ArrayCollection;
	import mx.binding.utils.BindingUtils;
	
	/** myType is the type description that will be modified.
	 */
	 [Bindable]
	 public var myType:KefedBaseValueTemplate;
	
	/** allowedValues is the collection of values that are
	 *  entered by this control
	 */
	[Bindable]
	public var allowedValues:ArrayCollection;
	
	/** Flag that controls whether other values besides those specified
	 *  is an option.  If false, then the allow other values checkbox
	 *  will not be displayed and that item cannot be changed.
	 */
	[Bindable]
	public var allowOtherValues:Boolean = true;
	
	/** allowOtherValuesFlagName is the name is of the flag field on myType
	 *  that records whether other values should be allowed for this collection.
	 *  It needs to be specified this way to allow updating through the
	 *  myType variable, since Boolean values aren't mutable.
	 */
	[Bindable]
	public var allowOtherValuesFlagName:String;
	
	/** Monotonic controls whether only monotonic changes are allowed
	 *  or whether all changes are allowed.  Monotonic changes only 
	 *  allow additional values to be added to the allowed values or
	 *  allowed units sections.  Removal of values are
	 *  prohibited when monotonic is <code>true</code>
	 */
	[Bindable]
	public var monotonic:Boolean = false;
	
	/** Flag that indicates whether this can be an ordered list
	 *  of items.  If true, then the items are in order and
	 *  controls for moving the order will be included.
	 */
	 [Bindable]
	 public var orderAllowed:Boolean = false;
	
	private var inputDialog:StringInputDialog = null;
	
	private function initComponent(evt:Event):void {
        newValue.addEventListener(KeyboardEvent.KEY_UP, keyHandler);
        handleListItemSelection(evt);
    }
    
    /** Handle change in checkbox value by setting field appropriately.
 	 *
	 * @param evt The event
     */
     private function changeAllowOthers(evt:Event):void {
     	var cbox:CheckBox = evt.target as CheckBox;
     	myType[allowOtherValuesFlagName] = cbox.selected;
     	if (cbox.selected) {
     		orderedBox.selected = false;
     		orderedBox.enabled = false;
     	} else {
     		orderedBox.enabled = true;
     	}
     }
     
    /** Handle change in checkbox value by setting field appropriately.
 	 *
	 * @param evt The event
     */
     private function changeOrdered(evt:Event):void {
     	var cbox:CheckBox = evt.target as CheckBox;
     	myType.orderedValues = cbox.selected;
     	if (cbox.selected) {
     		allowOtherValuesBox.selected = false;
     		allowOtherValuesBox.enabled = false;
     	} else {
     		allowOtherValuesBox.enabled = true;
     	}
     }
        
     
     
    private function keyHandler(event:KeyboardEvent):void {
    	if (event.keyCode == Keyboard.ENTER) {
       		addListItem(event);
     }
   	}
	
	/** React to changes in the input text box.  Use this to 
	 * enable and disable the add button.
	 * 
	 * @param evt The event triggering this change.
	 */
	 private function handleTextChange(evt:Event):void {
	 	var newText:String = StringUtil.trim(newValue.text);
	 	var hasInput:Boolean = newText.length > 0;
	 	var enableAdd:Boolean = hasInput && !allowedValues.contains(newText);
	 	allowedValuesAddButton.enabled = enableAdd;
	 }
	
  	/** Respond to changes in the template selection window by
	 *  enabling and disabling the action buttons that require a
	 *  selection.
	 *
	 * @param evt The event
	 */
	private function handleListItemSelection (evt:Event):void {
		var hasSelection:Boolean = (allowedValuesList.selectedIndex != -1);
		allowedValuesRemoveButton.enabled = !monotonic && hasSelection;
		var moveEnabledBase:Boolean = !monotonic && hasSelection && allowedValues.length > 1
		moveValueDownButton.enabled =  moveEnabledBase && allowedValuesList.selectedIndex < allowedValues.length - 1;
		moveValueUpButton.enabled = moveEnabledBase && allowedValuesList.selectedIndex > 0;
		// TODO: Decide if we should set the text input box to the value
		//       for this box or not.
//		if (hasSelection && !monotonic) {
//			newValue.text = allowedValuesList.selectedItem.toString();
//		} else {
//			newValue.text = "";
//		}
	}
	
	private function scrollToSelection(list:ListBase):void {
		list.scrollToIndex(list.selectedIndex);
	}

	/** Add a new row to the specified list object or edit the
	 *  value of a selected object.
 	 *
 	 *  TODO: Decide whther this should clear the input field or not.
 	 * 
	 * @param evt The event
	 */
    private function addListItem(evt:Event):void {
    	var newText:String = StringUtil.trim(newValue.text);
    		if (newText.length > 0 && !allowedValues.contains(newText)) {
     		allowedValues.addItem(newText);
    		UiUtil.adjustTileSizeForAddedItem(allowedValuesList, newText);
    		allowedValuesList.selectedIndex = allowedValues.length - 1;
    		// allowedValuesList.scrollToIndex(allowedValuesList.selectedIndex);
    		callLater(scrollToSelection, [allowedValuesList]);
  
      		allowedValuesAddButton.enabled = false; // Try not to add multiple identical strings.
    		newValue.text=""; // Clear value to make new input more efficient
    	}
    }
    
    
    /** Remove the selected row from the specified List's data provider.
     *   If nothing is selected, then do nothing.
 	 *
	 * @param evt The event
     */
     private function removeListItem(evt:Event):void {
     	var i:int = allowedValuesList.selectedIndex
	    if (!monotonic && i >= 0) {
	    	var removedItem:String = allowedValues.getItemAt(i) as String;
	    	allowedValues.removeItemAt(i);
	    	// TODO: Leave the selection at the same index unless
	    	// there aren't enough, in which case, move down.
	    	if (allowedValues.length > i) {  // More items, select next one
	    		allowedValuesList.selectedIndex = i;
	    		UiUtil.adjustTileSizeForRemovedItem(allowedValuesList, removedItem);
  		 		callLater(scrollToSelection, [allowedValuesList]);
 	    	} else if (allowedValues.length == 0) {  // Empty list, no selection
	    		allowedValuesList.selectedIndex = -1;
	  		} else { // Last item deleted, move down.
	    		allowedValuesList.selectedIndex = i -1;
	    		UiUtil.adjustTileSizeForRemovedItem(allowedValuesList, removedItem);
 		  		callLater(scrollToSelection, [allowedValuesList]);
 			}	
	    	handleTextChange(evt);
	    } else {
	    	allowedValuesRemoveButton.enabled = false;
	    }	    
     }
     
     /** Popup a dialog to edit the selected list item
      *  and store the results back into the field.  Update
      *  the size, if necessary.
      */
     private function editSelectedListItem(evt:Event):void {
     	if (allowedValuesList.selectedIndex != -1) {
     		inputDialog = PopUpManager.createPopUp(this,StringInputDialog,true) as StringInputDialog;
     		inputDialog.text = allowedValuesList.selectedItem as String;
     		inputDialog.enterConfirms = true;
     		inputDialog.addEventListener(Event.COMPLETE, finishEditItem);
     		inputDialog.addEventListener(Event.CANCEL, cancelEditItem);
     		PopUpManager.centerPopUp(inputDialog);
     	}
     }

	 private function finishEditItem(evt:Event):void {
		var originalText:String = allowedValuesList.selectedItem as String;
     	var newText:String = StringUtil.trim(inputDialog.input.text);
     	if (newText.length == 0) {
     		removeListItem(null);
     	} else if (originalText != newText) {
       		allowedValues.setItemAt(newText, allowedValuesList.selectedIndex);
     		// Use both of these, since this is based on rendered size
     		// which may not be the same as character count, depending on font.
     		UiUtil.adjustTileSizeForRemovedItem(allowedValuesList, originalText);
     		UiUtil.adjustTileSizeForAddedItem(allowedValuesList, newText); 
 	  		callLater(scrollToSelection, [allowedValuesList]);
      	}
     	PopUpManager.removePopUp(inputDialog);
	}
     
     private function cancelEditItem(evt:Event):void {
     	PopUpManager.removePopUp(inputDialog);
     }
     
     private function setSelectedIndex(list:ListBase, index:int):void {
     	list.selectedIndex = index;
     }
     
    /** Move the selected item to an earlier place on the list.
     * 
     * @param evt Button click event
     */
     private function moveValueUp(evt:Event):void {
     	var index:int = allowedValuesList.selectedIndex;
     	// Make sure we have a selection and a place to move it.
     	if (index != -1 && index > 0) {
     		var itemToMove:Object = allowedValues.removeItemAt(index);
     		allowedValues.addItemAt(itemToMove, index - 1);
     		callLater(setSelectedIndex, [allowedValuesList, index - 1]);
     	}
     }
     
    /** Move the selected item to an later place on the list.
     * 
     * @param evt Button click event
     */
     private function moveValueDown(evt:Event):void {
    	var index:int = allowedValuesList.selectedIndex;
     	// Make sure we have a selection and a place to move it.
     	if (index != -1 && index < allowedValues.length - 1) {
     		var itemToMove:Object = allowedValues.removeItemAt(index);
     		allowedValues.addItemAt(itemToMove, index + 1);
     		callLater(setSelectedIndex, [allowedValuesList, index + 1]); 
     	}    	
     }
     
     
     /** Function to show the event for debugging purposes.
     */
     private function showEvent(evt:Event):void {
     	trace("AllowedValuesList: " + evt + " type=" + evt.type + " target=" + evt.target);
     }
 		

    //  end scripts


    //  supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___AllowedValuesListComponent_VBox1_creationComplete(event:mx.events.FlexEvent):void
{
	initComponent(event)
}

/**
 * @private
 **/
public function __allowedValuesList_change(event:mx.events.ListEvent):void
{
	handleListItemSelection(event)
}

/**
 * @private
 **/
public function __allowedValuesList_creationComplete(event:mx.events.FlexEvent):void
{
	UiUtil.adjustTileSizeToFit(allowedValuesList)
}

/**
 * @private
 **/
public function __allowedValuesList_doubleClick(event:flash.events.MouseEvent):void
{
	editSelectedListItem(event)
}

/**
 * @private
 **/
public function __newValue_change(event:flash.events.Event):void
{
	handleTextChange(event)
}

/**
 * @private
 **/
public function __allowedValuesAddButton_click(event:flash.events.MouseEvent):void
{
	addListItem(event);
}

/**
 * @private
 **/
public function __allowedValuesRemoveButton_click(event:flash.events.MouseEvent):void
{
	removeListItem(event);
}

/**
 * @private
 **/
public function __moveValueUpButton_click(event:flash.events.MouseEvent):void
{
	moveValueUp(event)
}

/**
 * @private
 **/
public function __moveValueDownButton_click(event:flash.events.MouseEvent):void
{
	moveValueDown(event)
}

/**
 * @private
 **/
public function __allowOtherValuesBox_change(event:flash.events.Event):void
{
	changeAllowOthers(event)
}

/**
 * @private
 **/
public function __orderedBox_change(event:flash.events.Event):void
{
	changeOrdered(event)
}


    //  binding mgmt
    private function _AllowedValuesListComponent_bindingsSetup():Array
    {
        var result:Array = [];

        result[0] = new mx.binding.Binding(this,
            null,
            null,
            "allowedValuesList.dataProvider"
            , "allowedValues");

        result[1] = new mx.binding.Binding(this,
            null,
            null,
            "allowOtherValuesBox.visible"
            , "allowOtherValues");

        result[2] = new mx.binding.Binding(this,
            function():Boolean
            {

                return (myType[allowOtherValuesFlagName]);
            },
            null,
            "allowOtherValuesBox.selected"
            );

        result[3] = new mx.binding.Binding(this,
            function():Boolean
            {

                return (myType.orderedValues);
            },
            null,
            "orderedBox.selected"
            );

        result[4] = new mx.binding.Binding(this,
            null,
            null,
            "orderedBox.visible"
            , "orderAllowed");


        return result;
    }


    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil2):void
    {
        (AllowedValuesListComponent)._watcherSetupUtil = watcherSetupUtil;
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