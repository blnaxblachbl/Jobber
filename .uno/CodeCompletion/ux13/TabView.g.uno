[Uno.Compiler.UxGenerated]
public partial class TabView: Fuse.Controls.Panel
{
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly TabView __parent;
        [Uno.WeakReference] internal readonly TabView __parentInstance;
        public Template(TabView parent, TabView parentInstance): base("innerPage1", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        internal global::Fuse.Controls.Panel Button;
        internal global::Fuse.Reactive.EventBinding temp_eb0;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Page();
            var temp = new global::Fuse.Reactive.Data("innerLink");
            var temp1 = new global::Fuse.Controls.StackPanel();
            var temp2 = new global::Fuse.Controls.Text();
            Button = new global::Fuse.Controls.Panel();
            var temp3 = new global::Fuse.Controls.Rectangle();
            temp_eb0 = new global::Fuse.Reactive.EventBinding(temp);
            __self.Name = __selector0;
            temp1.Children.Add(temp2);
            temp1.Children.Add(Button);
            temp2.Value = "innerPage 1";
            Button.Width = new Uno.UX.Size(60f, Uno.UX.Unit.Unspecified);
            Button.Height = new Uno.UX.Size(30f, Uno.UX.Unit.Unspecified);
            Button.Name = __selector1;
            global::Fuse.Gestures.Clicked.AddHandler(Button, temp_eb0.OnEvent);
            Button.Children.Add(temp3);
            Button.Bindings.Add(temp_eb0);
            temp3.Color = Fuse.Drawing.Colors.Red;
            __self.Children.Add(temp1);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "innerPage1";
        static global::Uno.UX.Selector __selector1 = "Button";
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template1: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly TabView __parent;
        [Uno.WeakReference] internal readonly TabView __parentInstance;
        public Template1(TabView parent, TabView parentInstance): base("innerPage2", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template1()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Page();
            var temp = new global::Fuse.Controls.Text();
            __self.Name = __selector0;
            temp.Value = "innerPage 2";
            __self.Children.Add(temp);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "innerPage2";
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template2: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly TabView __parent;
        [Uno.WeakReference] internal readonly TabView __parentInstance;
        public Template2(TabView parent, TabView parentInstance): base("Dot", false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<Fuse.Visual> temp_Target_inst;
        static Template2()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Rectangle();
            var temp = new global::Fuse.Navigation.NavigateTo();
            temp_Target_inst = new Jobber_FuseNavigationNavigateTo_Target_Property(temp, __selector0);
            var temp1 = new global::Fuse.Navigation.PageExpression("Visual");
            var temp2 = new global::Fuse.Navigation.ActivatingAnimation();
            var temp3 = new global::Fuse.Animations.Scale();
            var temp4 = new global::Fuse.Gestures.Clicked();
            var temp5 = new global::Fuse.Reactive.DataBinding(temp_Target_inst, temp1, Fuse.Reactive.BindingMode.Default);
            __self.Color = float4(0.3333333f, 0.3333333f, 0.3333333f, 1f);
            __self.Width = new Uno.UX.Size(30f, Uno.UX.Unit.Unspecified);
            __self.Height = new Uno.UX.Size(30f, Uno.UX.Unit.Unspecified);
            __self.Margin = float4(10f, 10f, 10f, 10f);
            __self.Name = __selector1;
            temp2.Animators.Add(temp3);
            temp3.Factor = 1.3f;
            temp4.Actions.Add(temp);
            temp4.Bindings.Add(temp5);
            __self.Children.Add(temp2);
            __self.Children.Add(temp4);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Target";
        static global::Uno.UX.Selector __selector1 = "Dot";
    }
    internal global::Fuse.Navigation.Router router2;
    internal global::Fuse.Controls.PageControl loggedInNavigation;
    internal global::Fuse.Controls.Page page1;
    internal global::Fuse.Controls.Page page2;
    internal global::Fuse.Controls.Navigator innerNav;
    internal global::Fuse.Controls.Page page3;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router2",
        "loggedInNavigation",
        "page1",
        "page2",
        "innerNav",
        "page3"
    };
    static TabView()
    {
    }
    [global::Uno.UX.UXConstructor]
    public TabView()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        loggedInNavigation = new global::Fuse.Controls.PageControl();
        var temp = new global::Fuse.Reactive.JavaScript(__g_nametable);
        router2 = new global::Fuse.Navigation.Router();
        var temp1 = new global::Fuse.Controls.DockPanel();
        page1 = new global::Fuse.Controls.Page();
        var temp2 = new global::Fuse.Controls.Text();
        page2 = new global::Fuse.Controls.Page();
        innerNav = new global::Fuse.Controls.Navigator();
        var innerPage1 = new Template(this, this);
        var innerPage2 = new Template1(this, this);
        page3 = new global::Fuse.Controls.Page();
        var temp3 = new global::Fuse.Controls.Text();
        var temp4 = new global::Fuse.Controls.PageIndicator(loggedInNavigation);
        var temp5 = new global::Fuse.Layouts.GridLayout();
        var Dot = new Template2(this, this);
        temp.Code = "\n    var innerLink = function(){\n      router.pushRelative(innerNav, \"innerPage2\");\n    }\n    module.exports = {\n      innerLink: innerLink\n    };\n  ";
        temp.LineNumber = 2;
        temp.FileName = "components/TabView/TabView.ux";
        router2.Name = __selector0;
        temp1.Children.Add(loggedInNavigation);
        temp1.Children.Add(temp4);
        loggedInNavigation.Interaction = Fuse.Controls.NavigationControlInteraction.None;
        loggedInNavigation.Name = __selector1;
        loggedInNavigation.Children.Add(page1);
        loggedInNavigation.Children.Add(page2);
        loggedInNavigation.Children.Add(page3);
        page1.Name = __selector2;
        page1.Children.Add(temp2);
        temp2.Value = "Page 1";
        page2.Name = __selector3;
        page2.Children.Add(innerNav);
        innerNav.DefaultPath = "innerPage1";
        innerNav.Name = __selector4;
        innerNav.Templates.Add(innerPage1);
        innerNav.Templates.Add(innerPage2);
        page3.Name = __selector5;
        page3.Children.Add(temp3);
        temp3.Value = "Page 3";
        temp4.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        global::Fuse.Controls.DockPanel.SetDock(temp4, Fuse.Layouts.Dock.Bottom);
        temp4.Layout = temp5;
        temp4.Templates.Add(Dot);
        temp5.ColumnCount = 3;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router2);
        __g_nametable.Objects.Add(loggedInNavigation);
        __g_nametable.Objects.Add(page1);
        __g_nametable.Objects.Add(page2);
        __g_nametable.Objects.Add(innerNav);
        __g_nametable.Objects.Add(page3);
        this.Children.Add(temp);
        this.Children.Add(router2);
        this.Children.Add(temp1);
    }
    static global::Uno.UX.Selector __selector0 = "router2";
    static global::Uno.UX.Selector __selector1 = "loggedInNavigation";
    static global::Uno.UX.Selector __selector2 = "page1";
    static global::Uno.UX.Selector __selector3 = "page2";
    static global::Uno.UX.Selector __selector4 = "innerNav";
    static global::Uno.UX.Selector __selector5 = "page3";
}
