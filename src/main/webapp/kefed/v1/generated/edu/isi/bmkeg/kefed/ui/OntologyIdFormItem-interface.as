
package edu.isi.bmkeg.kefed.ui
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
import mx.containers.VBox;
import mx.controls.Button;
import mx.controls.DataGrid;
import mx.controls.TileList;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.controls.Spacer;
import mx.containers.VBox;
import mx.containers.HBox;

public class OntologyIdFormItem extends mx.containers.VBox
{
	public function OntologyIdFormItem() {}

	[Bindable]
	public var termGrid : mx.controls.TileList;
	[Bindable]
	public var termList : mx.controls.DataGrid;
	[Bindable]
	public var searchTermButton : mx.controls.Button;
	[Bindable]
	public var removeTermButton : mx.controls.Button;
	[Bindable]
	public var clearTermButton : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/OntologyIdFormItem.mxml:10,72";

}}