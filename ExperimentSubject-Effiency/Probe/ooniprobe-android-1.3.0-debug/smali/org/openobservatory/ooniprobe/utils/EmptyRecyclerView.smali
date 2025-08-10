.class public Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "EmptyRecyclerView.java"


# instance fields
.field private emptyView:Landroid/view/View;

.field final observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;

    invoke-direct {v0, p0}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;-><init>(Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;)V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;

    invoke-direct {v0, p0}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;-><init>(Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;)V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;

    invoke-direct {v0, p0}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;-><init>(Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;)V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 16
    return-void
.end method


# virtual methods
.method checkIfEmpty()V
    .locals 2

    .line 19
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 33
    .local v0, "oldAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 36
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 37
    if-eqz p1, :cond_1

    .line 38
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 40
    :cond_1
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emptyView"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->emptyView:Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->checkIfEmpty()V

    .line 49
    return-void
.end method
