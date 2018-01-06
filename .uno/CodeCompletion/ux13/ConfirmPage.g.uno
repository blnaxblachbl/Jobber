[Uno.Compiler.UxGenerated]
public partial class ConfirmPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb4;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb4"
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
        var temp = new global::Fuse.Reactive.Data("goTabView");
        var temp1 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp2 = new global::Fuse.Controls.Panel();
        var temp3 = new global::Fuse.Controls.Rectangle();
        var temp4 = new global::Fuse.Drawing.ImageFill();
        var temp5 = new global::Fuse.Controls.StackPanel();
        var temp6 = new global::Fuse.Controls.Text();
        var temp7 = new global::Fuse.Controls.Text();
        var temp8 = new global::Fuse.Controls.TextInput();
        var temp9 = new global::Fuse.Controls.Rectangle();
        var temp10 = new global::Fuse.Triggers.TextInputActionTriggered();
        var temp11 = new global::Fuse.Triggers.Actions.ReleaseFocus();
        var temp12 = new global::Fuse.Controls.Rectangle();
        var temp13 = new global::Fuse.Controls.Text();
        temp_eb4 = new global::Fuse.Reactive.EventBinding(temp);
        var temp14 = new global::Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        this.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        this.Height = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp1.LineNumber = 3;
        temp1.FileName = "pages/ConfirmPage/ConfirmPage.ux";
        temp1.File = new global::Uno.UX.BundleFileSource(import("../../../pages/ConfirmPage/ConfirmPage.js"));
        temp2.Children.Add(temp3);
        temp2.Children.Add(temp5);
        temp2.Children.Add(temp12);
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
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp10);
        temp9.Color = float4(0.07843138f, 0.5176471f, 0.4823529f, 1f);
        temp9.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp9.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp9.Alignment = Fuse.Elements.Alignment.BottomCenter;
        temp10.Actions.Add(temp11);
        temp12.CornerRadius = float4(30f, 30f, 30f, 30f);
        temp12.Color = float4(0.9764706f, 0.3215686f, 0.3215686f, 1f);
        temp12.Width = new Uno.UX.Size(60f, Uno.UX.Unit.Percent);
        temp12.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp12.Alignment = Fuse.Elements.Alignment.Bottom;
        temp12.Margin = float4(0f, 0f, 0f, 30f);
        temp12.Opacity = 0.8f;
        global::Fuse.Gestures.Clicked.AddHandler(temp12, temp_eb4.OnEvent);
        temp12.Children.Add(temp13);
        temp12.Bindings.Add(temp_eb4);
        temp13.Value = "ПОДТВЕРДИТЬ";
        temp13.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp13.Color = float4(1f, 1f, 1f, 1f);
        temp13.Alignment = Fuse.Elements.Alignment.Center;
        temp13.Opacity = 0.7f;
        temp13.Font = Fuse.Font.Medium;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb4);
        this.Background = temp14;
        this.Children.Add(temp1);
        this.Children.Add(temp2);
    }
}
