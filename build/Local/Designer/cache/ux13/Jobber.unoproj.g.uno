sealed class Jobber_FuseNavigationNavigateTo_Target_Property: Uno.UX.Property<Fuse.Visual>
{
    [Uno.WeakReference] readonly Fuse.Navigation.NavigateTo _obj;
    public Jobber_FuseNavigationNavigateTo_Target_Property(Fuse.Navigation.NavigateTo obj, global::Uno.UX.Selector name) : base(name) { _obj = obj; }
    public override global::Uno.UX.PropertyObject Object { get { return _obj; } }
    public override Fuse.Visual Get(global::Uno.UX.PropertyObject obj) { return ((Fuse.Navigation.NavigateTo)obj).Target; }
    public override void Set(global::Uno.UX.PropertyObject obj, Fuse.Visual v, global::Uno.UX.IPropertyListener origin) { ((Fuse.Navigation.NavigateTo)obj).Target = v; }
}
