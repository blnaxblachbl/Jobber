[Uno.Compiler.UxGenerated]
public partial class ConfirmPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<float> sms_Opacity_inst;
    global::Uno.UX.Property<float4> sms_Color_inst;
    internal global::Fuse.Controls.Rectangle sms;
    internal global::Fuse.Reactive.EventBinding temp_eb6;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "sms",
        "temp_eb6"
    };
    static ConfirmPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ConfirmPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        sms = new global::Fuse.Controls.Rectangle();
        sms_Opacity_inst = new Jobber_FuseElementsElement_Opacity_Property(sms, __selector0);
        sms_Color_inst = new Jobber_FuseControlsShape_Color_Property(sms, __selector1);
        var temp = new global::Fuse.Reactive.Data("goTabView");
        var temp1 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp2 = new global::Fuse.Controls.Panel();
        var temp3 = new global::Fuse.Controls.Rectangle();
        var temp4 = new global::Fuse.Drawing.ImageFill();
        var temp5 = new global::Fuse.Controls.StackPanel();
        var temp6 = new global::Fuse.Controls.Text();
        var temp7 = new global::Fuse.Controls.Text();
        var temp8 = new global::Fuse.Controls.TextInput();
        var temp9 = new global::Fuse.Triggers.WhileFocused();
        var temp10 = new global::Fuse.Animations.Change<float>(sms_Opacity_inst);
        var temp11 = new global::Fuse.Animations.Change<float4>(sms_Color_inst);
        var temp12 = new global::Fuse.Triggers.TextInputActionTriggered();
        var temp13 = new global::Fuse.Triggers.Actions.ReleaseFocus();
        var temp14 = new global::Fuse.Controls.Rectangle();
        var temp15 = new global::Fuse.Controls.Text();
        temp_eb6 = new global::Fuse.Reactive.EventBinding(temp);
        var temp16 = new global::Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        this.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        this.Height = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp1.LineNumber = 3;
        temp1.FileName = "pages/ConfirmPage/ConfirmPage.ux";
        temp1.File = new global::Uno.UX.BundleFileSource(import("../../../pages/ConfirmPage/ConfirmPage.js"));
        temp2.Children.Add(temp3);
        temp2.Children.Add(temp5);
        temp2.Children.Add(temp14);
        temp3.CornerRadius = float4(30f, 30f, 30f, 30f);
        temp3.Width = new Uno.UX.Size(120f, Uno.UX.Unit.Unspecified);
        temp3.Height = new Uno.UX.Size(120f, Uno.UX.Unit.Unspecified);
        temp3.Alignment = Fuse.Elements.Alignment.Top;
        temp3.Margin = float4(0f, 90f, 0f, 0f);
        temp3.Fills.Add(temp4);
        temp4.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp4.File = new global::Uno.UX.BundleFileSource(import("../../../assets/logo.jpg"));
        temp5.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp5.Alignment = Fuse.Elements.Alignment.Center;
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp7);
        temp5.Children.Add(temp8);
        temp6.Value = "РЕГИСТРАЦИЯ";
        temp6.FontSize = 25f;
        temp6.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp6.Color = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
        temp6.Margin = float4(0f, 50f, 0f, 50f);
        temp6.Opacity = 0.7f;
        temp6.Font = Fuse.Font.Medium;
        temp7.Value = "Введите код отправленный на номер телефона";
        temp7.FontSize = 12f;
        temp7.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp7.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp7.Alignment = Fuse.Elements.Alignment.Center;
        temp7.Opacity = 0.7f;
        temp7.Font = Fuse.Font.Medium;
        temp8.PlaceholderText = "XXXX";
        temp8.PlaceholderColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp8.ActionStyle = Fuse.Controls.TextInputActionStyle.Done;
        temp8.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp8.TextColor = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        temp8.InputHint = Fuse.Controls.TextInputHint.Number;
        temp8.Width = new Uno.UX.Size(25f, Uno.UX.Unit.Percent);
        temp8.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp8.Children.Add(sms);
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp12);
        sms.Color = float4(0.3686275f, 0.3686275f, 0.3686275f, 1f);
        sms.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        sms.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        sms.Alignment = Fuse.Elements.Alignment.BottomCenter;
        sms.Opacity = 0.3f;
        sms.Name = __selector2;
        temp9.Animators.Add(temp10);
        temp9.Animators.Add(temp11);
        temp10.Value = 1f;
        temp11.Value = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp12.Actions.Add(temp13);
        temp14.CornerRadius = float4(30f, 30f, 30f, 30f);
        temp14.Color = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
        temp14.Width = new Uno.UX.Size(60f, Uno.UX.Unit.Percent);
        temp14.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp14.Alignment = Fuse.Elements.Alignment.Bottom;
        temp14.Margin = float4(0f, 0f, 0f, 30f);
        temp14.Opacity = 0.8f;
        global::Fuse.Gestures.Clicked.AddHandler(temp14, temp_eb6.OnEvent);
        temp14.Children.Add(temp15);
        temp14.Bindings.Add(temp_eb6);
        temp15.Value = "ПОДТВЕРДИТЬ";
        temp15.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp15.Color = float4(1f, 1f, 1f, 1f);
        temp15.Alignment = Fuse.Elements.Alignment.Center;
        temp15.Opacity = 0.7f;
        temp15.Font = Fuse.Font.Medium;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(sms);
        __g_nametable.Objects.Add(temp_eb6);
        this.Background = temp16;
        this.Children.Add(temp1);
        this.Children.Add(temp2);
    }
    static global::Uno.UX.Selector __selector0 = "Opacity";
    static global::Uno.UX.Selector __selector1 = "Color";
    static global::Uno.UX.Selector __selector2 = "sms";
}
