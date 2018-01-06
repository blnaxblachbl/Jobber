[Uno.Compiler.UxGenerated]
public partial class FavoritePage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router"
    };
    static FavoritePage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public FavoritePage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Controls.Panel();
        var temp1 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp2 = new global::Fuse.Controls.Text();
        temp.Children.Add(temp1);
        temp.Children.Add(temp2);
        temp1.LineNumber = 4;
        temp1.FileName = "pages/FavoritePage/FavoritePage.ux";
        temp1.File = new global::Uno.UX.BundleFileSource(import("../../../pages/FavoritePage/FavoritePage.js"));
        temp2.Value = "Favorite page";
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        this.Children.Add(temp);
    }
}
