[Uno.Compiler.UxGenerated]
public partial class AdsPage: Fuse.Controls.Panel
{
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
    };
    static AdsPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public AdsPage()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp1 = new global::Fuse.Controls.Text();
        temp.LineNumber = 2;
        temp.FileName = "pages/AdsPage/AdsPage.ux";
        temp.File = new global::Uno.UX.BundleFileSource(import("../../../pages/AdsPage/AdsPage.js"));
        temp1.Value = "Ads page";
        __g_nametable.This = this;
        this.Children.Add(temp);
        this.Children.Add(temp1);
    }
}
