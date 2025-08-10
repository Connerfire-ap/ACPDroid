.class Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "EmptyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;->this$0:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 27
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView$1;->this$0:Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/utils/EmptyRecyclerView;->checkIfEmpty()V

    .line 28
    return-void
.end method
