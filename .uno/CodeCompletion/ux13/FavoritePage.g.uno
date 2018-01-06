[Uno.Compiler.UxGenerated]
public partial class FavoritePage: Fuse.Controls.Panel
{
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
    };
    static FavoritePage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public FavoritePage()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp1 = new global::Fuse.Controls.ScrollView();
        temp.LineNumber = 2;
        temp.FileName = "pages/FavoritePage/FavoritePage.ux";
        temp.File = new global::Uno.UX.BundleFileSource(import("../../../pages/FavoritePage/FavoritePage.js"));
        __g_nametable.This = this;
        this.Children.Add(temp);
        this.Children.Add(temp1);
    }
}
