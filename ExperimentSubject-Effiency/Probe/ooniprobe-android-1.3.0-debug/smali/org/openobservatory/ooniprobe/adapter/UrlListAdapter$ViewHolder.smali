.class public Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UrlListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

.field public txtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;
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

    .line 48
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;->this$0:Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter;

    .line 49
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0800a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/UrlListAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 52
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 56
    return-void
.end method
