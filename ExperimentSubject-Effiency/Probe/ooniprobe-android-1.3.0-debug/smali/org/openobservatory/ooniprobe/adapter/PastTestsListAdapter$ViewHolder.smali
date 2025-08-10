.class public Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PastTestsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public green_dot:Landroid/widget/ImageView;

.field public popupButton:Lorg/openobservatory/ooniprobe/view/ListImageButton;

.field public testImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

.field public txtTimestamp:Landroid/widget/TextView;

.field public txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

.field public viewResult:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;
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

    .line 171
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    .line 172
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 173
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f0800da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lb/auto_fit_textview/AutoResizeTextView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTitle:Lcom/lb/auto_fit_textview/AutoResizeTextView;

    .line 175
    const v0, 0x7f0800d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->txtTimestamp:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0800d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/openobservatory/ooniprobe/view/ListImageButton;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->popupButton:Lorg/openobservatory/ooniprobe/view/ListImageButton;

    .line 177
    const v0, 0x7f0800d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->testImage:Landroid/widget/ImageView;

    .line 178
    const v0, 0x7f0800f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->viewResult:Landroid/widget/Button;

    .line 179
    const v0, 0x7f08005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->green_dot:Landroid/widget/ImageView;

    .line 180
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

    .line 185
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->mItemClickListener:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 188
    :cond_0
    return-void
.end method
