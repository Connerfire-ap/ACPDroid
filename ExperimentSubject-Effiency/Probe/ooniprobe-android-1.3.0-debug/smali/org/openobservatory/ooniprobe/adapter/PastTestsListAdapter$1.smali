.class Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;
.super Ljava/lang/Object;
.source "PastTestsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->onBindViewHolder(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "v"
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1$1;

    invoke-direct {v0, p0, p1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1$1;-><init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
