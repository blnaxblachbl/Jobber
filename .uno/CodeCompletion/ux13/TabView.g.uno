[Uno.Compiler.UxGenerated]
public partial class TabView: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly TabView __parent;
        [Uno.WeakReference] internal readonly TabView __parentInstance;
        public Template(TabView parent, TabView parentInstance): base("side", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::SideView(__parent.sideRouter);
            __self.Name = __selector0;
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "side";
    }
    [global::Uno.UX.UXGlobalResource("FontAwesome")] public static readonly Fuse.Font FontAwesome;
    internal global::Fuse.Navigation.Router sideRouter;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "sideRouter"
    };
    static TabView()
    {
        FontAwesome = new global::Fuse.Font(new global::Uno.UX.BundleFileSource(import("../../../assets/FontAwesome.otf")));
        global::Uno.UX.Resource.SetGlobalKey(FontAwesome, "FontAwesome");
    }
    [global::Uno.UX.UXConstructor]
    public TabView(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.JavaScript(__g_nametable);
        sideRouter = new global::Fuse.Navigation.Router();
        var temp1 = new global::Fuse.Controls.Navigator();
        var side = new Template(this, this);
        temp.Code = "\n        var innerLink = function(){\n            router.pushRelative(innerNav, \"innerPage2\");\n        }\n        module.exports = {\n            innerLink: innerLink\n        };\n    ";
        temp.LineNumber = 3;
        temp.FileName = "components/TabView/TabView.ux";
        sideRouter.Name = __selector0;
        temp1.DefaultPath = "side";
        temp1.Templates.Add(side);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(sideRouter);
        this.Children.Add(temp);
        this.Children.Add(sideRouter);
        this.Children.Add(temp1);
    }
    static global::Uno.UX.Selector __selector0 = "sideRouter";
}
