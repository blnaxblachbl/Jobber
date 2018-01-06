[Uno.Compiler.UxGenerated]
public partial class ComboBox: Fuse.Controls.Panel
{
    object _field_Options;
    [global::Uno.UX.UXOriginSetter("SetOptions")]
    public object Options
    {
        get { return _field_Options; }
        set { SetOptions(value, null); }
    }
    public void SetOptions(object value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Options)
        {
            _field_Options = value;
            OnPropertyChanged("Options", origin);
        }
    }
    object _field_Selected;
    [global::Uno.UX.UXOriginSetter("SetSelected")]
    public object Selected
    {
        get { return _field_Selected; }
        set { SetSelected(value, null); }
    }
    public void SetSelected(object value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Selected)
        {
            _field_Selected = value;
            OnPropertyChanged("Selected", origin);
        }
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly ComboBox __parent;
        [Uno.WeakReference] internal readonly ComboBox __parentInstance;
        public Template(ComboBox parent, ComboBox parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> temp_Value_inst;
        global::Uno.UX.Property<float4> __self_Color_inst;
        global::Uno.UX.Property<bool> temp1_Value_inst;
        internal global::Fuse.Reactive.EventBinding temp_eb1;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Panel();
            var temp = new global::Fuse.Controls.Text();
            temp_Value_inst = new Jobber_FuseControlsTextControl_Value_Property(temp, __selector0);
            var temp2 = new global::Fuse.Reactive.Data("title");
            __self_Color_inst = new Jobber_FuseControlsPanel_Color_Property(__self, __selector1);
            var temp1 = new global::Fuse.Triggers.WhileTrue();
            temp1_Value_inst = new Jobber_FuseTriggersWhileBool_Value_Property(temp1, __selector0);
            var temp3 = new global::Fuse.Reactive.Data("isSelected");
            var temp4 = new global::Fuse.Reactive.Data("clicked");
            var temp5 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp2, Fuse.Reactive.BindingMode.Default);
            var temp6 = new global::Fuse.Gestures.WhilePressed();
            var temp7 = new global::Fuse.Animations.Change<float4>(__self_Color_inst);
            var temp8 = new global::Fuse.Animations.Change<float4>(__self_Color_inst);
            var temp9 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp3, Fuse.Reactive.BindingMode.Default);
            temp_eb1 = new global::Fuse.Reactive.EventBinding(temp4);
            __self.Color = float4(0.9333333f, 0.9333333f, 0.9333333f, 1f);
            __self.Name = __selector2;
            global::Fuse.Gestures.Clicked.AddHandler(__self, temp_eb1.OnEvent);
            temp.FontSize = 20f;
            temp.Margin = float4(10f, 10f, 10f, 10f);
            temp.Bindings.Add(temp5);
            temp6.Animators.Add(temp7);
            temp7.Value = float4(0.8666667f, 0.8666667f, 0.8666667f, 1f);
            temp7.Duration = 0.05;
            temp7.DurationBack = 0.1;
            temp1.Animators.Add(temp8);
            temp1.Bindings.Add(temp9);
            temp8.Value = float4(0.7490196f, 0.9176471f, 1f, 1f);
            __self.Children.Add(temp);
            __self.Children.Add(temp6);
            __self.Children.Add(temp1);
            __self.Bindings.Add(temp_eb1);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Value";
        static global::Uno.UX.Selector __selector1 = "Color";
        static global::Uno.UX.Selector __selector2 = "item";
    }
    global::Uno.UX.Property<string> temp_Value_inst;
    global::Uno.UX.Property<float4> header_Color_inst;
    global::Uno.UX.Property<float> price_Opacity_inst;
    global::Uno.UX.Property<float4> price_Color_inst;
    global::Uno.UX.Property<object> temp1_Items_inst;
    global::Uno.UX.Property<float> dropdown_Opacity_inst;
    global::Uno.UX.Property<Fuse.Elements.Visibility> dropdown_Visibility_inst;
    global::Uno.UX.Property<bool> temp2_Value_inst;
    global::Uno.UX.Property<object> this_Options_inst;
    global::Uno.UX.Property<object> this_Selected_inst;
    internal global::Fuse.Controls.Panel header;
    internal global::Fuse.Controls.Rectangle price;
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    internal global::Fuse.Controls.Panel dropdown;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "header",
        "price",
        "temp_eb0",
        "dropdown"
    };
    static ComboBox()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ComboBox()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this_Options_inst = new Jobber_ComboBox_Options_Property(this, __selector0);
        this_Selected_inst = new Jobber_ComboBox_Selected_Property(this, __selector1);
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Controls.Text();
        temp_Value_inst = new Jobber_FuseControlsTextControl_Value_Property(temp, __selector2);
        var temp3 = new global::Fuse.Reactive.Data("selected");
        header = new global::Fuse.Controls.Panel();
        header_Color_inst = new Jobber_FuseControlsPanel_Color_Property(header, __selector3);
        price = new global::Fuse.Controls.Rectangle();
        price_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(price, __selector4);
        price_Color_inst = new Jobber_FuseControlsShape_Color_Property(price, __selector3);
        var temp4 = new global::Fuse.Reactive.Data("toggleOpen");
        var temp1 = new global::Fuse.Reactive.Each();
        temp1_Items_inst = new Jobber_FuseReactiveEach_Items_Property(temp1, __selector5);
        var temp5 = new global::Fuse.Reactive.Data("options");
        dropdown = new global::Fuse.Controls.Panel();
        dropdown_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(dropdown, __selector4);
        dropdown_Visibility_inst = new Jobber_FuseElementsElement_Visibility_Property(dropdown, __selector6);
        var temp2 = new global::Fuse.Triggers.WhileFalse();
        temp2_Value_inst = new Jobber_FuseTriggersWhileBool_Value_Property(temp2, __selector2);
        var temp6 = new global::Fuse.Reactive.Data("isOpen");
        var temp7 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp8 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp3, Fuse.Reactive.BindingMode.Default);
        var temp9 = new global::Fuse.Gestures.WhilePressed();
        var temp10 = new global::Fuse.Animations.Change<float4>(header_Color_inst);
        var temp11 = new global::Fuse.Animations.Change<float>(price_Opacity_inst);
        var temp12 = new global::Fuse.Animations.Change<float4>(price_Color_inst);
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp4);
        var temp13 = new global::Fuse.Translation();
        var temp14 = new global::Fuse.Controls.ScrollView();
        var temp15 = new global::Fuse.Controls.StackPanel();
        var item = new Template(this, this);
        var temp16 = new global::Fuse.Reactive.DataBinding(temp1_Items_inst, temp5, Fuse.Reactive.BindingMode.Default);
        var temp17 = new global::Fuse.Animations.Change<float>(dropdown_Opacity_inst);
        var temp18 = new global::Fuse.Animations.Change<Fuse.Elements.Visibility>(dropdown_Visibility_inst);
        var temp19 = new global::Fuse.Animations.Move();
        var temp20 = new global::Fuse.Reactive.DataBinding(temp2_Value_inst, temp6, Fuse.Reactive.BindingMode.Default);
        this.Color = float4(1f, 1f, 1f, 1f);
        this.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp7.Code = "\n        var Observable = require(\"FuseJS/Observable\");\n        \n        var self = this;\n\n        var isOpen = Observable(false);\n\n        var options = self.Options.inner();\n\n        var selected = self.Selected.inner();\n\n        toggleOpen = () => {\n            isOpen.value = !isOpen.value;\n        } \n\n        module.exports = {\n            isOpen: isOpen,\n            toggleOpen: toggleOpen,\n            options: options.map((option)=> {\n                return {\n                    title: option,\n                    isSelected: Observable(() => {\n                        return selected.value === option;\n                    }),\n                    clicked: () => {\n                        selected.value = option;\n                        isOpen.value = false; \n                    }\n                }\n            }),\n            selected: selected,\n        }\n    ";
        temp7.LineNumber = 6;
        temp7.FileName = "components/ComboBox.ux";
        header.HitTestMode = Fuse.Elements.HitTestMode.LocalBoundsAndChildren;
        header.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        header.Name = __selector7;
        global::Fuse.Gestures.Clicked.AddHandler(header, temp_eb0.OnEvent);
        header.Children.Add(temp);
        header.Children.Add(temp9);
        header.Children.Add(price);
        header.Bindings.Add(temp_eb0);
        temp.FontSize = 20f;
        temp.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp.Font = Fuse.Font.Medium;
        temp.Bindings.Add(temp8);
        temp9.Animators.Add(temp10);
        temp9.Animators.Add(temp11);
        temp9.Animators.Add(temp12);
        temp10.Value = float4(0.7333333f, 0.7333333f, 0.7333333f, 1f);
        temp10.DurationBack = 0.1;
        temp11.Value = 1f;
        temp12.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        price.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        price.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        price.Alignment = Fuse.Elements.Alignment.Bottom;
        price.Opacity = 0.3f;
        price.Name = __selector8;
        dropdown.Color = float4(0.9333333f, 0.9333333f, 0.9333333f, 1f);
        dropdown.MaxHeight = new Uno.UX.Size(200f, Uno.UX.Unit.Unspecified);
        dropdown.Alignment = Fuse.Elements.Alignment.Top;
        dropdown.LayoutRole = Fuse.LayoutRole.Inert;
        dropdown.Name = __selector9;
        dropdown.Children.Add(temp13);
        dropdown.Children.Add(temp14);
        dropdown.Children.Add(temp2);
        temp13.Y = 1f;
        temp13.RelativeNode = this;
        temp13.RelativeTo = Fuse.TranslationModes.Size;
        temp14.ClipToBounds = true;
        temp14.Children.Add(temp15);
        temp15.Children.Add(temp1);
        temp1.Templates.Add(item);
        temp1.Bindings.Add(temp16);
        temp2.Animators.Add(temp17);
        temp2.Animators.Add(temp18);
        temp2.Animators.Add(temp19);
        temp2.Bindings.Add(temp20);
        temp17.Value = 0f;
        temp17.Duration = 0.2;
        temp17.Easing = Fuse.Animations.Easing.CubicOut;
        temp18.Value = Fuse.Elements.Visibility.Hidden;
        temp18.Delay = 0.2;
        temp19.Y = -200f;
        temp19.Duration = 0.2;
        temp19.Easing = Fuse.Animations.Easing.CubicIn;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(header);
        __g_nametable.Objects.Add(price);
        __g_nametable.Objects.Add(temp_eb0);
        __g_nametable.Objects.Add(dropdown);
        __g_nametable.Properties.Add(this_Options_inst);
        __g_nametable.Properties.Add(this_Selected_inst);
        this.Children.Add(temp7);
        this.Children.Add(header);
        this.Children.Add(dropdown);
    }
    static global::Uno.UX.Selector __selector0 = "Options";
    static global::Uno.UX.Selector __selector1 = "Selected";
    static global::Uno.UX.Selector __selector2 = "Value";
    static global::Uno.UX.Selector __selector3 = "Color";
    static global::Uno.UX.Selector __selector4 = "Opacity";
    static global::Uno.UX.Selector __selector5 = "Items";
    static global::Uno.UX.Selector __selector6 = "Visibility";
    static global::Uno.UX.Selector __selector7 = "header";
    static global::Uno.UX.Selector __selector8 = "price";
    static global::Uno.UX.Selector __selector9 = "dropdown";
}
