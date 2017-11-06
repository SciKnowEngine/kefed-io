
/**
 *  Generated by mxmlc 4.0
 *
 *  Package:    edu.isi.bmkeg.kefed.ui.persevere
 *  Class:      PersevereJSONForm
 *  Source:     /Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/persevere/PersevereJSONForm.mxml
 *  Template:   flex2/compiler/mxml/gen/ClassDef.vm
 *  Time:       2017.08.30 16:17:01 PDT
 */

package edu.isi.bmkeg.kefed.ui.persevere
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
import mx.containers.Form;
import mx.containers.FormHeading;
import mx.containers.FormItem;
import mx.containers.HBox;
import mx.controls.Button;
import mx.controls.Label;
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
import mx.events.FlexEvent;
import mx.styles.*;



//  begin class def
public class PersevereJSONForm
    extends mx.containers.Form
    implements mx.binding.IBindingClient
{

    //  instance variables
    [Bindable]
	/**
 * @private
 **/
    public var cancelButton : mx.controls.Button;

    [Bindable]
	/**
 * @private
 **/
    public var checkButton : mx.controls.Button;

    [Bindable]
	/**
 * @private
 **/
    public var codeBox : mx.controls.TextArea;

    [Bindable]
	/**
 * @private
 **/
    public var insertButton : mx.controls.Button;

    [Bindable]
	/**
 * @private
 **/
    public var message : mx.controls.Label;

    [Bindable]
	/**
 * @private
 **/
    public var saveButton : mx.controls.Button;


    //  type-import dummies


    //  Container document descriptor
private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.containers.Form
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.containers.FormHeading
        ,
        propertiesFactory: function():Object { return {
          label: "Generic Persevere Interface"
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.containers.FormItem
        ,
        propertiesFactory: function():Object { return {
          direction: "horizontal",
          percentHeight: 100.0,
          percentWidth: 100.0,
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.controls.TextArea
              ,
              id: "codeBox"
              ,
              events: {
                valueCommit: "__codeBox_valueCommit"
              }
              ,
              propertiesFactory: function():Object { return {
                percentHeight: 100.0,
                percentWidth: 100.0
              }}
            })
          ]
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.containers.FormItem
        ,
        propertiesFactory: function():Object { return {
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.containers.HBox
              ,
              propertiesFactory: function():Object { return {
                childDescriptors: [
                  new mx.core.UIComponentDescriptor({
                    type: mx.controls.Button
                    ,
                    id: "checkButton"
                    ,
                    events: {
                      click: "__checkButton_click"
                    }
                    ,
                    propertiesFactory: function():Object { return {
                      label: "Check"
                    }}
                  })
                ,
                  new mx.core.UIComponentDescriptor({
                    type: mx.controls.Button
                    ,
                    id: "insertButton"
                    ,
                    events: {
                      click: "__insertButton_click"
                    }
                    ,
                    propertiesFactory: function():Object { return {
                      label: "Insert"
                    }}
                  })
                ,
                  new mx.core.UIComponentDescriptor({
                    type: mx.controls.Button
                    ,
                    id: "saveButton"
                    ,
                    events: {
                      click: "__saveButton_click"
                    }
                    ,
                    propertiesFactory: function():Object { return {
                      label: "Save"
                    }}
                  })
                ,
                  new mx.core.UIComponentDescriptor({
                    type: mx.controls.Button
                    ,
                    id: "cancelButton"
                    ,
                    events: {
                      click: "__cancelButton_click"
                    }
                    ,
                    propertiesFactory: function():Object { return {
                      label: "Cancel"
                    }}
                  })
                ]
              }}
            })
          ]
        }}
      })
    ,
      new mx.core.UIComponentDescriptor({
        type: mx.containers.FormItem
        ,
        propertiesFactory: function():Object { return {
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.controls.Label
              ,
              id: "message"
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
    public function PersevereJSONForm()
    {
        super();

        mx_internal::_document = this;


        var bindings:Array = _PersevereJSONForm_bindingsSetup();
        var watchers:Array = [];

        var target:Object = this;

        if (_watcherSetupUtil == null)
        {
            var watcherSetupUtilClass:Object = getDefinitionByName("_edu_isi_bmkeg_kefed_ui_persevere_PersevereJSONFormWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
        }

        _watcherSetupUtil.setup(this,
                    function(propertyName:String):* { return target[propertyName]; },
                    function(propertyName:String):* { return PersevereJSONForm[propertyName]; },
                    bindings,
                    watchers);

        mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
        mx_internal::_watchers = mx_internal::_watchers.concat(watchers);


        // layer initializers

       
        // properties
        this.percentWidth = 100.0;
        this.percentHeight = 100.0;


        // events
        this.addEventListener("preinitialize", ___PersevereJSONForm_Form1_preinitialize);


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
    //  <Script>, line 10 - 166

        import edu.isi.bmkeg.kefed.elements.KefedExperiment;
        import edu.isi.bmkeg.kefed.elements.KefedModel;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import edu.isi.bmkeg.kefed.store.DataStoreEvent;
        import edu.isi.bmkeg.kefed.store.IDataStore;
        import edu.isi.bmkeg.kefed.store.IModelStore;
        import edu.isi.bmkeg.kefed.store.ModelStoreEvent;
        import edu.isi.bmkeg.kefed.store.json.JSONSerializer;
        import edu.isi.bmkeg.kefed.ui.UiUtil;

        import mx.collections.ArrayCollection;
        import mx.controls.Alert;
        import mx.core.FlexGlobals;
        import mx.rpc.events.FaultEvent;

        [Bindable]
        private var jsonCode:String = "";

        [Bindable]
        public var myObject:KefedObject;

        [Bindable]
        public var model:KefedModel = new KefedModel();

        [Bindable]
        public var templateList:ArrayCollection = new ArrayCollection();

        [Bindable]
        public var dataTable:ArrayCollection;

        [Bindable]
        public var modelStore:IModelStore;

        [Bindable]
        public var dataStore:IDataStore;

        [Bindable]
        private var messageText:String = "";

        private var toInsert:int = 0;
        private var inserted:int = 0;
        private var toAdd:int = 0;
        private var added:int = 0;

        public function preinit():void {
            modelStore.addEventListener(ModelStoreEvent.INSERT, handleInsert);
            modelStore.addEventListener(ModelStoreEvent.SAVE, handleSave);
//        	modelStore.addEventListener(ModelStoreEvent.LIST, handleListModel);
            modelStore.addEventListener(FaultEvent.FAULT, callError);

            dataStore.addEventListener(DataStoreEvent.INSERT, handleInsert);
            dataStore.addEventListener(DataStoreEvent.SAVE, handleSave);
            dataStore.addEventListener(FaultEvent.FAULT, callError);

            modelStore.listModels();
        }

        private function getModels(source:String):ArrayCollection {
            var models:ArrayCollection = new ArrayCollection();
            for each (var o:Object in JSONSerializer.deserializeJsonList(source)) {
                if (o.utype == "KefedExperiment") {
                    models.addItem(JSONSerializer.deserializeKefedExperimentFromObject(o));
                } else if (o.utype == "KefedModel" || o.utype == null) {
                    models.addItem(JSONSerializer.deserializeKefedModelListFromObject(o));
                } else {
                    trace("Unknown object ", o);
                    Alert.show("Don't know how to handle object " + o.toString(), "Error");
                }
            }
            return models;
        }

        private function checkCurrentModel():void {
            var models:ArrayCollection = getModels(codeBox.text);
            messageText = models.length + " model(s)";
            Alert.show(models.length + " " + models.toString());
        }

        private function insertOneModel(model:Object):void {
            if (model is KefedExperiment) {
                dataStore.insertData(model as KefedExperiment);
            } else if (model is KefedModel) {
                modelStore.insertModel(model as KefedModel);
            }
        }

        private function insertModel():void {
            var models:ArrayCollection = getModels(codeBox.text);
            toInsert = models.length;
            inserted = 0;
            for each (var model:Object in models) {
                insertOneModel(model);
            }
        }

        private function handleInsert(e:Event):void {
            inserted++;
            trace("Inserted #", inserted, e.toString());
            messageText = "Inserted " + inserted + " of " + toInsert + " model(s)";
//			Alert.show(e.toString());
        }

        private function saveOneModel(model:Object):void {
            if (model is KefedExperiment) {
                dataStore.saveData(model as KefedExperiment);
            } else if (model is KefedModel) {
                modelStore.saveModel(model as KefedModel);
            }
        }

        private function saveModel():void {
            var models:ArrayCollection = getModels(codeBox.text);
            toAdd = models.length;
            added = 0;
            for each (var model:Object in models) {
                saveOneModel(model);
            }
        }

        private function handleSave(e:Event):void {
            added++;
            trace("Saved #", added, e.toString());
            messageText = "Saved " + added + " of " + toAdd + " model(s)";
            // Alert.show(e.toString());
        }

        private function callError(e:FaultEvent):void {
            trace("Error", UiUtil.getFaultURL(e) + " " + e.message.toString());
            messageText = "Error " + UiUtil.getFaultURL(e) + " " + e.message.toString();
//			Alert.show(UiUtil.getFaultURL(event) + "\n" + e.message.toString(), "Error");

        }

        private function cancel():void {
            FlexGlobals.topLevelApplication.currentState = "Dashboard_State";
        }


        //		private function handleListModel(event:ModelStoreEvent):void {
        //
        //			templateList = new ArrayCollection();
        //
        //			templateList.addItem("Template");
        //
        //			for(var i:int=0; i<event.modelList.length; i++) {
        //				var modelName:String = event.modelList[i].modelName;
        //				if(modelName != null && modelName.length > 0) {
        //					templateList.addItem(modelName);
        //				}
        //			}
        //
        //			selectType.data = templateList;
        //			selectType.selectedItem = "Template";
        //
        //		}
        

    //  end scripts


    //  supporting function definitions for properties, events, styles, effects
/**
 * @private
 **/
public function ___PersevereJSONForm_Form1_preinitialize(event:mx.events.FlexEvent):void
{
	preinit();
}

/**
 * @private
 **/
public function __codeBox_valueCommit(event:mx.events.FlexEvent):void
{
	messageText = '';
}

/**
 * @private
 **/
public function __checkButton_click(event:flash.events.MouseEvent):void
{
	checkCurrentModel();
}

/**
 * @private
 **/
public function __insertButton_click(event:flash.events.MouseEvent):void
{
	insertModel();
}

/**
 * @private
 **/
public function __saveButton_click(event:flash.events.MouseEvent):void
{
	saveModel();
}

/**
 * @private
 **/
public function __cancelButton_click(event:flash.events.MouseEvent):void
{
	cancel();
}


    //  binding mgmt
    private function _PersevereJSONForm_bindingsSetup():Array
    {
        var result:Array = [];

        result[0] = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (this.jsonCode);
                return (result == undefined ? null : String(result));
            },
            null,
            "codeBox.text"
            );

        result[1] = new mx.binding.Binding(this,
            function():String
            {
                var result:* = (messageText);
                return (result == undefined ? null : String(result));
            },
            null,
            "message.text"
            );


        return result;
    }


    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil2):void
    {
        (PersevereJSONForm)._watcherSetupUtil = watcherSetupUtil;
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