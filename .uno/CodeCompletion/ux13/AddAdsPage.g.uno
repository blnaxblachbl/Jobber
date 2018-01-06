[Uno.Compiler.UxGenerated]
public partial class AddAdsPage: Fuse.Controls.Panel
{
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly AddAdsPage __parent;
        [Uno.WeakReference] internal readonly AddAdsPage __parentInstance;
        public Template(AddAdsPage parent, AddAdsPage parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> temp_Url_inst;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.StackPanel();
            var temp = new global::Fuse.Drawing.ImageFill();
            temp_Url_inst = new Jobber_FuseDrawingImageFill_Url_Property(temp, __selector0);
            var temp1 = new global::Fuse.Reactive.Data("url");
            var temp2 = new global::Fuse.Controls.Rectangle();
            var temp3 = new global::Fuse.Reactive.DataBinding(temp_Url_inst, temp1, Fuse.Reactive.BindingMode.Default);
            temp2.CornerRadius = float4(10f, 10f, 10f, 10f);
            temp2.Width = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
            temp2.Height = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
            temp2.Alignment = Fuse.Elements.Alignment.Top;
            temp2.Margin = float4(5f, 5f, 5f, 5f);
            temp2.Fills.Add(temp);
            temp2.Bindings.Add(temp3);
            temp.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
            __self.Children.Add(temp2);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Url";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    global::Uno.UX.Property<float> name_Opacity_inst;
    global::Uno.UX.Property<float4> name_Color_inst;
    global::Uno.UX.Property<float> discription_Opacity_inst;
    global::Uno.UX.Property<float4> discription_Color_inst;
    global::Uno.UX.Property<float> price_Opacity_inst;
    global::Uno.UX.Property<float4> price_Color_inst;
    global::Uno.UX.Property<float> ads_Opacity_inst;
    global::Uno.UX.Property<float4> ads_Color_inst;
    global::Uno.UX.Property<float> podAds_Opacity_inst;
    global::Uno.UX.Property<float4> podAds_Color_inst;
    global::Uno.UX.Property<float> adress_Opacity_inst;
    global::Uno.UX.Property<float4> adress_Color_inst;
    internal global::Fuse.Controls.Rectangle name;
    internal global::Fuse.Controls.Rectangle discription;
    internal global::Fuse.Controls.Rectangle price;
    internal global::Fuse.Controls.Rectangle ads;
    internal global::Fuse.Controls.Rectangle podAds;
    internal global::Fuse.Controls.Rectangle adress;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "name",
        "discription",
        "price",
        "ads",
        "podAds",
        "adress"
    };
    static AddAdsPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public AddAdsPage()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new Jobber_FuseReactiveEach_Items_Property(temp, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("images");
        name = new global::Fuse.Controls.Rectangle();
        name_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(name, __selector1);
        name_Color_inst = new Jobber_FuseControlsShape_Color_Property(name, __selector2);
        discription = new global::Fuse.Controls.Rectangle();
        discription_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(discription, __selector1);
        discription_Color_inst = new Jobber_FuseControlsShape_Color_Property(discription, __selector2);
        price = new global::Fuse.Controls.Rectangle();
        price_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(price, __selector1);
        price_Color_inst = new Jobber_FuseControlsShape_Color_Property(price, __selector2);
        ads = new global::Fuse.Controls.Rectangle();
        ads_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(ads, __selector1);
        ads_Color_inst = new Jobber_FuseControlsShape_Color_Property(ads, __selector2);
        podAds = new global::Fuse.Controls.Rectangle();
        podAds_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(podAds, __selector1);
        podAds_Color_inst = new Jobber_FuseControlsShape_Color_Property(podAds, __selector2);
        adress = new global::Fuse.Controls.Rectangle();
        adress_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(adress, __selector1);
        adress_Color_inst = new Jobber_FuseControlsShape_Color_Property(adress, __selector2);
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new global::Fuse.Controls.ScrollView();
        var temp4 = new global::Fuse.Controls.StackPanel();
        var temp5 = new global::Fuse.Controls.Rectangle();
        var temp6 = new global::Fuse.Drawing.ImageFill();
        var temp7 = new global::Fuse.Controls.StackPanel();
        var temp8 = new Template(this, this);
        var temp9 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp1, Fuse.Reactive.BindingMode.Default);
        var temp10 = new global::Fuse.Controls.StackPanel();
        var temp11 = new global::Fuse.Controls.Rectangle();
        var temp12 = new global::Fuse.Controls.Text();
        var temp13 = new global::Fuse.Controls.TextInput();
        var temp14 = new global::Fuse.Triggers.WhileFocused();
        var temp15 = new global::Fuse.Animations.Change<float>(name_Opacity_inst);
        var temp16 = new global::Fuse.Animations.Change<float4>(name_Color_inst);
        var temp17 = new global::Fuse.Controls.TextInput();
        var temp18 = new global::Fuse.Triggers.WhileFocused();
        var temp19 = new global::Fuse.Animations.Change<float>(discription_Opacity_inst);
        var temp20 = new global::Fuse.Animations.Change<float4>(discription_Color_inst);
        var temp21 = new global::Fuse.Controls.TextInput();
        var temp22 = new global::Fuse.Triggers.WhileFocused();
        var temp23 = new global::Fuse.Animations.Change<float>(price_Opacity_inst);
        var temp24 = new global::Fuse.Animations.Change<float4>(price_Color_inst);
        var temp25 = new global::Fuse.Controls.TextInput();
        var temp26 = new global::Fuse.Triggers.WhileFocused();
        var temp27 = new global::Fuse.Animations.Change<float>(ads_Opacity_inst);
        var temp28 = new global::Fuse.Animations.Change<float4>(ads_Color_inst);
        var temp29 = new global::Fuse.Controls.TextInput();
        var temp30 = new global::Fuse.Triggers.WhileFocused();
        var temp31 = new global::Fuse.Animations.Change<float>(podAds_Opacity_inst);
        var temp32 = new global::Fuse.Animations.Change<float4>(podAds_Color_inst);
        var temp33 = new global::Fuse.Controls.TextInput();
        var temp34 = new global::Fuse.Triggers.WhileFocused();
        var temp35 = new global::Fuse.Animations.Change<float>(adress_Opacity_inst);
        var temp36 = new global::Fuse.Animations.Change<float4>(adress_Color_inst);
        var temp37 = new global::Fuse.Triggers.TextInputActionTriggered();
        var temp38 = new global::Fuse.Triggers.Actions.ReleaseFocus();
        temp2.LineNumber = 2;
        temp2.FileName = "pages/AddAdsPage/AddAdsPage.ux";
        temp2.File = new global::Uno.UX.BundleFileSource(import("../../../pages/AddAdsPage/AddAdsPage.js"));
        temp3.SnapMinTransform = false;
        temp3.SnapMaxTransform = false;
        temp3.Margin = float4(0f, 0f, 0f, 15f);
        temp3.Children.Add(temp4);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp7);
        temp4.Children.Add(temp13);
        temp4.Children.Add(temp17);
        temp4.Children.Add(temp21);
        temp4.Children.Add(temp25);
        temp4.Children.Add(temp29);
        temp4.Children.Add(temp33);
        temp5.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp5.Height = new Uno.UX.Size(250f, Uno.UX.Unit.Unspecified);
        temp5.Alignment = Fuse.Elements.Alignment.Top;
        temp5.Margin = float4(0f, 0f, 0f, 10f);
        temp5.Fills.Add(temp6);
        temp6.Url = "https://dogsarethecoolest.files.wordpress.com/2009/03/fatdogonsand.jpg";
        temp6.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp7.Orientation = Fuse.Layouts.Orientation.Horizontal;
        temp7.Alignment = Fuse.Elements.Alignment.Left;
        temp7.Children.Add(temp);
        temp7.Children.Add(temp10);
        temp.Templates.Add(temp8);
        temp.Bindings.Add(temp9);
        temp10.Children.Add(temp11);
        temp11.CornerRadius = float4(10f, 10f, 10f, 10f);
        temp11.StrokeColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp11.StrokeWidth = 1f;
        temp11.Width = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
        temp11.Height = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
        temp11.Alignment = Fuse.Elements.Alignment.Top;
        temp11.Margin = float4(5f, 5f, 5f, 5f);
        temp11.Children.Add(temp12);
        temp12.Value = "\uF067";
        temp12.FontSize = 50f;
        temp12.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp12.Color = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
        temp12.Alignment = Fuse.Elements.Alignment.Center;
        temp12.Margin = float4(0f, 5f, 0f, 0f);
        temp12.Font = global::TabView.FontAwesome;
        temp13.PlaceholderText = "Название";
        temp13.PlaceholderColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp13.ActionStyle = Fuse.Controls.TextInputActionStyle.Next;
        temp13.TextColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp13.Width = new Uno.UX.Size(90f, Uno.UX.Unit.Percent);
        temp13.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp13.Children.Add(name);
        temp13.Children.Add(temp14);
        name.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        name.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        name.Alignment = Fuse.Elements.Alignment.Bottom;
        name.Opacity = 0.3f;
        name.Name = __selector3;
        temp14.Animators.Add(temp15);
        temp14.Animators.Add(temp16);
        temp15.Value = 1f;
        temp16.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp17.PlaceholderText = "Описание";
        temp17.PlaceholderColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp17.ActionStyle = Fuse.Controls.TextInputActionStyle.Next;
        temp17.TextColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp17.Width = new Uno.UX.Size(90f, Uno.UX.Unit.Percent);
        temp17.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp17.Children.Add(discription);
        temp17.Children.Add(temp18);
        discription.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        discription.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        discription.Alignment = Fuse.Elements.Alignment.Bottom;
        discription.Opacity = 0.3f;
        discription.Name = __selector4;
        temp18.Animators.Add(temp19);
        temp18.Animators.Add(temp20);
        temp19.Value = 1f;
        temp20.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp21.PlaceholderText = "Установите цену";
        temp21.PlaceholderColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp21.ActionStyle = Fuse.Controls.TextInputActionStyle.Next;
        temp21.TextColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp21.Width = new Uno.UX.Size(90f, Uno.UX.Unit.Percent);
        temp21.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp21.Children.Add(price);
        temp21.Children.Add(temp22);
        price.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        price.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        price.Alignment = Fuse.Elements.Alignment.Bottom;
        price.Opacity = 0.3f;
        price.Name = __selector5;
        temp22.Animators.Add(temp23);
        temp22.Animators.Add(temp24);
        temp23.Value = 1f;
        temp24.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp25.PlaceholderText = "Выбрать категорию";
        temp25.PlaceholderColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp25.ActionStyle = Fuse.Controls.TextInputActionStyle.Next;
        temp25.TextColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp25.Width = new Uno.UX.Size(90f, Uno.UX.Unit.Percent);
        temp25.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp25.Children.Add(ads);
        temp25.Children.Add(temp26);
        ads.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        ads.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        ads.Alignment = Fuse.Elements.Alignment.Bottom;
        ads.Opacity = 0.3f;
        ads.Name = __selector6;
        temp26.Animators.Add(temp27);
        temp26.Animators.Add(temp28);
        temp27.Value = 1f;
        temp28.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp29.PlaceholderText = "Выбрать подкатегорию";
        temp29.PlaceholderColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp29.ActionStyle = Fuse.Controls.TextInputActionStyle.Next;
        temp29.TextColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp29.Width = new Uno.UX.Size(90f, Uno.UX.Unit.Percent);
        temp29.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp29.Children.Add(podAds);
        temp29.Children.Add(temp30);
        podAds.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        podAds.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        podAds.Alignment = Fuse.Elements.Alignment.Bottom;
        podAds.Opacity = 0.3f;
        podAds.Name = __selector7;
        temp30.Animators.Add(temp31);
        temp30.Animators.Add(temp32);
        temp31.Value = 1f;
        temp32.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp33.PlaceholderText = "Адрес";
        temp33.PlaceholderColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp33.ActionStyle = Fuse.Controls.TextInputActionStyle.Done;
        temp33.TextColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp33.Width = new Uno.UX.Size(90f, Uno.UX.Unit.Percent);
        temp33.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp33.Children.Add(adress);
        temp33.Children.Add(temp34);
        temp33.Children.Add(temp37);
        adress.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        adress.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        adress.Alignment = Fuse.Elements.Alignment.Bottom;
        adress.Opacity = 0.3f;
        adress.Name = __selector8;
        temp34.Animators.Add(temp35);
        temp34.Animators.Add(temp36);
        temp35.Value = 1f;
        temp36.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp37.Actions.Add(temp38);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(name);
        __g_nametable.Objects.Add(discription);
        __g_nametable.Objects.Add(price);
        __g_nametable.Objects.Add(ads);
        __g_nametable.Objects.Add(podAds);
        __g_nametable.Objects.Add(adress);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
    static global::Uno.UX.Selector __selector1 = "Opacity";
    static global::Uno.UX.Selector __selector2 = "Color";
    static global::Uno.UX.Selector __selector3 = "name";
    static global::Uno.UX.Selector __selector4 = "discription";
    static global::Uno.UX.Selector __selector5 = "price";
    static global::Uno.UX.Selector __selector6 = "ads";
    static global::Uno.UX.Selector __selector7 = "podAds";
    static global::Uno.UX.Selector __selector8 = "adress";
}
