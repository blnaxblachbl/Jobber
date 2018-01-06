[Uno.Compiler.UxGenerated]
public partial class AddAdsPage: Fuse.Controls.Panel
{
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
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
        var temp = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp1 = new global::Fuse.Controls.Text();
        temp.LineNumber = 2;
        temp.FileName = "pages/AddAdsPage/AddAdsPage.ux";
        temp.File = new global::Uno.UX.BundleFileSource(import("../../../pages/AddAdsPage/AddAdsPage.js"));
        temp1.Value = "Add ads page";
        __g_nametable.This = this;
        this.Children.Add(temp);
        this.Children.Add(temp1);
    }
}
