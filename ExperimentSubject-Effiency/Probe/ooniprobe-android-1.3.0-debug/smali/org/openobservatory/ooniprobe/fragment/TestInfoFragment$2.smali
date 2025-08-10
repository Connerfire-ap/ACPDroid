.class Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$2;
.super Ljava/lang/Object;
.source "TestInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v0}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->access$100(Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v0

    new-instance v1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment$2;->this$0:Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v2}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->access$100(Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v2

    # getter for: Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->test_name:Ljava/lang/String;
    invoke-static {}, Lorg/openobservatory/ooniprobe/fragment/TestInfoFragment;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/openobservatory/ooniprobe/data/TestData;->doNetworkMeasurements(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V

    .line 78
    return-void
.end method
