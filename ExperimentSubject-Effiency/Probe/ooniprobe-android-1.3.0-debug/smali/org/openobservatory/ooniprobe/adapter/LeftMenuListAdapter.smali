.class public Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LeftMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "textViewResourceId"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;->context:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resource",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 31
    move-object v0, p2

    .line 33
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 36
    .local v1, "vi":Landroid/view/LayoutInflater;
    const v2, 0x7f0a004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    .end local v1    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 42
    const v2, 0x7f0800a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, "txtTitle":Landroid/widget/TextView;
    const v3, 0x7f08009f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 45
    .local v3, "testImage":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_1
    if-eqz v3, :cond_3

    .line 50
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lorg/openobservatory/ooniprobe/adapter/LeftMenuListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lorg/openobservatory/ooniprobe/data/TestStorage;->newTests(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    .end local v2    # "txtTitle":Landroid/widget/TextView;
    .end local v3    # "testImage":Landroid/widget/ImageView;
    :cond_3
    :goto_0
    return-object v0
.end method
