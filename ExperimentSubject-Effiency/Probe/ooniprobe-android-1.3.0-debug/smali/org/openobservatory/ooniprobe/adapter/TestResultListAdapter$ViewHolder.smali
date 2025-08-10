.class public Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TestResultListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

.field public txtTitle:Landroid/widget/TextView;

.field public viewResult:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    .line 112
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 113
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0800da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0800f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->viewResult:Landroid/widget/Button;

    .line 116
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/openobservatory/ooniprobe/adapter/TestResultListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 123
    :cond_0
    return-void
.end method
