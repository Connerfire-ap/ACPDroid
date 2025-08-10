.class Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1$1;
.super Ljava/lang/Object;
.source "PastTestsListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$v"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1$1;->this$1:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1$1;->this$1:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1;->this$0:Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter$1$1;->val$v:Landroid/view/View;

    # invokes: Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->showPopupMenu(Landroid/view/View;)V
    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;->access$000(Lorg/openobservatory/ooniprobe/adapter/PastTestsListAdapter;Landroid/view/View;)V

    .line 79
    return-void
.end method
