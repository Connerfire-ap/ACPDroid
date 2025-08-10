.class public Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RunTestListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public progressBar:Landroid/widget/ProgressBar;

.field public progressIndicator:Landroid/widget/ProgressBar;

.field public runTest:Landroid/widget/Button;

.field public testImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

.field public txtDesc:Landroid/widget/TextView;

.field public txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;


# direct methods
.method public constructor <init>(Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;
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

    .line 117
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    .line 118
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f0800da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    .line 121
    const v0, 0x7f0800d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0800a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->runTest:Landroid/widget/Button;

    .line 123
    const v0, 0x7f080093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 124
    const v0, 0x7f080094

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->progressIndicator:Landroid/widget/ProgressBar;

    .line 125
    const v0, 0x7f0800d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->testImage:Landroid/widget/ImageView;

    .line 126
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

    .line 130
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/openobservatory/ooniprobe/adapter/RunTestListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 133
    :cond_0
    return-void
.end method
