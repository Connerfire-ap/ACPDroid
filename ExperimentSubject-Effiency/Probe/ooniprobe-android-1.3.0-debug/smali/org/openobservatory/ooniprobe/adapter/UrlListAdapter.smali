.class public Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UrlListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private images:Ljava/lang/Boolean;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "images"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "items",
            "images"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 20
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->values:Ljava/util/ArrayList;

    .line 23
    iput-object p3, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->images:Ljava/lang/Boolean;

    .line 24
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 15
    check-cast p1, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "i":Ljava/lang/String;
    iget-object v1, p1, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->images:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a0050

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 33
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a0051

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .restart local v0    # "v":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;-><init>(Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;Landroid/view/View;)V

    .line 36
    .local v1, "vh":Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;
    return-object v1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->values:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method
