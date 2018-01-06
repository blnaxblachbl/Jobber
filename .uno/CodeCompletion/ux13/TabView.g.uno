[Uno.Compiler.UxGenerated]
public partial class TabView: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly TabView __parent;
        [Uno.WeakReference] internal readonly TabView __parentInstance;
        public Template(TabView parent, TabView parentInstance): base("Dot", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<Fuse.Visual> temp_Target_inst;
        global::Uno.UX.Property<string> temp1_Value_inst;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Panel();
            var temp = new global::Fuse.Navigation.NavigateTo();
            temp_Target_inst = new Jobber_FuseNavigationNavigateTo_Target_Property(temp, __selector0);
            var temp2 = new global::Fuse.Navigation.PageExpression("Visual");
            var temp1 = new global::Fuse.Controls.Text();
            temp1_Value_inst = new Jobber_FuseControlsTextControl_Value_Property(temp1, __selector1);
            var temp3 = new global::Fuse.Navigation.PageExpression("Title");
            var temp4 = new global::Fuse.Navigation.ActivatingAnimation();
            var temp5 = new global::Fuse.Animations.Scale();
            var temp6 = new global::Fuse.Gestures.Clicked();
            var temp7 = new global::Fuse.Reactive.DataBinding(temp_Target_inst, temp2, Fuse.Reactive.BindingMode.Default);
            var temp8 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp3, Fuse.Reactive.BindingMode.Default);
            __self.Height = new Uno.UX.Size(45f, Uno.UX.Unit.Unspecified);
            __self.Name = __selector2;
            temp4.Animators.Add(temp5);
            temp5.Factor = 1.1f;
            temp6.Actions.Add(temp);
            temp6.Bindings.Add(temp7);
            temp1.FontSize = 10f;
            temp1.TextAlignment = Fuse.Controls.TextAlignment.Center;
            temp1.Alignment = Fuse.Elements.Alignment.BottomCenter;
            temp1.Bindings.Add(temp8);
            __self.Children.Add(temp4);
            __self.Children.Add(temp6);
            __self.Children.Add(temp1);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Target";
        static global::Uno.UX.Selector __selector1 = "Value";
        static global::Uno.UX.Selector __selector2 = "Dot";
    }
    internal global::Fuse.Controls.PageControl loggedInNavigation;
    internal global::Fuse.Controls.Page ads;
    internal global::Fuse.Controls.Page addAds;
    internal global::Fuse.Controls.Page favorite;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "loggedInNavigation",
        "ads",
        "addAds",
        "favorite"
    };
    static TabView()
    {
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
        loggedInNavigation = new global::Fuse.Controls.PageControl();
        var temp = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp1 = new global::Fuse.Controls.DockPanel();
        ads = new global::Fuse.Controls.Page();
        var temp2 = new global::Fuse.Resources.ResourceString();
        var temp3 = new global::AdsPage();
        addAds = new global::Fuse.Controls.Page();
        var temp4 = new global::Fuse.Resources.ResourceString();
        var temp5 = new global::AddAdsPage();
        favorite = new global::Fuse.Controls.Page();
        var temp6 = new global::Fuse.Resources.ResourceString();
        var temp7 = new global::FavoritePage();
        var temp8 = new global::Fuse.Controls.PageIndicator(loggedInNavigation);
        var temp9 = new global::Fuse.Effects.DropShadow();
        var temp10 = new global::Fuse.Layouts.GridLayout();
        var Dot = new Template(this, this);
        temp.Code = "\n        var innerLink = function(){\n            router.pushRelative(innerNav, \"innerPage2\");\n        }\n        module.exports = {\n            innerLink: innerLink\n        };\n    ";
        temp.LineNumber = 2;
        temp.FileName = "components/TabView/TabView.ux";
        temp1.Children.Add(loggedInNavigation);
        temp1.Children.Add(temp8);
        loggedInNavigation.Interaction = Fuse.Controls.NavigationControlInteraction.None;
        loggedInNavigation.Name = __selector0;
        loggedInNavigation.Children.Add(ads);
        loggedInNavigation.Children.Add(addAds);
        loggedInNavigation.Children.Add(favorite);
        ads.Name = __selector1;
        ads.Children.Add(temp2);
        ads.Children.Add(temp3);
        temp2.Key = "Title";
        temp2.Value = "Обьявления";
        addAds.Name = __selector2;
        addAds.Children.Add(temp4);
        addAds.Children.Add(temp5);
        temp4.Key = "Title";
        temp4.Value = "Добавить обьявление";
        favorite.Name = __selector3;
        favorite.Children.Add(temp6);
        favorite.Children.Add(temp7);
        temp6.Key = "Title";
        temp6.Value = "Избранные";
        temp8.Color = float4(1f, 1f, 1f, 1f);
        temp8.Height = new Uno.UX.Size(60f, Uno.UX.Unit.Unspecified);
        global::Fuse.Controls.DockPanel.SetDock(temp8, Fuse.Layouts.Dock.Bottom);
        temp8.Layout = temp10;
        temp8.Children.Add(temp9);
        temp8.Templates.Add(Dot);
        temp9.Size = 10f;
        temp9.Angle = 90f;
        temp9.Distance = 3f;
        temp9.Spread = 0.05f;
        temp9.Color = float4(0f, 0f, 0f, 0.5333334f);
        temp10.ColumnCount = 3;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(loggedInNavigation);
        __g_nametable.Objects.Add(ads);
        __g_nametable.Objects.Add(addAds);
        __g_nametable.Objects.Add(favorite);
        this.Children.Add(temp);
        this.Children.Add(temp1);
    }
    static global::Uno.UX.Selector __selector0 = "loggedInNavigation";
    static global::Uno.UX.Selector __selector1 = "ads";
    static global::Uno.UX.Selector __selector2 = "addAds";
    static global::Uno.UX.Selector __selector3 = "favorite";
}
