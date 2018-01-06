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
        global::Uno.UX.Property<float4> title_Color_inst;
        global::Uno.UX.Property<float4> icon_Color_inst;
        global::Uno.UX.Property<Fuse.Visual> temp_Target_inst;
        global::Uno.UX.Property<string> icon_Value_inst;
        global::Uno.UX.Property<string> title_Value_inst;
        internal global::Fuse.Controls.Text icon;
        internal global::Fuse.Controls.Text title;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Panel();
            title = new global::Fuse.Controls.Text();
            title_Color_inst = new Jobber_FuseControlsTextControl_Color_Property(title, __selector0);
            icon = new global::Fuse.Controls.Text();
            icon_Color_inst = new Jobber_FuseControlsTextControl_Color_Property(icon, __selector0);
            var temp = new global::Fuse.Navigation.NavigateTo();
            temp_Target_inst = new Jobber_FuseNavigationNavigateTo_Target_Property(temp, __selector1);
            var temp1 = new global::Fuse.Navigation.PageExpression("Visual");
            icon_Value_inst = new Jobber_FuseControlsTextControl_Value_Property(icon, __selector2);
            var temp2 = new global::Fuse.Navigation.PageExpression("Icon");
            title_Value_inst = new Jobber_FuseControlsTextControl_Value_Property(title, __selector2);
            var temp3 = new global::Fuse.Navigation.PageExpression("Title");
            var temp4 = new global::Fuse.Navigation.ActivatingAnimation();
            var temp5 = new global::Fuse.Animations.Scale();
            var temp6 = new global::Fuse.Animations.Change<float4>(title_Color_inst);
            var temp7 = new global::Fuse.Animations.Change<float4>(icon_Color_inst);
            var temp8 = new global::Fuse.Gestures.Clicked();
            var temp9 = new global::Fuse.Reactive.DataBinding(temp_Target_inst, temp1, Fuse.Reactive.BindingMode.Default);
            var temp10 = new global::Fuse.Reactive.DataBinding(icon_Value_inst, temp2, Fuse.Reactive.BindingMode.Default);
            var temp11 = new global::Fuse.Reactive.DataBinding(title_Value_inst, temp3, Fuse.Reactive.BindingMode.Default);
            __self.Height = new Uno.UX.Size(45f, Uno.UX.Unit.Unspecified);
            __self.Name = __selector3;
            temp4.Animators.Add(temp5);
            temp4.Animators.Add(temp6);
            temp4.Animators.Add(temp7);
            temp5.Factor = 1.2f;
            temp6.Value = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
            temp7.Value = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
            temp8.Actions.Add(temp);
            temp8.Bindings.Add(temp9);
            icon.FontSize = 25f;
            icon.TextAlignment = Fuse.Controls.TextAlignment.Center;
            icon.Alignment = Fuse.Elements.Alignment.TopCenter;
            icon.Name = __selector4;
            icon.Font = global::TabView.FontAwesome;
            icon.Bindings.Add(temp10);
            title.FontSize = 10f;
            title.TextAlignment = Fuse.Controls.TextAlignment.Center;
            title.Alignment = Fuse.Elements.Alignment.BottomCenter;
            title.Name = __selector5;
            title.Bindings.Add(temp11);
            __self.Children.Add(temp4);
            __self.Children.Add(temp8);
            __self.Children.Add(icon);
            __self.Children.Add(title);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Color";
        static global::Uno.UX.Selector __selector1 = "Target";
        static global::Uno.UX.Selector __selector2 = "Value";
        static global::Uno.UX.Selector __selector3 = "Dot";
        static global::Uno.UX.Selector __selector4 = "icon";
        static global::Uno.UX.Selector __selector5 = "title";
    }
    global::Uno.UX.Property<float4> shadow_Color_inst;
    global::Uno.UX.Property<float> sidebarFade_Opacity_inst;
    [global::Uno.UX.UXGlobalResource("FontAwesome")] public static readonly Fuse.Font FontAwesome;
    internal global::Fuse.Controls.Panel sidebar;
    internal global::Fuse.Controls.Shadow shadow;
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    internal global::Fuse.Reactive.EventBinding temp_eb2;
    internal global::Fuse.Reactive.EventBinding temp_eb3;
    internal global::Fuse.Controls.Rectangle sidebarFade;
    internal global::Fuse.Controls.PageControl loggedInNavigation;
    internal global::Fuse.Controls.Page ads;
    internal global::Fuse.Controls.Page addAds;
    internal global::Fuse.Controls.Page favorite;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "sidebar",
        "shadow",
        "temp_eb0",
        "temp_eb1",
        "temp_eb2",
        "temp_eb3",
        "sidebarFade",
        "loggedInNavigation",
        "ads",
        "addAds",
        "favorite"
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
        shadow = new global::Fuse.Controls.Shadow();
        shadow_Color_inst = new Jobber_FuseControlsShadow_Color_Property(shadow, __selector0);
        sidebarFade = new global::Fuse.Controls.Rectangle();
        sidebarFade_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(sidebarFade, __selector1);
        var temp = new global::Fuse.Reactive.Data("goOrder");
        var temp1 = new global::Fuse.Reactive.Data("goOrder");
        var temp2 = new global::Fuse.Reactive.Data("goContact");
        var temp3 = new global::Fuse.Reactive.Data("goContact");
        loggedInNavigation = new global::Fuse.Controls.PageControl();
        var temp4 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp5 = new global::Fuse.Controls.EdgeNavigator();
        sidebar = new global::Fuse.Controls.Panel();
        var temp6 = new global::Fuse.Navigation.ActivatingAnimation();
        var temp7 = new global::Fuse.Animations.Change<float4>(shadow_Color_inst);
        var temp8 = new global::Fuse.Animations.Change<float>(sidebarFade_Opacity_inst);
        var temp9 = new global::Fuse.Controls.StackPanel();
        var temp10 = new global::Fuse.Controls.Rectangle();
        var temp11 = new global::Fuse.Controls.Grid();
        var temp12 = new global::Fuse.Controls.Circle();
        var temp13 = new global::Fuse.Drawing.ImageFill();
        var temp14 = new global::Fuse.Controls.StackPanel();
        var temp15 = new global::Fuse.Controls.Text();
        var temp16 = new global::Fuse.Controls.Text();
        var temp17 = new global::Fuse.Controls.StackPanel();
        var temp18 = new global::Fuse.Controls.DockPanel();
        var temp19 = new global::Fuse.Controls.Text();
        var temp20 = new global::Fuse.Controls.Text();
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp);
        var temp21 = new global::Fuse.Controls.DockPanel();
        var temp22 = new global::Fuse.Controls.Text();
        var temp23 = new global::Fuse.Controls.Text();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp1);
        var temp24 = new global::Fuse.Controls.DockPanel();
        var temp25 = new global::Fuse.Controls.Text();
        var temp26 = new global::Fuse.Controls.Text();
        temp_eb2 = new global::Fuse.Reactive.EventBinding(temp2);
        var temp27 = new global::Fuse.Controls.DockPanel();
        var temp28 = new global::Fuse.Controls.Text();
        var temp29 = new global::Fuse.Controls.Text();
        temp_eb3 = new global::Fuse.Reactive.EventBinding(temp3);
        var temp30 = new global::Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        var temp31 = new global::Fuse.Controls.DockPanel();
        var temp32 = new global::Fuse.Controls.StackPanel();
        var temp33 = new global::Fuse.Controls.Shadow();
        var temp34 = new global::Fuse.Controls.StatusBarBackground();
        var temp35 = new global::Fuse.Controls.Panel();
        var temp36 = new global::Hamburger();
        var temp37 = new global::Fuse.Gestures.Clicked();
        var temp38 = new global::Fuse.Navigation.NavigateToggle();
        ads = new global::Fuse.Controls.Page();
        var temp39 = new global::Fuse.Resources.ResourceString();
        var temp40 = new global::Fuse.Resources.ResourceString();
        var temp41 = new global::AdsPage();
        addAds = new global::Fuse.Controls.Page();
        var temp42 = new global::Fuse.Resources.ResourceString();
        var temp43 = new global::Fuse.Resources.ResourceString();
        var temp44 = new global::AddAdsPage();
        favorite = new global::Fuse.Controls.Page();
        var temp45 = new global::Fuse.Resources.ResourceString();
        var temp46 = new global::Fuse.Resources.ResourceString();
        var temp47 = new global::FavoritePage();
        var temp48 = new global::Fuse.Controls.PageIndicator(loggedInNavigation);
        var temp49 = new global::Fuse.Effects.DropShadow();
        var temp50 = new global::Fuse.Layouts.GridLayout();
        var Dot = new Template(this, this);
        temp4.Code = "\n        var innerLink = function(){\n            router.pushRelative(innerNav, \"innerPage2\");\n        }\n        module.exports = {\n            innerLink: innerLink\n        };\n    ";
        temp4.LineNumber = 3;
        temp4.FileName = "components/TabView/TabView.ux";
        temp5.Children.Add(sidebar);
        temp5.Children.Add(temp31);
        sidebar.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        sidebar.Margin = float4(0f, 25f, 56f, 0f);
        sidebar.Name = __selector2;
        global::Fuse.Navigation.EdgeNavigation.SetEdge(sidebar, Fuse.Navigation.NavigationEdge.Left);
        sidebar.Background = temp30;
        sidebar.Children.Add(shadow);
        sidebar.Children.Add(temp6);
        sidebar.Children.Add(temp9);
        shadow.Angle = 180f;
        shadow.Distance = 8f;
        shadow.Size = 16f;
        shadow.Color = float4(0f, 0f, 0f, 0f);
        shadow.Name = __selector3;
        temp6.Animators.Add(temp7);
        temp6.Animators.Add(temp8);
        temp7.Value = float4(0f, 0f, 0f, 0.2666667f);
        temp8.Value = 1f;
        temp9.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp9.Height = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp9.Children.Add(temp10);
        temp9.Children.Add(temp17);
        temp10.Color = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
        temp10.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp10.Height = new Uno.UX.Size(150f, Uno.UX.Unit.Unspecified);
        temp10.Children.Add(temp11);
        temp11.Columns = "1*,2*";
        temp11.Children.Add(temp12);
        temp11.Children.Add(temp14);
        temp12.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Percent);
        temp12.Fills.Add(temp13);
        temp13.Url = "https://a.d-cd.net/dedee9as-960.jpg";
        temp14.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp14.Children.Add(temp15);
        temp14.Children.Add(temp16);
        temp15.Value = "Глупый Котэ";
        temp15.Color = float4(1f, 1f, 1f, 1f);
        temp15.Margin = float4(0f, 0f, 0f, 15f);
        temp16.Value = "Рейтинг: 4.6/5.0";
        temp16.Color = float4(1f, 1f, 1f, 1f);
        temp16.Margin = float4(0f, 15f, 0f, 0f);
        temp17.Padding = float4(20f, 20f, 20f, 20f);
        temp17.Children.Add(temp18);
        temp17.Children.Add(temp21);
        temp17.Children.Add(temp24);
        temp17.Children.Add(temp27);
        temp18.Margin = float4(0f, 0f, 0f, 30f);
        global::Fuse.Gestures.Clicked.AddHandler(temp18, temp_eb0.OnEvent);
        temp18.Children.Add(temp19);
        temp18.Children.Add(temp20);
        temp18.Bindings.Add(temp_eb0);
        temp19.Value = "\uF003";
        temp19.FontSize = 25f;
        temp19.TextAlignment = Fuse.Controls.TextAlignment.Left;
        temp19.Margin = float4(0f, 0f, 20f, 0f);
        global::Fuse.Controls.DockPanel.SetDock(temp19, Fuse.Layouts.Dock.Left);
        temp19.Font = global::TabView.FontAwesome;
        temp20.Value = "Главная";
        temp20.FontSize = 20f;
        temp20.TextAlignment = Fuse.Controls.TextAlignment.Left;
        global::Fuse.Controls.DockPanel.SetDock(temp20, Fuse.Layouts.Dock.Left);
        temp20.Font = Fuse.Font.Bold;
        temp21.Margin = float4(0f, 0f, 0f, 30f);
        global::Fuse.Gestures.Clicked.AddHandler(temp21, temp_eb1.OnEvent);
        temp21.Children.Add(temp22);
        temp21.Children.Add(temp23);
        temp21.Bindings.Add(temp_eb1);
        temp22.Value = "\uF05A";
        temp22.FontSize = 25f;
        temp22.TextAlignment = Fuse.Controls.TextAlignment.Left;
        temp22.Margin = float4(0f, 0f, 20f, 0f);
        global::Fuse.Controls.DockPanel.SetDock(temp22, Fuse.Layouts.Dock.Left);
        temp22.Font = global::TabView.FontAwesome;
        temp23.Value = "Личный кабинет";
        temp23.FontSize = 20f;
        temp23.TextAlignment = Fuse.Controls.TextAlignment.Left;
        global::Fuse.Controls.DockPanel.SetDock(temp23, Fuse.Layouts.Dock.Left);
        temp23.Font = Fuse.Font.Bold;
        temp24.Margin = float4(0f, 0f, 0f, 30f);
        global::Fuse.Gestures.Clicked.AddHandler(temp24, temp_eb2.OnEvent);
        temp24.Children.Add(temp25);
        temp24.Children.Add(temp26);
        temp24.Bindings.Add(temp_eb2);
        temp25.Value = "\uF090";
        temp25.FontSize = 25f;
        temp25.TextAlignment = Fuse.Controls.TextAlignment.Left;
        temp25.Margin = float4(0f, 0f, 20f, 0f);
        global::Fuse.Controls.DockPanel.SetDock(temp25, Fuse.Layouts.Dock.Left);
        temp25.Font = global::TabView.FontAwesome;
        temp26.Value = "Баланс";
        temp26.FontSize = 20f;
        temp26.TextAlignment = Fuse.Controls.TextAlignment.Left;
        global::Fuse.Controls.DockPanel.SetDock(temp26, Fuse.Layouts.Dock.Left);
        temp26.Font = Fuse.Font.Bold;
        temp27.Margin = float4(0f, 0f, 0f, 30f);
        global::Fuse.Gestures.Clicked.AddHandler(temp27, temp_eb3.OnEvent);
        temp27.Children.Add(temp28);
        temp27.Children.Add(temp29);
        temp27.Bindings.Add(temp_eb3);
        temp28.Value = "\uF090";
        temp28.FontSize = 25f;
        temp28.TextAlignment = Fuse.Controls.TextAlignment.Left;
        temp28.Margin = float4(0f, 0f, 20f, 0f);
        global::Fuse.Controls.DockPanel.SetDock(temp28, Fuse.Layouts.Dock.Left);
        temp28.Font = global::TabView.FontAwesome;
        temp29.Value = "О программе";
        temp29.FontSize = 20f;
        temp29.TextAlignment = Fuse.Controls.TextAlignment.Left;
        global::Fuse.Controls.DockPanel.SetDock(temp29, Fuse.Layouts.Dock.Left);
        temp29.Font = Fuse.Font.Bold;
        temp31.Children.Add(sidebarFade);
        temp31.Children.Add(temp32);
        temp31.Children.Add(loggedInNavigation);
        temp31.Children.Add(temp48);
        sidebarFade.Color = float4(0f, 0f, 0f, 0.3333333f);
        sidebarFade.HitTestMode = Fuse.Elements.HitTestMode.None;
        sidebarFade.Opacity = 0f;
        sidebarFade.Layer = Fuse.Layer.Overlay;
        sidebarFade.Name = __selector4;
        temp32.Color = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
        global::Fuse.Controls.DockPanel.SetDock(temp32, Fuse.Layouts.Dock.Top);
        temp32.Children.Add(temp33);
        temp32.Children.Add(temp34);
        temp32.Children.Add(temp35);
        temp33.Distance = 1f;
        temp33.Size = 3f;
        temp35.Height = new Uno.UX.Size(56f, Uno.UX.Unit.Unspecified);
        temp35.Children.Add(temp36);
        temp36.Alignment = Fuse.Elements.Alignment.Left;
        temp36.Children.Add(temp37);
        temp37.Actions.Add(temp38);
        temp38.Target = sidebar;
        loggedInNavigation.Interaction = Fuse.Controls.NavigationControlInteraction.None;
        loggedInNavigation.Name = __selector5;
        loggedInNavigation.Children.Add(ads);
        loggedInNavigation.Children.Add(addAds);
        loggedInNavigation.Children.Add(favorite);
        ads.Name = __selector6;
        ads.Children.Add(temp39);
        ads.Children.Add(temp40);
        ads.Children.Add(temp41);
        temp39.Key = "Title";
        temp39.Value = "Обьявления";
        temp40.Key = "Icon";
        temp40.Value = "\uF03A";
        addAds.Name = __selector7;
        addAds.Children.Add(temp42);
        addAds.Children.Add(temp43);
        addAds.Children.Add(temp44);
        temp42.Key = "Title";
        temp42.Value = "Добавить обьявление";
        temp43.Key = "Icon";
        temp43.Value = "\uF055";
        favorite.Name = __selector8;
        favorite.Children.Add(temp45);
        favorite.Children.Add(temp46);
        favorite.Children.Add(temp47);
        temp45.Key = "Title";
        temp45.Value = "Избранные";
        temp46.Key = "Icon";
        temp46.Value = "\uF005";
        temp48.Color = float4(1f, 1f, 1f, 1f);
        temp48.Height = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
        global::Fuse.Controls.DockPanel.SetDock(temp48, Fuse.Layouts.Dock.Bottom);
        temp48.Layout = temp50;
        temp48.Children.Add(temp49);
        temp48.Templates.Add(Dot);
        temp49.Size = 10f;
        temp49.Angle = 90f;
        temp49.Distance = 3f;
        temp49.Spread = 0.05f;
        temp49.Color = float4(0f, 0f, 0f, 0.5333334f);
        temp50.ColumnCount = 3;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(sidebar);
        __g_nametable.Objects.Add(shadow);
        __g_nametable.Objects.Add(temp_eb0);
        __g_nametable.Objects.Add(temp_eb1);
        __g_nametable.Objects.Add(temp_eb2);
        __g_nametable.Objects.Add(temp_eb3);
        __g_nametable.Objects.Add(sidebarFade);
        __g_nametable.Objects.Add(loggedInNavigation);
        __g_nametable.Objects.Add(ads);
        __g_nametable.Objects.Add(addAds);
        __g_nametable.Objects.Add(favorite);
        this.Children.Add(temp4);
        this.Children.Add(temp5);
    }
    static global::Uno.UX.Selector __selector0 = "Color";
    static global::Uno.UX.Selector __selector1 = "Opacity";
    static global::Uno.UX.Selector __selector2 = "sidebar";
    static global::Uno.UX.Selector __selector3 = "shadow";
    static global::Uno.UX.Selector __selector4 = "sidebarFade";
    static global::Uno.UX.Selector __selector5 = "loggedInNavigation";
    static global::Uno.UX.Selector __selector6 = "ads";
    static global::Uno.UX.Selector __selector7 = "addAds";
    static global::Uno.UX.Selector __selector8 = "favorite";
}
