[Uno.Compiler.UxGenerated]
public partial class ItemCard: Fuse.Controls.Panel
{
    object _field_Name;
    [global::Uno.UX.UXOriginSetter("SetName")]
    public object Name
    {
        get { return _field_Name; }
        set { SetName(value, null); }
    }
    public void SetName(object value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Name)
        {
            _field_Name = value;
            OnPropertyChanged("Name", origin);
        }
    }
    object _field_Price;
    [global::Uno.UX.UXOriginSetter("SetPrice")]
    public object Price
    {
        get { return _field_Price; }
        set { SetPrice(value, null); }
    }
    public void SetPrice(object value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Price)
        {
            _field_Price = value;
            OnPropertyChanged("Price", origin);
        }
    }
    object _field_Url;
    [global::Uno.UX.UXOriginSetter("SetUrl")]
    public object Url
    {
        get { return _field_Url; }
        set { SetUrl(value, null); }
    }
    public void SetUrl(object value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_Url)
        {
            _field_Url = value;
            OnPropertyChanged("Url", origin);
        }
    }
    global::Uno.UX.Property<string> temp_Url_inst;
    static ItemCard()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ItemCard()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp1 = new global::Fuse.Reactive.Constant(this);
        var temp = new global::Fuse.Drawing.ImageFill();
        temp_Url_inst = new Jobber_FuseDrawingImageFill_Url_Property(temp, __selector0);
        var temp2 = new global::Fuse.Reactive.Property(temp1, Jobber_accessor_ItemCard_Url.Singleton);
        var temp3 = new global::Fuse.Reactive.DataBinding(temp_Url_inst, temp2, Fuse.Reactive.BindingMode.Default);
        this.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        this.Background = temp;
        this.Bindings.Add(temp3);
    }
    static global::Uno.UX.Selector __selector0 = "Url";
}
