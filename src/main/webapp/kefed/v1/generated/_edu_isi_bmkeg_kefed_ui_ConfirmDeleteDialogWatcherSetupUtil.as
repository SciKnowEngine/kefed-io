






package
{
import mx.core.IFlexModuleFactory;
import mx.binding.ArrayElementWatcher;
import mx.binding.FunctionReturnWatcher;
import mx.binding.IWatcherSetupUtil2;
import mx.binding.PropertyWatcher;
import mx.binding.RepeaterComponentWatcher;
import mx.binding.RepeaterItemWatcher;
import mx.binding.StaticPropertyWatcher;
import mx.binding.XMLWatcher;
import mx.binding.Watcher;

[ExcludeClass]
public class _edu_isi_bmkeg_kefed_ui_ConfirmDeleteDialogWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_ConfirmDeleteDialogWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.ConfirmDeleteDialog;
        (edu.isi.bmkeg.kefed.ui.ConfirmDeleteDialog).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_ConfirmDeleteDialogWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import flash.events.IEventDispatcher;
        import mx.containers.HBox;
        import mx.binding.BindingManager;
        import mx.managers.PopUpManager;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.managers.SystemManager;
        import mx.controls.Button;
        import mx.controls.Alert;
        import mx.rpc.events.ResultEvent;
        import mx.binding.IBindingClient;
        import mx.containers.TitleWindow;
        import mx.core.Application;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.controls.Text;
        import mx.events.CloseEvent;
        import mx.core.mx_internal;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import flash.events.EventDispatcher;
        import __AS3__.vec.Vector;
        import flash.events.Event;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[1]],
                                                                     propertyGetter
                                                                     , true
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[0]],
                                                                     propertyGetter
                                                                     , true
);


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        watchers[0].updateParent(target);

 





    }
}

}