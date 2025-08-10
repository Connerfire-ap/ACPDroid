.class Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment$1;
.super Ljava/lang/Object;
.source "PastTestsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 86
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment$1;->this$0:Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v0}, Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/PastTestsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->selectItem(I)V

    .line 87
    return-void
.end method
